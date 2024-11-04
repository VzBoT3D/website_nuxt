<template>
  <div class="flex flex-1 flex-col justify-center overflow-hidden bg-background gap-16">
    <div class="h-[calc(100vh)]">
      <HeroSection/>
    </div>

    <div class="flex flex-col w-full justify-center pb-16 z-10 gap-12">
      <div class="flex justify-center text-5xl font-normal text-neutral-600 dark:text-neutral-400">
        Meet our
        <FlipWords
          :words="['Printers', 'Vz235', 'Vz330']"
          :duration="3000"
          class="text-5xl !text-primary"
        />
      </div>
      <div class="flex gap-8 justify-center">
        <PrinterCard name="VZ235" src="/vz235_preview.jpg" description="Our 235x235 high speed printer platform"/>
        <PrinterCard name="VZ330" src="/vz330_preview.jpg" description="The first VzBoT based on the Tronxy X5SA"/>
      </div>
    </div>

    <div class="flex flex-col w-full justify-center gap-4">
      <RadiantText
        class="inline-flex items-center justify-center px-4 transition ease-out hover:text-neutral-600 hover:duration-300 hover:dark:text-neutral-400"
        :duration="15"
      >
        <span class="text-3xl font-bold">Our goals at VzBoT✨</span>
      </RadiantText>

      <div class="flex justify-center">
        <div class="grid grid-cols-3 gap-2 justify-center w-fit">
          <MeteorCard title="KISS" description="Keep it simple stupid is the main motto of VzBoT. We wan´t to keep our machines and parts simple, and reduce overengineering."/>
          <MeteorCard title="Make it fast" description="We try to push the limits with VzBoT. Chasing speeds but keeping a good print quality is the goal."/>
          <MeteorCard title="Open source" description="All of our findings are published to our GitHub or YouTube channel to keep development ongoing."/>
        </div>
      </div>
    </div>

  </div>
</template>

<script setup lang="ts">
import HeroSection from "~/components/landing_page/HeroSection.vue";
import FlipWords from "~/components/inspira/FlipWords.vue";
import PrinterCard from "~/components/printers/PrinterCard.vue";
import RadiantText from "~/components/inspira/RadiantText.vue";


definePageMeta({
  layout: "landing-page-layout"
})
</script>