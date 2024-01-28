const express = require('express')
const router = express.Router()
const u = require('./usuariosRoutes')
const r = require('./encriptadorRoutes')

const PATH_V1 = '/api/v1/'

router.use(PATH_V1, u)
router.use(PATH_V1, r)

module.exports = router