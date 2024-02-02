const serviceusuario = require('../services/usuariosService')

const obtenerUsuarios = (req, res) => {
    serviceusuario.listarUsuarios()
    res.send("listando usuarios")
}

module.exports = {obtenerUsuarios}