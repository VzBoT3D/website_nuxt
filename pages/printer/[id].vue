<script setup lang="ts">

import type {IPrinter} from "~/lib/types/PrinterProfile";
import VueMarkdown from 'vue-markdown-render'
import {calculateReadingTime, formatToMinutes} from "~/lib/utils";
import CardBody from "~/components/inspira/CardBody.vue";
import CardItem from "~/components/inspira/CardItem.vue";
import CardContainer from "~/components/inspira/CardContainer.vue";
import InteractiveHoverButton from "~/components/inspira/InteractiveHoverButton.vue";

definePageMeta({
  layout: "landing-page-layout"
})

const route = useRoute()
const id = route.params.id

const {data, error} = useFetch<{printerData: IPrinter}>("/api/printer/" + id)

const openLearnMoreURL = () => {
  if (data.value?.printerData?.profile) {
    window.open(data.value.printerData.profile[0].learnMoreURL , "_blank")
  }
}

const openKitURL = () => {
  if (data.value?.printerData?.profile) {
    window.open(data.value.printerData.profile[0].kitURL , "_blank")
  }
}

</script>

<template>
  <div class="flex flex-col gap-2 justify-center items-center" v-if="!(data?.printerData && data.printerData.profile && data.printerData.profile.length > 0)">
    <p class="text-3xl font-thin">The given printer was not found :(</p>
    <Button>View all printers</Button>
  </div>

  <div v-else class="flex flex-1 flex-col gap-8 p-6 ">
    <p class="text-6xl font-thin text-center">{{data.printerData.name}}</p>
    <div class=" items-center grid grid-cols-1 lg:grid-cols-2 grid-flow-col">
      <div class="w-11/12 justify-self-center">
        <Swiper
          :modules="[SwiperAutoplay, SwiperNavigation, SwiperPagination]"
          :slides-per-view="1"
          :loop="true"
          :autoplay="{
      delay: 8000,
      disableOnInteraction: true,
    }"
          :pagination="{ clickable: true }"
          navigation
          class="bg-accent rounded-md"
        >
          <SwiperSlide v-for="media in data.printerData.profile[0].medias" :key="media.id">
            <NuxtImg :src="media.location"></NuxtImg>
          </SwiperSlide>
        </Swiper>
      </div>
      <div class="flex flex-col gap-8">
        <div class="flex flex-col gap-2">
          <VueMarkdown class="text-md font-thin" :source="data.printerData.profile[0].description"/>
        </div>

        <div class="flex gap-4">
          <Button @click="openLearnMoreURL" size="lg">Learn more</Button>
          <Button @click="openKitURL" v-if="data.printerData.profile[0].kitURL" size="lg">Buy now</Button>
        </div>
      </div>
    </div>
    <div class="flex justify-center">
      <InteractiveHoverButton @click="navigateTo('/printers')" class="w-64" text="Other printers"/>
    </div>
  </div>

</template>

<style>
.swiper-button-next::after,
.swiper-button-prev::after {
  color: hsl(var(--foreground));
}

.swiper-pagination-bullet-active {
  background: hsl(var(--foreground));
}
</style>