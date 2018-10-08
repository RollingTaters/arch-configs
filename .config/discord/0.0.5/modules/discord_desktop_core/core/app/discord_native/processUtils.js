'use strict';

var electron = require('electron');
var webFrame = electron.webFrame;
var remoteSession = electron.remote.session;

function flushDNSCache() {
  if (!remoteSession) return;
  var defaultSession = remoteSession.defaultSession;
  if (!defaultSession || !defaultSession.clearHostResolverCache) return;
  defaultSession.clearHostResolverCache();
}

function flushCookies(callback) {
  try {
    remoteSession.defaultSession.cookies.flushStore(callback);
  } catch (err) {
    callback(err);
  }
}

function flushStorageData(callback) {
  try {
    remoteSession.defaultSession.flushStorageData();
  } catch (err) {
    callback(err);
    return;
  }
  callback();
}

function purgeMemory() {
  webFrame.clearCache();
}

module.exports = {
  flushDNSCache: flushDNSCache,
  flushCookies: flushCookies,
  flushStorageData: flushStorageData,
  purgeMemory: purgeMemory
};