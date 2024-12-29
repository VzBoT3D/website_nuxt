<script setup lang="ts">
import type {IAuthor} from "~/lib/types/Blog";

definePageMeta({
  layout: "landing-page-layout"
})

const route = useRoute()
const id = route.params.id

const {data, error} = useFetch<{author: IAuthor }>("/api/author/" + id)

</script>

<template>
  <div v-if="error || !data?.author" class="flex flex-col items-center">
    <p class="text-4xl text-center">The given author does not exist</p>
    <Button class="w-fit">Check out all authors</Button>
  </div>

  <div v-else class="flex justify-center items-center p-8">
    <Author :author="data.author" :show-posts="true"/>
  </div>
</template>

<style scoped>

</style>