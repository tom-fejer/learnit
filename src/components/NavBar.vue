<template>
  <div class="row-class">
    <div class="nav-bar">
      Is this working? Hello World!
    </div>
    
    <router-link to="/">
      <button>Home</button>
    </router-link>
    
    <router-link to="/about">
      <button>About</button>
    </router-link>
  </div>
</template>

<script>
export default {
  data() {

  },
  methods: {

  }
}
</script>

<style>
.nav-bar {
  @apply
  text-xl
  bg-gray-100
  text-black
  dark:bg-gray-600
  dark:text-gray-100
  p-44
}

.row-class {
	@apply
	flex
	flex-col
	flex-wrap
	content-center
	items-center
	p-3
}
</style>
