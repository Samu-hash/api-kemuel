const express = require('express')
const router = express.Router()
const usuarios = require('../../controller/usuariosController')

router.get('/usuario/listar-usuarios', (req, res)=>{
    res.send('hola usuario')
})


module.exports = router