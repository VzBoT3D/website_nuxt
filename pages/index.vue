<template>
  <div class="relative flex flex-1 h-full w-full flex-col items-center justify-center overflow-hidden rounded-lg bg-background">

    <span class="pointer-events-none font-sans font-bold italic whitespace-pre-wrap bg-gradient-to-b from-black to-red-300/80 bg-clip-text text-center text-8xl leading-none text-transparent dark:from-white/80 dark:to-slate-900/10">
      VzBoT
    </span>

    <h1
      class="text-center text-3xl font-bold leading-tight tracking-tighter lg:leading-[1.1] md:text-6xl"
    >
      Print it, but
      <TextHighlight
        class="rounded-xl bg-gradient-to-r from-pink-500 to-violet-500 px-4 py-1"
        text-end-color="hsl(var(--accent))"
      >
        FAST
      </TextHighlight>
    </h1>

  </div>
</template>

<script setup lang="ts">
definePageMeta({
  layout: "landing-page-layout"
})
</script>