import mysql from 'mysql2/promise'

export default defineEventHandler(async () => {
      // Conexión a la base de datos
    const connection = await mysql.createConnection({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASS,
    database: process.env.DB_NAME
    })

    // Consulta
    const [rows] = await connection.execute('SELECT * FROM au_usuario')

    // Cerrar conexión
    await connection.end()

    // Devolver los resultados
    return rows
})
