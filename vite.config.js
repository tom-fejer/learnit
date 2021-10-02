import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'

// https://vitejs.dev/config/
export default defineConfig({
  resolve: {alias: {'@': '/src'} },
  plugins: [vue()],
  base: process.env.NODE_ENV === 'production'
  ? '/learnit/'
  : '/'
})