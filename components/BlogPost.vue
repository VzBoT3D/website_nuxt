<script setup lang="ts">

import type {IBlog} from "~/lib/types/Blog";
import {toReadableLocaleDate} from "~/lib/utils";
import VueMarkdown from 'vue-markdown-render'

defineProps<{
  blog: IBlog
}>()

</script>

<template>
  <div class="flex flex-col items-center gap-8 w-10/12">
    <p class="text-6xl font-thin underline">{{blog.title}}</p>
    <Card>
      <CardContent class="p-4">
        <div class="flex flex-col gap-2">
          <div class="flex items-center gap-2">
            <NuxtImg :src="blog.author.profilePicture" class="w-8 h-8 rounded-full drop-shadow-lg"/>
            <p>Written by {{ blog.author.name }}</p>
          </div>
          <div>
            <p>Written {{toReadableLocaleDate(blog.createdAt)}}</p>
          </div>
          <Button class="w-fit" size="sm" variant="secondary">View more from this author</Button>
        </div>
      </CardContent>
    </Card>

    <Card class="w-full prose">
      <CardContent class="p-6">
        <VueMarkdown :source="blog.content"></VueMarkdown>
      </CardContent>
    </Card>


  </div>
</template>

<style scoped>

</style>