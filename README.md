# Samuel Wang's Blog

This repository is my blog, built with Astro.

## Quick start

1. Install dependencies:

```
pnpm install
```

2. Run the dev server:

```
pnpm dev
```

3. Build for production:

```
pnpm build
```

4. Preview the production build locally:

```
pnpm preview
```

## Commands

- **Install:** `pnpm install`
- **Develop:** `pnpm dev` (local server, default port shown in console)
- **Build:** `pnpm build` (outputs to `./dist`)
- **Preview:** `pnpm preview`
- **Astro CLI:** `pnpm astro -- --help`

## Project layout (important paths)

- [src/pages](src/pages) — Astro pages and routes.
- [src/layouts](src/layouts) — Site layout(s).
- [src/components](src/components) — Reusable components like `Header.astro`, `Footer.astro`.
- [src/data/articles](src/data/articles) — Article source files (organized by locale: `en`, `zh-tw`).
- [public/images/articles](public/images/articles) — Article-related images and uploaded assets.
- [src/utils](src/utils) — Utilities (e.g., date formatting).
- [content.config.ts] (content.config.ts) — Content configuration for the site.

## Writing articles

- Add a new markdown file under `src/data/articles/<locale>/` (e.g., `src/data/articles/en/20260501001.md`).
- Frontmatter metadata (title, date, description, tags, etc.) is used by the site — follow existing files as examples.
- Put images for an article under `public/images/articles/<article-id>/` and reference them from the markdown or components.

## Internationalization

This site includes content for English (`en`) and Traditional Chinese (`zh-tw`). Add mirrored markdown files in the corresponding locale folder for translations.

## Assets

- Fonts and global static assets live in `public/fonts` and `public/`.
- Keep article images under `public/images/articles/` to preserve predictable URLs.

## Notes for developers

- The article list and article pages read from the `src/data/articles` directory — use consistent filenames and frontmatter.
- Components live in `src/components` (examples: `ArticleListItem.astro`, `ArticleContent.astro`).
- Layouts are in `src/layouts/SiteLayout.astro`.

## Deploying

Build with `pnpm build` and deploy the `./dist` output to any static hosting provider (Netlify, Vercel, Cloudflare Pages, etc.).
