const express = require('express')

const router = express.Router()
const encdec = require('../../controller/encriptadorController')

router
.post('/encriptador/encriptar', encdec.encriptarRegistro)
.post = ('/encriptador/desencriptar', encdec.desencriptarRegistro)

module.exports = router