<template>
  <div class="flex flex-1 flex-col justify-center overflow-hidden bg-background">
    <div class="h-[calc(100vh)]">
      <HeroSection/>
    </div>

    <div class="flex flex-col w-full justify-center p-8 z-10 gap-12">
      <div class="flex justify-center text-5xl font-normal text-neutral-600 dark:text-neutral-400">
        Meet our
        <FlipWords
          :words="['Printers', 'Vz235', 'Vz330']"
          :duration="3000"
          class="text-5xl !text-primary"
        />
      </div>
      <div class="flex gap-8 justify-center">
        <VZ235Card name="VZ235" src="/vz235_preview.jpg" description="Our 235x235 high speed printer platform"/>
        <VZ235Card name="VZ330" src="/vz330_preview.jpg" description="The first VzBoT based on the Tronxy X5SA"/>
      </div>
    </div>

  </div>
</template>

<script setup lang="ts">
import HeroSection from "~/components/landing_page/HeroSection.vue";
import VZ235Card from "~/components/printers/VZ235Card.vue";
import FlipWords from "~/components/inspira/FlipWords.vue";

definePageMeta({
  layout: "landing-page-layout"
})
</script>