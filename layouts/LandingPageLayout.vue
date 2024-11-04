<script setup lang="ts">
  const isDark = computed(() => useColorMode().value == "dark");
</script>

<template>
  <div class="min-h-screen w-full flex flex-col z-0">
    <AppHeader/>

    <div class="absolute flex-1 w-full h-full z-10">
      <ParticlesBg
        class="fixed opacity-70 h-full w-full"
        :quantity="250"
        :ease="100"
        :color="isDark ? '#FFF' : '#000'"
        :staticity="10"
        refresh
      />
    </div>

    <slot class="flex-1 backdrop-filter backdrop-blur-2xl"/>

    <AppFooter class="z-20"/>
  </div>
</template>

<style scoped>

</style>