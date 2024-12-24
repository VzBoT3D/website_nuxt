<script setup lang="ts">

import type {IAuthor} from "~/lib/types/Blog";
import BlogPostPreview from "~/components/BlogPostPreview.vue";

definePageMeta({
  layout: "landing-page-layout"
})

const {data} = useFetch<{authors: IAuthor[]}>("/api/author/all")

</script>

<template>
  <div class="text-center" v-if="!data?.authors">
    <p class="text-3xl">Oh no, an error occurred :(</p>
  </div>

  <div v-else class="flex flex-col gap-4 items-center p-20">
    <p class="text-4xl font-thin">VzBoT's team members</p>
    <div class="flex flex-wrap gap-4 justify-center content-center">
      <Author v-for="author in data.authors" :show-posts="false" :author="author"/>
    </div>
  </div>
</template>