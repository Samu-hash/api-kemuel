const config = require('config')

const crypto = require('crypto')

const KEY = crypto.randomBytes(config.get('security.enc.key'))
const IV = crypto.randomBytes(config.get('security.enc.iv'))
const ALG = config.get('security.enc.alg')

const pipe = config.get('utils.pipe')
const hex = config.get('utils.hex')

const encriptador = (text) => {

    const cifrado = crypto.createCipheriv(ALG, KEY, IV)
    const encriptado = Buffer.concat([cifrado.update(text), cifrado.final()])
     return IV.toString(hex) + pipe + encriptado.toString(hex)
}


const desencriptador = (text) => {
    let splitText = text.split(pipe)
    const iv = Buffer.from(splitText[0], hex)
    const encriptado = Buffer.from(splitText[1], hex)

    const descifrado = crypto.createDecipheriv(ALG, KEY, iv)

    return Buffer.concat([descifrado.update(encriptado), descifrado.final()]).toString()

}


module.exports = {encriptador, desencriptador}