# 1️⃣ Etapa de build
FROM node:18-alpine AS builder

# Crear carpeta de trabajo
WORKDIR /app

# Copiar archivos de configuración y dependencias
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar todo el código de la app
COPY . .

# Construir el proyecto Nuxt
RUN npm run build

# 2️⃣ Etapa de producción
FROM node:18-alpine AS runner

WORKDIR /app

# Copiamos solo lo necesario de la etapa de build
COPY --from=builder /app/.output ./.output
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/package*.json ./

# Exponer puerto
EXPOSE 3000

# Comando para iniciar Nuxt
CMD ["node", ".output/server/index.mjs"]
