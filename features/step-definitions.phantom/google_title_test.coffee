# How do we ensure World is required?
module.exports = ->
  @World = require('../support.phantom/world.coffee').World

  @Given /^I am not logged in$/, (next)->
    next()

  @When /^I visit google\.com$/, (next)->
    @browser.get('http://google.com', next)

  @Then /^I should see Google in the title$/, (next)->
    @browser.title (err, value)=>
      @expect(value).to.match(/Google/)
      next()
