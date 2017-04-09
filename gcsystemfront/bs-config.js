var proxyMiddleware = require('http-proxy-middleware');

module.exports = {
    server: {
        middleware: {
            1: proxyMiddleware('/api', {
                target: 'http://localhost:8081/',
                changeOrigin: true
            })
        }
    }
};