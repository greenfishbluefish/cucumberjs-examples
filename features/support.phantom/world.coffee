#wd = require 'wd'
#remote = wd.remote()
#chai = require 'chai'

module.exports.World = World = (cb)->
  @browser = require('wd').remote()
  @expect = require('chai').expect

  # run the callback when we are done do cucumber knows we are ready
  @browser.init {browserName: 'phantomjs'}, cb
  return
