const enc = require('../utils/secureEncrypt')

const encriptarRegistro = (req, res) => {
    enc.encriptador("sc")
}

const desencriptarRegistro = (req, res) => {
    enc.desencriptador("val")
}

module.exports = [
    encriptarRegistro, desencriptarRegistro
]