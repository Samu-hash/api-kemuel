const pool = require('./configDatabase')

const select = (query, params) => {
    pool.query(query, params, (e, r)=>{
        if(e) throw e

        return r.rows
    })
}

const insert = (query, params) => {
    pool.query(query, params, (e, r)=>{
        if(e) throw e

        return 1
    })
}

const update = (query, params) => {
    pool.query(query, params, (e, r)=>{
        if(e) throw e

        return 1
    })
}

const updateDelete = (query, params) => {
    pool.query(query, params, (e, r)=>{
        if(e) throw e

        return 1
    })
}

module.exports = {select, insert, update, updateDelete}