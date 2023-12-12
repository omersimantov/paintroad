import type { Config } from "tailwindcss";

const config: Config = {
  content: ["./index.html", "./src/**/*.{js,ts,jsx,tsx}"],
  theme: {
    extend: {
      colors: {
        main: "#444444",
        secondary: "#666666",
        dark: "#181818",
        light: "#acacac",
        border: "#dddddd",
      },
      maxWidth: {
        prose: "60ch",
      },
      borderWidth: {
        DEFAULT: "1px",
      },
      divideWidth: {
        DEFAULT: "1px",
      },
      borderRadius: {
        DEFAULT: "0.5rem",
      },
      animation: {
        spin: "spin 0.3s linear infinite",
        dash: "dash 0.75s ease-in-out infinite",
        pulse: "pulse 0.75s ease-in-out infinite",
      },
    },
  },
  plugins: [
    require("@tailwindcss/typography"),
    require("@tailwindcss/forms"),
    require("@tailwindcss/aspect-ratio"),
  ],
};

export default config;
