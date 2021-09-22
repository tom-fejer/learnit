<template>
  <el-header>
  </el-header>
  <el-main>
    <Login />
    <Profile />
    <Progress />
  </el-main>
</template>

<script>
import Progress from './views/Progress.vue'
import Login from './views/Login.vue'
import Profile from './views/Profile.vue'

export default {
  name: 'App',
  components: {
    Progress,
    Login,
    Profile
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
