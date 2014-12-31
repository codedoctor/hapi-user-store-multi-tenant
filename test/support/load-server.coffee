index = require '../../lib/index'
Hapi = require "hapi"
_ = require 'underscore'

module.exports = loadServer = (cb) ->
    server = new Hapi.Server()
    server.connection
      port: 5675
      host: "localhost"

    pluginConf = [
        register: index
    ]

    server.register pluginConf, (err) ->
      cb err,server