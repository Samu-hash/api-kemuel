const config = require('config')
const express = require('express')
const router = require('./v1/routes')

const app = express()
const PORT = config.get('port')

app.use(express.json())
app.use(router)

app.use((req, res, next) => {
    res.status(404).send('La ruta especificada no existe')
})

app.listen(PORT, ()=>{
    console.log(`Server listening ${PORT}`)
})