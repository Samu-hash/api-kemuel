
const jwt = require('jsonwebtoken')
const config = require('config')

const resp = require('../utils/response')

const authentication = (req, res, next) => {
    let security = req.headers['authorization']

    if(security == null || security == '') resp.responseFailed(res, 'Autorizacion no encontrada.')

    security = security.split(' ')

    if(security[0] != config.get('security.jwt.bearer')) resp.responseFailed(res, 'Autorizacion no encontrada.')

    jwt.verify(security[1], salt, (err, decode)=> {

        if(err) resp.responseUnauthorized(res, 'Token no valido.')

        return next()
    })
}

module.exports = authentication