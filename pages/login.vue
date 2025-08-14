<template>
  <div>
    <h1>Lista de usuarios</h1>
    <ul>
      <li v-for="user in data" :key="user.id">
        {{ user.nombres }} - {{ user.alias }}
      </li>
    </ul>
  </div>
</template>

<script setup lang="ts">
const { data } = await useFetch('/api/usuarios')
</script>
