import { Painting } from "@/lib/types";
import { Link } from "react-router-dom";

export const PaintingCard: React.FC<{ painting: Painting }> = ({
  painting,
}) => {
  return (
    <div className="mx-auto w-fit">
      <Link
        to={`/paintings/${painting.id}`}
        className="space-y-3 font-normal no-underline"
      >
        <div className="flex w-fit cursor-pointer select-none flex-col overflow-hidden rounded">
          <img
            src={painting.image_url}
            alt="Painting"
            className="w-fit hover:scale-125"
          />
        </div>
        <div className="space-y-0.5">
          <div className="flex items-center justify-between gap-5">
            <div className="font-semibold !leading-snug text-dark">
              {painting.name}
            </div>
            <div className="text-sm text-dark">
              {/* Convert the price number to currency format */}
              {Number(painting.price).toLocaleString(undefined, {
                style: "currency",
                currency: "USD",
                maximumFractionDigits: 0,
              })}
            </div>
          </div>
          <div className="text-sm text-secondary">{painting.painter}</div>
        </div>
      </Link>
    </div>
  );
};
