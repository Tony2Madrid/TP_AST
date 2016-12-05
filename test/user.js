var should = require('should');
var user = require('../src/user.js');

describe('my first test list', function() {
  it('should get a user w/ right parameters', function(done) {
    // do smth user
    user.get("test_list", function(res) {
      res.should.equal("test_list");
      done();
    });
  });
});