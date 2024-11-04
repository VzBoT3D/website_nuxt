FROM oven/bun:latest as build

WORKDIR /app
COPY package.json bun.lockb tsconfig.json ./

RUN bun install --verbose

# Copy the rest of the application files
COPY . .

# Build the application for production
RUN bun run build

RUN rm -rf .output/server/node_modules
RUN bun install --cwd .output/server/

FROM node:lts-slim as runner

ENV NODE_ENV=PRODUCTION
EXPOSE 3000

WORKDIR /app

COPY --from=build /app/.output .output

ENTRYPOINT ["node", ".output/server/index.mjs"]