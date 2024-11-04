<script setup lang="ts">
import { DropdownMenu, DropdownMenuContent, DropdownMenuItem, DropdownMenuTrigger } from '@/components/ui/dropdown-menu'
import {Icon} from "@iconify/vue";

const openGithub = () => {
  window.open("https://github.com/VzBoT3D", "_blank")
}

const openDiscord = () => {
  window.open("https://discord.gg/vzbot", "_blank")
}

</script>

<template>
  <nav class="fixed top-0 w-full p-2 bg-background opacity-100 z-20">
    <div class="flex items-center justify-start p-1 px-3 w-full h-12 rounded-xl">
      <div class="h-full w-1/3 flex opacity-100">
        <div class="flex hover:bg-secondary transition-colors duration-150 hover:cursor-pointer rounded-md">
          <NuxtImg class="object-contain scale-95 p-1" src="/logo_with_text.png"/>
        </div>
      </div>

      <div class="w-1/3 flex justify-center">
        <DropdownMenu>
          <DropdownMenuTrigger as-child>
            <Button variant="ghost">Machines</Button>
          </DropdownMenuTrigger>
          <DropdownMenuContent align="end">
            <DropdownMenuItem>
              <div>
                <p>VZ235</p>
              </div>
            </DropdownMenuItem>
            <DropdownMenuItem>
              <div>
                <p>VZ330</p>
              </div>
            </DropdownMenuItem>
          </DropdownMenuContent>
        </DropdownMenu>
        <Button variant="ghost">Meet the team</Button>
        <Button variant="ghost">Docs</Button>
      </div>

      <div class="w-1/3 flex items-center justify-end">
        <ThemeSelector class="justify-self-end"></ThemeSelector>
        <Button variant="ghost" @click="openGithub">
          <Icon icon="iconoir:github" class="h-[1.2rem] w-[1.2rem]"/>
        </Button>
        <Button variant="ghost" @click="openDiscord">
          <Icon icon="ic:baseline-discord" class="h-[1.2rem] w-[1.2rem]"/>
        </Button>
      </div>
    </div>
  </nav>
</template>

<style scoped>

</style>