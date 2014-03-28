app = require '../../../app/app.coffee'
#By = protractor.By

describe 'The App', ->
  it "mentions coffee", ->
    browser.get('/')
    greeting = element(By.id('greeting'))
    expect(greeting.getText()).toContain('Coffee')

