"use static";

var fs = require("filemap.json");

exports.readFileImpl = function(toErlString) {
    return function(enoent) {
	return function(filename) {
	    let file = fs[filename];
	    if(file) return toErlString(file);
	    else return enoent;
	}
    }
}
