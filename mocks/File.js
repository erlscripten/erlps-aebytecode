"use static";

var fs = require("./filemap.json");

exports.readFileImpl = function(makeBinary) {
    return function(enoent) {
	return function(filename) {
	    let file = fs[filename];
	    if(file) return makeBinary(Buffer.from(file));
	    else return enoent;
	}
    }
}
