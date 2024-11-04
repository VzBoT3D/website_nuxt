<script setup lang="ts">
import { Icon } from '@iconify/vue'

const initial = ref({
  y: 100,
  opacity: 0,
})

const enter = ref({
  y: 0,
  opacity: 1,
})
</script>

<template>
  <div class="flex flex-col justify-center items-center h-full">
    <span v-motion
          :initial="initial"
          :enter="enter"
          :duration="1200"
          class="pointer-events-none font-sans font-bold italic whitespace-pre-wrap bg-gradient-to-b from-black to-red-300/80 bg-clip-text text-center text-8xl leading-none text-transparent dark:from-white/80 dark:to-slate-900/10">
      VzBoT
    </span>

    <h1
      v-motion
      :initial="initial"
      :enter="enter"
      :delay="800"
      :duration="1200"
      class="text-center text-3xl font-bold leading-tight tracking-tighter lg:leading-[1.1] md:text-6xl"
    >
      Print it, but
      <TextHighlight
        :delay="1700"
        :duration="200"
        class="rounded-xl bg-gradient-to-r from-pink-500 to-violet-500 px-4 py-1"
        text-end-color="hsl(var(--accent))"
      >
        FAST
      </TextHighlight>
    </h1>

    <div v-motion :initial="initial" :enter="enter" :delay="1500" :duration="2000" class="relative top-40 flex flex-col gap-2 items-center">
      <Icon icon="formkit:arrowdown" class="w-12 h-12"/>
      <p class="font-thin">Scroll down to see more</p>
    </div>
  </div>
</template>

<style scoped>

</style>