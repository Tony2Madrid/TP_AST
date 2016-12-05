should = require 'should'
user = require '../src/user.coffee'

describe 'my first test list', () ->
  it 'should get a user w/ right parameters', (done) ->
    # do smth user
    user.get "test_list", (res) ->
      res.should.equal "test_list"
done()