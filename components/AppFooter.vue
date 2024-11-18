<script setup lang="ts">
const colorMode = useColorMode()

const logoURL = computed(() => {
  return colorMode.value === 'light' ? '/logo_with_text_dark.png' : '/logo_with_text.png'
})
</script>

<template>
  <div class="bottom-0 w-full p-2 bg-background flex flex-col">
    <div class="flex items-center justify-start p-1 px-3 w-full rounded-xl">
      <div class="h-full w-1/3 flex flex-col items-start">
          <Button variant="link">Documentation</Button>
          <Button variant="link">Github</Button>
          <Button variant="link">Discord</Button>
          <Button variant="link">YouTube</Button>
      </div>

      <div class="w-2/3 flex items-center justify-end gap-2">
          <p class="break-normal">Made with love by Devin</p>
          <p>|</p>
          <div class="flex h-12">
            <NuxtImg class="object-contain p-1" :src="logoURL"/>
          </div>
      </div>
    </div>
  </div>
</template>

<style scoped>

</style>