import { Spinner } from "@/components/ui/Spinner";
import { cn } from "@/lib/utils";
import React, { useCallback, useEffect } from "react";
import { useDropzone } from "react-dropzone";
import { useForm } from "react-hook-form";
import { useNavigate } from "react-router-dom";
import { z } from "zod";

const validationSchema = z.object({
  name: z.string().min(2).max(255),
  description: z.string().max(2000).optional(),
  price: z.number(),
  painter: z.string().min(2).max(255),
  order_link: z.string().url(),
});

export const NewPaintingForm: React.FC = () => {
  const navigate = useNavigate();
  const { register, handleSubmit } = useForm();
  const [imageFile, setImageFile] = React.useState<File>();
  const [loading, setLoading] = React.useState<boolean>(false);

  // Focus on the name input on form load
  useEffect(() => {
    const input = document.getElementById("name");
    input && input.focus();
  }, []);

  const onSubmit = async (data: any) => {
    // Validate the image file is present
    if (!imageFile) {
      alert("Please upload your painting");
      return;
    }
    data.price = Number(data.price);
    // Only continue if the form data is valid
    if (!validationSchema.safeParse(data).success) return;
    setLoading(true);
    try {
      // Upload the image to S3
      const formData = new FormData();
      formData.append("file", imageFile);
      const s3Res = await fetch(`${import.meta.env.VITE_API_URL}/uploads`, {
        method: "POST",
        body: formData,
      });
      // Get the object URL from the response
      const { url } = await s3Res.json();
      data.image_url = url;
      // Create a new painting
      const res = await fetch(`${import.meta.env.VITE_API_URL}/paintings`, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({ painting: data }),
      });
      // Redirect to the home page if successful
      if (res.ok) {
        navigate("/");
        window.location.reload();
      }
    } catch (err) {
      console.error(err.message);
    } finally {
      setLoading(false);
    }
  };

  // Handle painting drag & drop
  const onDrop = useCallback((acceptedFile: File[]) => {
    setImageFile(acceptedFile[0]);
  }, []);
  const { getRootProps, getInputProps, isDragActive } = useDropzone({ onDrop });

  return (
    <form onSubmit={handleSubmit(onSubmit)} className="space-y-2">
      <label htmlFor="name">Name *</label>
      <input
        id="name"
        type="text"
        placeholder="Mona Lisa"
        className={cn(
          loading && "pointer-events-none cursor-not-allowed !text-secondary",
        )}
        {...register("name", { required: true })}
        disabled={loading}
        required
      />
      <label htmlFor="description" className="!mt-4">
        Description
      </label>
      <textarea
        id="description"
        className={cn(
          loading && "pointer-events-none cursor-not-allowed !text-secondary",
        )}
        {...register("description", { required: false })}
      />
      <label htmlFor="image" className="!mt-4">
        Painting *
      </label>
      <div {...getRootProps()} className={cn(loading && "pointer-events-none")}>
        <input {...getInputProps()} />
        <div className="flex w-full items-center justify-center">
          <div
            className={cn(
              loading
                ? "cursor-not-allowed hover:bg-gray-50"
                : "hover:bg-gray-100",
              "flex h-[200px] w-full cursor-pointer flex-col items-center justify-center rounded border border-dashed bg-gray-50",
            )}
          >
            <div className="flex flex-col items-center justify-center pb-6 pt-5">
              <svg
                className={cn(
                  loading ? "text-light" : "text-secondary",
                  "mb-4 h-8 w-8",
                )}
                aria-hidden="true"
                xmlns="http://www.w3.org/2000/svg"
                fill="none"
                viewBox="0 0 20 16"
              >
                <path
                  stroke="currentColor"
                  strokeLinecap="round"
                  strokeLinejoin="round"
                  strokeWidth="2"
                  d="M13 13h3a3 3 0 0 0 0-6h-.025A5.56 5.56 0 0 0 16 6.5 5.5 5.5 0 0 0 5.207 5.021C5.137 5.017 5.071 5 5 5a4 4 0 0 0 0 8h2.167M10 15V6m0 0L8 8m2-2 2 2"
                />
              </svg>
              <div
                className={cn(
                  loading && "!text-light",
                  "text-center text-secondary",
                )}
              >
                <p className="mb-2 text-sm">
                  <span className="font-semibold">Click to upload</span> or drag
                  and drop
                </p>
                <p className="text-sm">
                  {isDragActive
                    ? "Drop here..."
                    : imageFile
                      ? imageFile.name
                      : "PNG, JPG or JPEG"}
                </p>
              </div>
            </div>
            <input
              id="image"
              name="image"
              type="file"
              className="hidden"
              onChange={(e) => {
                const image = e.target.files?.[0];
                setImageFile(image);
              }}
            />
          </div>
        </div>
      </div>
      <label htmlFor="painter" className="!mt-4">
        Painter *
      </label>
      <input
        id="painter"
        type="text"
        placeholder="Leonardo da Vinci"
        className={cn(
          loading && "pointer-events-none cursor-not-allowed !text-secondary",
        )}
        {...register("painter", { required: true })}
        disabled={loading}
        required
      />
      <label htmlFor="price" className="!mt-4">
        Price (USD)*
      </label>
      <input
        id="price"
        type="number"
        placeholder="10000"
        className={cn(
          loading && "pointer-events-none cursor-not-allowed !text-secondary",
        )}
        {...register("price", { required: true })}
        disabled={loading}
        required
      />
      <label htmlFor="orderLink" className="!mt-4">
        Order Link *
      </label>
      <input
        id="orderLink"
        type="text"
        placeholder="https://checkout.stripe.com/c/pay/..."
        className={cn(
          loading && "pointer-events-none cursor-not-allowed !text-secondary",
        )}
        {...register("order_link", { required: true })}
        disabled={loading}
        required
      />
      <button type="submit" className="!mt-4 bg-dark" disabled={loading}>
        {loading ? <Spinner color="light" /> : <span>List for Sale</span>}
      </button>
    </form>
  );
};

export default NewPaintingForm;
