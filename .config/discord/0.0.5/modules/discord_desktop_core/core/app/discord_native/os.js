'use strict';

var os = require('os');
var process = require('process');

var arch = os.arch();
if (process.platform === 'win32' && process.env['PROCESSOR_ARCHITEW6432'] != null) {
  arch = 'x64';
}

module.exports = {
  release: os.release(),
  arch: arch
};