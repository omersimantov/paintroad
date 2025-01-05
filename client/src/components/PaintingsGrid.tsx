import { PaintingCard } from "@/components/PaintingCard";
import { Painting } from "@/lib/types";
import { useEffect, useState } from "react";
import Masonry from "react-masonry-css";

export const PaintingsGrid = () => {
  const [paintings, setPaintings] = useState<Painting[]>([]);

  const fetchPaintings = async () => {
    try {
      const res = await fetch(`${import.meta.env.VITE_API_URL}/paintings`);
      if (res.ok) {
        const paintings = await res.json();
        setPaintings(paintings);
      } else throw res;
    } catch (e) {
      console.error(e);
    }
  };

  // Fetch the painting on mount
  useEffect(() => {
    fetchPaintings();
  }, []);

  return (
    <Masonry
      // Breakpoints so that the gallery is responsive
      breakpointCols={{
        default: 3,
        1100: 2,
        700: 1,
      }}
      className="masonry"
      columnClassName="masonry_column"
    >
      {paintings.map((painting) => (
        <PaintingCard painting={painting} key={painting.id} />
      ))}
    </Masonry>
  );
};
