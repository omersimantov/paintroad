import AWS, { AWSError, S3 } from "aws-sdk";
import { clsx, type ClassValue } from "clsx";
import short from "short-uuid";
import { twMerge } from "tailwind-merge";

export const cn = (...inputs: ClassValue[]) => {
  return twMerge(clsx(inputs));
};

export const uploadImageToS3 = async (file: File) => {
  let location = "";
  // Configure AWS
  AWS.config.update({
    accessKeyId: import.meta.env.VITE_AWS_ACCESS_KEY_ID,
    secretAccessKey: import.meta.env.VITE_AWS_SECRET_ACCESS_KEY,
  });
  // Upload file to S3
  if (file) {
    const s3 = new AWS.S3();
    const params = {
      Bucket: "paintroad",
      Key: short.generate(), // Generate a random object name to avoid blocked uploads
      Body: file,
    };
    await new Promise<void>((resolve, reject) => {
      s3.upload(params)
        .on("httpUploadProgress", () => {})
        .send((err: AWSError, data: S3.ManagedUpload.SendData) => {
          if (err) {
            reject(err);
          } else {
            location = data.Location;
            resolve();
          }
        });
    });
  }
  return location;
};
