import tailwindcss from '@tailwindcss/vite';
import { defineConfig } from 'astro/config';
import rehypeMathjax from 'rehype-mathjax';
import remarkDirective from 'remark-directive';
import remarkDirectiveSugar from 'remark-directive-sugar';
import remarkMath from 'remark-math';

// https://astro.build/config
export default defineConfig({
  vite: {
    plugins: [tailwindcss()],
  },
  i18n: {
    locales: ['en', 'zh-tw'],
    defaultLocale: 'en',
  },
  markdown: {
    remarkPlugins: [remarkMath, remarkDirective, remarkDirectiveSugar],
    rehypePlugins: [rehypeMathjax],
  },
});
