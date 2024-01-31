const express = require('express')
const router = express.Router()
const usuarios = require('./usuariosRoutes')
const middleware = require('../../middleware/authMiddleware')

const PATH_V1 = '/api/v1/'

router.use(PATH_V1, middleware, usuarios)

module.exports = router