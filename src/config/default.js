module.exports = {
    port: 3000,
    domain: 'localhot',

    postgress: {
        port: 2701,
        host: 'localhost',
        user: 'username',
        password: 'pwd'
    },
    security: {
        enc: {
            key: 32,
            iv: 16,
            alg: 'aes-256-cbc'
        }
    },
    utils:{
        pipe: '|',
        hex: 'hex'
    },
    logger: 'dev'
}