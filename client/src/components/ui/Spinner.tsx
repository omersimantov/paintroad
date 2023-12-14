import { cn } from "@/lib/utils";

export const Spinner: React.FC<{
  className?: string;
  color?: "light" | "dark";
}> = ({ className, color = "dark" }) => {
  return (
    <svg
      viewBox="0 0 50 50"
      className={cn(
        "pointer-events-none z-10 mx-auto h-5 animate-spin",
        className,
      )}
    >
      <circle
        className={cn(
          color === "light" ? "!stroke-white" : "!stroke-dark",
          "animate-dash",
        )}
        cx="25"
        cy="25"
        r="20"
        strokeWidth={4.5}
      />
    </svg>
  );
};
