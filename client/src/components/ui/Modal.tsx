import { Spinner } from "@/components/ui/Spinner";
import { XMarkIcon } from "@heroicons/react/24/outline";
import { useCallback, useEffect, useState } from "react";

export const Modal: React.FC<{
  content: JSX.Element;
  toggle: () => void;
  loading?: boolean;
  onExitWarning?: boolean;
}> = ({ content, loading, toggle, onExitWarning }) => {
  const [exitWarningOn, setExitWarningOn] = useState<boolean>(false); // TODO: Implement

  const toggleModal = (): void =>
    toggle && (onExitWarning ? setExitWarningOn(true) : toggle());

  // Toggle on escape key press
  const keyPress = useCallback(
    (e: KeyboardEvent) => e.key === "Escape" && toggleModal(),
    [toggleModal],
  );
  useEffect(() => {
    document.addEventListener("keydown", keyPress);
    return (): void => document.removeEventListener("keydown", keyPress);
  }, [keyPress]);

  return (
    <div
      onClick={toggleModal}
      className="fixed inset-0 z-10 flex cursor-pointer items-center justify-center overflow-hidden bg-dark/90"
    >
      <XMarkIcon
        title="Close"
        className="absolute right-5 top-5 hidden h-6 cursor-pointer stroke-white sm:block lg:right-10 lg:top-10"
      />
      {loading ? (
        <Spinner color="light" className="!h-6" />
      ) : (
        <div className="scrollbar-hidden h-full w-full overflow-auto sm:h-fit sm:max-h-screen sm:p-10">
          <div
            onClick={(e): void => e.stopPropagation()}
            className="z-10 mx-auto min-h-full w-full cursor-auto bg-white p-5 sm:max-w-prose sm:rounded sm:p-10"
          >
            <div className="mx-auto max-w-prose">
              <div className="mb-5 flex w-full items-center justify-end sm:mb-10 sm:hidden">
                <XMarkIcon
                  title="Close"
                  className="h-5 cursor-pointer stroke-dark"
                  onClick={toggleModal}
                />
              </div>
              {content}
            </div>
          </div>
        </div>
      )}
    </div>
  );
};
