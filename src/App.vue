<template>
  <NavBar/>
  <router-view v-slot="{ Component }">
    <transition name="slide" mode="out-in">
      <component :is="Component" :key="$route.path"/>
    </transition>
  </router-view>
</template>

<script>
import NavBar from '@/components/NavBar.vue'

export default {
  components: {
    NavBar
  },
  methods: {
    userIsLoggedIn() {
      return true;
    },
  },
};
</script>

<style>
  #app {
    font-family: Avenir, Helvetica, Arial, sans-serif;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
  }

  .slide-enter-active,
  .slide-leave-active {
    transition: opacity 1s, transform 1s;
  }

  .slide-enter-from,
  .slide-leave-from {
    opacity: 0;
    transform: translateX(-30%);
  }
</style>
