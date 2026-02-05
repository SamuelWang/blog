import { defineCollection } from 'astro:content';
import { glob } from 'astro/loaders';
import { z } from 'astro/zod';

const articlesSchema = z.object({
  title: z.string(),
  author: z.string(),
  description: z.string(),
  tags: z.array(z.string()),
  releaseDate: z.coerce.date(),
  updateDate: z.coerce.date(),
});
const articlesEn = defineCollection({
  loader: glob({
    pattern: '**/*.md',
    base: './src/data/articles/en',
  }),
  schema: articlesSchema,
});
const articlesZhTw = defineCollection({
  loader: glob({
    pattern: '**/*.md',
    base: './src/data/articles/zh-tw',
  }),
  schema: articlesSchema,
});

export const collections = { articlesEn, articlesZhTw };
