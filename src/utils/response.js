const constant = require('./constants')

const responseSuccess = (res, data) => {
    return res.status(constant.http.OK.code).json(constant.http.OK,{'data': data })
}

const responseUnauthorized = (res, mjs) => {
    constant.http.UNAUTHORIZED.desc = mjs
    return res.status(constant.http.UNAUTHORIZED.code).json({'errors': constant.http.UNAUTHORIZED})
}

const responseFailed = (res, mjs) =>{
    constant.http.FAILED.desc = mjs
    return res.status(constant.http.FAILED.code).json({'errors': constant.http.FAILED})
}

module.exports = {
    responseSuccess,
    responseUnauthorized,
    responseFailed
}