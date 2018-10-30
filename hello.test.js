const assert = require('assert');
const hello = require('./hello.js');

assert.strictEqual(hello(), 'Hello World! Breaking to check status badge on readme', 'our "Hello World" function works');
