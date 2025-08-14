export default defineEventHandler(() => {
  return {
    message: "Hola desde la API interna de Nuxt 3",
    fecha: new Date().toISOString()
  }
})

