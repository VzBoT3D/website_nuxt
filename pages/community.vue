<script setup lang="ts">

import Globe from "~/components/inspira/Globe.vue";

definePageMeta({
  layout: 'landing-page-layout'
})

const { data, error } = await useAsyncData(
  'serials',
  () => $fetch('http://localhost:8080/serials',
    {
      headers: {
      'token': '6bfa48ca126'
    } })
)

const serials = data.value as ISerial[]

const getRandomNumber = (low, high) => {
  return Math.floor(Math.random() * (high - low + 1)) + low;
}

const markers = serials.filter((s) => s.attributes?.location).map((s) => ({
  location: s.attributes?.location.latlng.map((number) => number),
  size: 0.08
}));

</script>

<template>
  <div class="flex flex-col items-center justify-center overflow-hidden rounded-lg bg-background md:shadow-xl">
    <div class="pointer-events-none whitespace-pre-wrap bg-gradient-to-b from-black to-gray-300/80 bg-clip-text text-center text-8xl font-semibold leading-none text-transparent max-lg:-mt-12 dark:from-white dark:to-slate-900/10">
      <p>VZ around the world</p>
    </div>
    <Globe :config="{ markers: markers }" class=""/>
  </div>
</template>

<style scoped>

</style>