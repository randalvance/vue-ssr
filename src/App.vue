<script setup lang="ts">
// This starter template is using Vue 3 <script setup> SFCs
// Check out https://vuejs.org/api/sfc-script-setup.html#script-setup
import { ref } from 'vue';

import HelloWorld from './components/HelloWorld.vue'

let environment = import.meta.env.VITE_ENVIRONMENT
if (import.meta.env.SSR) {
  environment = process.env.ENVIRONMENT
}
const imgUrl = ref('/' + environment + '/assets/vue.svg')
</script>

<template>
  <div id="test">
    <a href="https://vitejs.dev" target="_blank">
      <img :src="imgUrl" class="logo" alt="Vite logo" />
    </a>
  </div>
  <HelloWorld msg="Vite + Vue" />
</template>

<style scoped>
.logo {
  height: 6em;
  padding: 1.5em;
  will-change: filter;
}
.logo:hover {
  filter: drop-shadow(0 0 2em #646cffaa);
}
.logo.vue:hover {
  filter: drop-shadow(0 0 2em #42b883aa);
}
</style>
