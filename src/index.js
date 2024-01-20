
const encriptador = require('./utils/secureEncrypt')

console.log(encriptador.encriptador('hola como esta'))

console.log(encriptador.desencriptador(encriptador.encriptador('hola como esta')))
