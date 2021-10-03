import {defineConfig} from 'vite'
import vue from '@vitejs/plugin-vue'
const path = require('path')

// https://vitejs.dev/config/
export default defineConfig({
  resolve: {
    alias: {
      '@': path.resolve(__dirname, './src')
    },
    extensions: ['.vue', '.js', '.ts', '.json']
  },
  plugins: [vue()],
  base: process.env.NODE_ENV === 'production' ? '/learnit/' : '/'
})
