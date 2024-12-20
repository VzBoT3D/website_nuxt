<script setup lang="ts">
import type {IBlog} from "~/lib/types/Blog";
import BlogPost from "~/components/BlogPost.vue";

definePageMeta({
  layout: "landing-page-layout"
})

const route = useRoute()
const id = route.params.id

const {data, error} = useFetch<{blog: IBlog}>("/api/blog/" + id)

</script>

<template>
  <div v-if="error || !data?.blog" class="flex flex-col items-center">
    <p class="text-4xl text-center">The given post does not exist</p>
    <Button class="w-fit">Browse all posts</Button>
  </div>

  <div v-else class="flex justify-center items-center">
    <BlogPost :blog="data.blog"/>
  </div>


</template>

<style scoped>

</style>