const express = require('express')
const router = express.Router()

const usuarios = require('./usuariosRoutes')
const middleware = require('../../middleware/authMiddleware')
const encriptador = require('./encriptadorRoutes')

const PATH_V1 = '/api/v1/'

router.use(PATH_V1, middleware, usuarios)

router.use(PATH_V1, usuarios)
router.use(PATH_V1, encriptador)

module.exports = router