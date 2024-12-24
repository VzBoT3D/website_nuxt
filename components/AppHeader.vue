<script setup lang="ts">
import {Icon} from "@iconify/vue";

const openGithub = () => {
  window.open("https://github.com/VzBoT3D", "_blank")
}

const openDiscord = () => {
  window.open("https://discord.gg/vzbot", "_blank")
}

const router = useRouter()

const colorMode = useColorMode()

const logoURL = computed(() => {
  return colorMode.value === 'light' ? '/logo_with_text_dark.png' : '/logo_with_text.png'
})

</script>

<template>
  <nav class="top-0 w-full p-2 bg-background opacity-100 z-20">
    <div class="flex items-center justify-start p-1 h-12 px-3 w-full rounded-xl">
      <div class="h-full w-1/3 flex opacity-100">
        <div @click="navigateTo('/')" class="flex hover:bg-secondary transition-colors duration-150 hover:cursor-pointer rounded-md">
          <NuxtImg class="object-contain scale-95 p-1" :src="logoURL"/>
        </div>
      </div>

      <div class="w-1/3 flex justify-center">
        <DropdownMenu>
          <DropdownMenuTrigger as-child>
            <Button variant="ghost">Machines</Button>
          </DropdownMenuTrigger>
          <DropdownMenuContent align="end">
            <DropdownMenuItem @click="navigateTo('/vz235')">
              <div class="flex flex-col max-w-36">
                <p class="text-xl font-thin">VZ235</p>
              </div>
            </DropdownMenuItem>
            <DropdownMenuItem @click="navigateTo('/vz330')">
              <div class="flex flex-col max-w-36">
                <p class="text-xl font-thin">VZ330</p>
              </div>
            </DropdownMenuItem>
          </DropdownMenuContent>
        </DropdownMenu>
        <DropdownMenu>
          <DropdownMenuTrigger>
            <Button variant="ghost">Community</Button>
          </DropdownMenuTrigger>
          <DropdownMenuContent>
            <DropdownMenuItem  @click="router.push('/community')">
              <div class="flex flex-col max-w-36">
                <p class="text-xl font-thin">Serials</p>
              </div>
            </DropdownMenuItem>
            <DropdownMenuItem @click="navigateTo('/authors')">
              <div class="flex flex-col max-w-36">
                <p class="text-xl font-thin">Meet the team</p>
              </div>
            </DropdownMenuItem>
          </DropdownMenuContent>
        </DropdownMenu>
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