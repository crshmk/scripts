#!/usr/bin/env node
const { argv } = require('process')
const { exec } = require('child_process')
const { isEmpty } = require('ramda')

const getUrl = require('./getUrl')
const { cyan, red } = require('../logColors')

const repoAlias = argv[2] || 'origin'

const notRemoteError = () => {
  console.log(red, "Error: no remote repo found")
}

const onOpenError = url => {
  console.log(red, `Error: remote url seems incorrect; cannot open ${url}`)
}

const onSuccess = url =>
  console.log(cyan, `opening ${url}`);

const receiveStdOut = (err, remote) => {
  if(err || isEmpty(remote)) {
    notRemoteError()
    return
  }
  const url = getUrl(remote)
  exec(`open ${url}`, (err) => {
    if(err) {
      onOpenError(url)
      return
    }
    onSuccess(url)
  })
}

exec(`git remote get-url ${repoAlias}`, receiveStdOut)
