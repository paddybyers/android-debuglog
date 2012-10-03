var debuglog = require('debuglog');
console = debuglog;

console.log('Testing console (string)');

debuglog.verbose('Testing verbose (string)');
debuglog.verbose('Testing verbose (number)');
debuglog.verbose(1234);
debuglog.verbose('Testing verbose (function)');
debuglog.verbose(function(){});
debuglog.verbose('Testing verbose (array)');
debuglog.verbose([1,2,3]);
debuglog.verbose('Testing verbose (object)');
debuglog.verbose({});
debuglog.log('Testing log');
debuglog.error('Testing err');

