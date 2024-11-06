import AppRoutes from "@/components/AppRoutes";
import { NewPaintingForm } from "@/components/NewPaintingForm";
import { Modal } from "@/components/ui/Modal";
import { PlusIcon } from "@heroicons/react/24/outline";
import { useState } from "react";
import { Link, BrowserRouter as Router } from "react-router-dom";

function App() {
  const [sellModalOpen, setSellModalOpen] = useState<boolean>(false);
  return (
    <Router>
      <header className="sticky top-0 z-10 w-full backdrop-blur-lg">
        <div className="mx-auto flex h-16 max-w-5xl items-center justify-between gap-5 px-5">
          <Link to="/" className="select-none font-serif text-lg no-underline">
            paintroad
          </Link>
          <button
            className="h-9 w-fit border bg-white px-5 text-dark"
            onClick={() => setSellModalOpen(true)}
          >
            <PlusIcon className="mr-1 h-3 stroke-dark stroke-[2.5]" />
            <span>Sell a painting</span>
          </button>
        </div>
      </header>
      <main className="mx-auto max-w-5xl px-5 pb-5">
        {/* The route-based page content */}
        <AppRoutes />
      </main>
      {/* The "Sell a painting" modal */}
      {sellModalOpen && (
        <Modal
          toggle={() => setSellModalOpen(!sellModalOpen)}
          content={<NewPaintingForm />}
        />
      )}
    </Router>
  );
}

export default App;
