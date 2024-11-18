<script setup lang="ts">

import PrinterPreview from "~/components/printers/PrinterPreview.vue";

definePageMeta({
  layout: 'landing-page-layout'
})

</script>

<template>
  <div class="flex-grow flex z-20">
    <PrinterPreview name="VZ235"/>
  </div>
</template>

<style scoped>

</style>