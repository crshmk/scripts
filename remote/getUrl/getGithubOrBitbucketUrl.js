const {
  complement,
  includes,
  pipe,
  replace,
  when
} = require('ramda')

const sshToHttp = pipe(
  replace('ssh://', ''),
  replace(':', '/'),
  replace('git@', 'https://'),
)

const isNotHttps = complement(includes('https'))

const getGithubOrBitbucketUrl = when(
  isNotHttps,
  sshToHttp
)

module.exports = getGithubOrBitbucketUrl
