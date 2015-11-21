# Description
#   Take and Listing GYOTAKU by Web GYOTAKU.
#
# Commands:
#   hubot gyotaku <URL> - Create new GYOTAKU.
#   hubot gyotaku [take|new] <URL> - Create new GYOTAKU.
#   hubot gyotaku [list|ls] <URL> - List GYOTAKU for URL.
#
# Configuration:
#   HUBOT_GYOTAKU_TAKE_ERROR_MESSAGE - Set message for error when take GYOTAKU
#   HUBOT_GYOTAKU_LIST_ERROR_MESSAGE - Set message for error when list GYOTAKU
#   HUBOT_GYOTAKU_LIST_ZERO_MESSAGE - Set message for zero urls when list GYOTAKU
#
# Author:
#   moqada <moqada@gmail.com>
Gyotaku = require 'gyotaku'

PREFIX = 'HUBOT_GYOTAKU_'
TAKE_ERROR_MESSAGE = process.env["#{PREFIX}TAKE_ERROR_MESSAGE"] or 'Error'
LIST_ERROR_MESSAGE = process.env["#{PREFIX}LIST_ERROR_MESSAGE"] or 'Error'
LIST_ZERO_MESSAGE = process.env["#{PREFIX}LIST_ZERO_MESSAGE"] or 'No GYOTAKU'


module.exports = (robot) ->

  robot.respond /gyotaku\s+(?:(?:new|take)\s+)?(https?:\/\/[^\s]*)/i, (res) ->
    url = res.match[1]
    new Gyotaku(url).take()
      .then (url) ->
        res.send url
      .catch ->
        res.send TAKE_ERROR_MESSAGE

  robot.respond /gyotaku\s+(?:ls|list)\s+(https?:\/\/[^\s]*)/i, (res) ->
    url = res.match[1]
    new Gyotaku(url).list()
      .then (urls) ->
        if urls.length > 0
          res.send urls.join('\n')
        else
          res.send LIST_ZERO_MESSAGE
      .catch ->
        res.send LIST_ERROR_MESSAGE
