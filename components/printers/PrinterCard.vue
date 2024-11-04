<script setup lang="ts">

import CardContainer from "~/components/inspira/CardContainer.vue";
import CardItem from "~/components/inspira/CardItem.vue";
import CardBody from "~/components/inspira/CardBody.vue";

interface IPrinterCardProps {
  name: string
  description: string
  src: string
}

defineProps<IPrinterCardProps>()
</script>

<template>
  <ClientOnly>
    <CardContainer>
      <CardBody class="group/card shadow-md relative hover:cursor-pointer size-auto rounded-xl border border-black/[0.1] bg-gray-50 p-6 sm:w-[30rem] dark:border-white/[0.2] dark:bg-black dark:hover:shadow-2xl dark:hover:shadow-emerald-500/[0.1]">
        <CardItem
          as="p"
          :translate-z="50"
          class="text-xl font-bold text-neutral-600 dark:text-white w-full"
        >
          {{ name }}
        </CardItem>
        <CardItem
          as="p"
          :translate-z="35"
          class="mt-2 max-w-sm text-sm text-neutral-500 dark:text-neutral-300"
        >
          {{ description }}
        </CardItem>
        <CardItem :translate-z="100" class="mt-4 w-full">
          <NuxtImg :src="src"
                   height="1000"
                   class="h-60 w-full rounded-xl group-hover/card:shadow-xl"
          />
        </CardItem>
        <div class="mt-20 flex items-center justify-between">
          <CardItem
            :translate-z="20"
            as="a"
            href="https://rahulv.dev"
            target="__blank"
            class="rounded-xl px-4 py-2 text-xs font-normal dark:text-white"
          >
            To the docs →
          </CardItem>
          <CardItem
            :translate-z="20"
            as="button"
            class="rounded-xl bg-black px-4 py-2 text-xs font-bold text-white dark:bg-white dark:text-black"
          >
            Learn more
          </CardItem>
        </div>

      </CardBody>
    </CardContainer>
  </ClientOnly>
</template>

<style scoped>

</style>