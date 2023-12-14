import { Painting } from "@/lib/types";
import { useEffect, useState } from "react";
import { Link, useNavigate, useParams } from "react-router-dom";

export const SalesPage: React.FC = () => {
  const { id } = useParams<{ id: string }>(); // Gets the requested painting id from the url
  const [loading, setLoading] = useState<boolean>(true);
  const [painting, setPainting] = useState<Painting>();

  const fetchPainting = async () => {
    try {
      const res = await fetch(
        `${import.meta.env.VITE_API_URL}/paintings/${id}`,
      );
      if (res.ok) {
        const painting = await res.json();
        setPainting(painting);
      } else throw res;
    } catch (e) {
      console.error(e);
    } finally {
      setLoading(false);
    }
  };

  // Fetch the painting on page load
  useEffect(() => {
    fetchPainting();
  }, [id]);

  if (painting)
    return (
      <div className="gap-10 space-y-5 md:flex md:space-y-0">
        <div className="md:w-[55%]">
          <img src={painting?.image_url} alt={painting?.name} />
        </div>
        <div className="space-y-1 md:w-[45%]">
          <h1>{painting?.name}</h1>
          <p className="text-secondary">{painting?.painter}</p>
          <p className="text-dark">
            {Number(painting?.price).toLocaleString(undefined, {
              style: "currency",
              currency: "USD",
              maximumFractionDigits: 0,
            })}
          </p>
          <a href={painting?.order_link} className="button !mt-3 border-0">
            Purchase
          </a>
          {painting?.description && (
            <p className="!my-5 leading-[1.75]">{painting?.description}</p>
          )}
        </div>
      </div>
    );
  // Only present the painting not found message if there's no painting after loading
  else if (!loading && !painting) {
    return (
      <div className="flex h-[calc(100vh-7.5rem)] w-full items-center justify-center font-serif text-xl font-medium text-black">
        Painting not found
      </div>
    );
  }
};
