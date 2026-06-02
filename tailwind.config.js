/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./*.html",
    "./**/*.html"
  ],
  theme: {
    extend: {
      colors: {
        bg: '#0a0a0f',
        surface: '#14141f',
        accent: '#8b5cf6',
        accent2: '#f59e0b',
      },
    },
  },
  plugins: [],
}
