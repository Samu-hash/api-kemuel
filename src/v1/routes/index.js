const express = require('express')
const router = express.Router()
const u = require('./usuariosRoutes')

const PATH_V1 = '/api/v1/'

router.use(PATH_V1, u)

module.exports = router