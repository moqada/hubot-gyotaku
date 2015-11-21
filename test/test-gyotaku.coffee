Helper = require 'hubot-test-helper'
assert = require 'power-assert'

describe 'gyotaku', ->
  room = null

  beforeEach ->
    helper = new Helper('../src/scripts/gyotaku.coffee')
    room = helper.createRoom()

  afterEach ->
    room.destroy()

  it 'help', ->
    helps = room.robot.helpCommands()
    assert.deepEqual helps, [
      'hubot gyotaku <URL> - Create new GYOTAKU.'
      'hubot gyotaku [list|ls] <URL> - List GYOTAKU for URL.'
      'hubot gyotaku [take|new] <URL> - Create new GYOTAKU.'
    ]
