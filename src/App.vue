<template>
  <NavBar/>
  <router-view v-slot="{ Component }">
    <transition name="fade" mode="out-in">
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

  .fade-enter-active,
  .fade-leave-active {
    transition: opacity 1s, transform 1s;
  }

  .fade-enter-from,
  .fade-leave-to {
    opacity: 0;
		transition: opacity 1s, transform 1s;
  }
</style>
