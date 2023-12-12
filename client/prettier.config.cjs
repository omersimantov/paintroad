/** @type {import("prettier").Config} */

const config = {
  plugins: [
    "@trivago/prettier-plugin-sort-imports",
    "prettier-plugin-tailwindcss", // Has to come last
  ],
};

module.exports = config;
