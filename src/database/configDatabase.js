const { Pool } = require('pg')
const config = require('config')

const pool = new Pool({
    user: config.get('postgress.user'),
    host: config.get('postgress.host'),
    database: config.get('postgress.database'),
    password: config.get('postgress.password'),
    port: config.get('postgress.post')
})

module.exports = pool