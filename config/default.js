module.exports = {
    port: 3000,
    domain: 'localhot',
    postgress: {
        port: 5432,
        host: 'localhost',
        user: 'postgres',
        password: 'root',
        database: 'kemuel-db'
    },
    security: {
        enc: {
            key: 32,
            iv: 16,
            alg: 'aes-256-cbc'
        },
        jwt: {
            bearer: 'Bearer'
        }
    },
    utils:{
        pipe: '|',
        hex: 'hex'
    },
    logger: 'dev'
}