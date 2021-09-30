<template>
  <button class="button">GOMB</button>
</template>

<script>
export default {};
</script>

<style>
.button {
  @apply
  transition
  duration-200
  ease-linear
  bg-blue-600
  hover:bg-red-600
  transform-gpu
  hover:translate-x-1
  w-24
  h-7
  text-gray-50
}
</style>