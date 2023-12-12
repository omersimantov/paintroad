// eslint-disable-next-line @typescript-eslint/no-var-requires
const path = require("path");

/** @type {import("eslint").Linter.Config} */

const config = {
  parser: "@typescript-eslint/parser",
  parserOptions: {
    project: path.join(__dirname, "./tsconfig.json"),
  },
  plugins: ["@typescript-eslint", "eslint-plugin-jsx-a11y"],
  extends: [
    "next",
    "next/core-web-vitals",
    "eslint:recommended",
    "plugin:@typescript-eslint/recommended",
  ],
  rules: {
    "no-console": "error",
    "max-params": "warn",
    eqeqeq: "warn",
    "max-nested-callbacks": "warn",
    "import/no-anonymous-default-export": "off",
    "react/no-unescaped-entities": "off",
    "react/no-children-prop": "error",
    "react-hooks/exhaustive-deps": "off",
    "react/jsx-curly-brace-presence": "warn",
    "react/self-closing-comp": "warn",
    "react/jsx-no-target-blank": [
      "error",
      {
        allowReferrer: false,
        enforceDynamicLinks: "always",
        warnOnSpreadAttributes: true,
        links: true,
        forms: true,
      },
    ],
    "react/jsx-no-useless-fragment": [
      "warn",
      {
        allowExpressions: true,
      },
    ],
    "jsx-a11y/alt-text": [
      "error",
      {
        elements: ["img", "object", "area", 'input[type="image"]'],
        img: ["Image"],
        object: ["Object"],
        area: ["Area"],
        'input[type="image"]': ["InputImage"],
      },
    ],
    "jsx-a11y/role-supports-aria-props": "off",
    "@typescript-eslint/no-non-null-assertion": "off",
    "@typescript-eslint/ban-ts-comment": "off",
    "@typescript-eslint/consistent-type-imports": [
      "warn",
      {
        prefer: "type-imports",
        fixStyle: "inline-type-imports",
      },
    ],
    "@typescript-eslint/no-unused-vars": ["warn", { argsIgnorePattern: "^_" }],
  },
};

module.exports = config;
