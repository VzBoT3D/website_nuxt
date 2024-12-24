<script setup lang="ts">

import type {IPost} from "~/lib/types/Blog";
import BlogPostPreview from "~/components/BlogPostPreview.vue";

definePageMeta({
  layout: "landing-page-layout"
})

const {data} = useFetch<{posts: IPost[]}>("/api/blog/all")

</script>

<template>
  <div class="text-center" v-if="!data?.posts">
    <p class="text-3xl">Oh no, an error occurred :(</p>
  </div>

  <div v-else class="flex flex-col gap-4 items-center p-20">
    <p class="text-4xl font-thin">VzBoT's blog posts</p>
    <div class="flex flex-wrap gap-4 justify-center content-center">
      <BlogPostPreview v-for="post in data.posts" :post="post"/>
    </div>
  </div>
</template>