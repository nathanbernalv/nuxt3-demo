<template>
  <div class="p-4">
    <h1 class="text-2xl font-bold">Ejemplo Nuxt 3</h1>
    <p v-if="pending">Cargando...</p>
    <div v-else>
      <p>{{ data.message }}</p>
      <small>{{ data.fecha }}</small>
    </div>
  </div>
</template>

<script setup lang="ts">
//const { data, pending } = await useFetch('/api/hello')
</script>
