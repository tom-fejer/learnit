<template>
  <div class="main-container">
    <div
      class="
        text-xl
        bg-gray-100
        text-black
        dark:bg-gray-600
        dark:text-gray-100
        p-44
      "
    >
      Hello World!
    </div>
    <Progress v-if="userIsLoggedIn()" />
    <Login v-else />
    <Button class="m-1"/>
    <Button class="m-1"/>
    <Button class="m-1"/>
    <Button class="m-1"/>
  </div>
</template>

<script>
import Progress from "./views/Progress.vue";
import Login from "./views/Login.vue";
import Button from "./components/elements/Button.vue";

export default {
  name: "App",
  components: {
    Progress,
    Login,
    Button,
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
.main-container {
  @apply flex flex-col flex-wrap content-center items-center p-3;
}
</style>
