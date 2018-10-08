'use strict';

var electron = require('electron');
var ipcRenderer = electron.ipcRenderer;

// We prefix events with the `DISCORD_` string to prevent malicious use
function send(event) {
  for (var _len = arguments.length, args = Array(_len > 1 ? _len - 1 : 0), _key = 1; _key < _len; _key++) {
    args[_key - 1] = arguments[_key];
  }

  ipcRenderer.send.apply(ipcRenderer, ['DISCORD_' + event].concat(args));
}

function on(event, callback) {
  ipcRenderer.on('DISCORD_' + event, callback);
}

function removeListener(event, callback) {
  ipcRenderer.removeListener('DISCORD_' + event, callback);
}

module.exports = {
  send: send,
  on: on,
  removeListener: removeListener
};