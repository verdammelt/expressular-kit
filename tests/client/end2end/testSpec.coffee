By = protractor.By

describe 'angularjs homepage', ->
  it 'should greet the named user', ->
    browser.get('http://www.angularjs.org')

    element(By.model('yourName')).sendKeys('Julie')

    greeting = element(By.binding('yourName'))

    expect(greeting.getText()).toEqual('Hello Julie!')

