import { NotFound } from "@/components/NotFound";
import { PaintingsGrid } from "@/components/PaintingsGrid";
import { SalesPage } from "@/components/SalesPage";
import { Route, Routes } from "react-router-dom";

const AppRoutes = () => {
  return (
    <Routes>
      <Route path="/" element={<PaintingsGrid />} />
      <Route path="/paintings/:id" element={<SalesPage />} />
      <Route path="*" element={<NotFound />} />
    </Routes>
  );
};

export default AppRoutes;
