"use static";

var blake2 = require('blake2');

exports.blake2bImpl = function(len) {
    return function(msg) {
	      var h = blake2.createHash('blake2b', {digestLength: len});
	      h.update(Buffer.from(msg));
	      return h.digest();
    };
};
