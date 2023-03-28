const getGithubOrBitbucketUrl = require('./getGithubOrBitbucketUrl')
const getGitlabUrl = require('./getGitlabUrl')

const { ifElse, includes } = require('ramda')

const isGitlab = includes('@gitlab.com/')

const getUrl = ifElse(
  isGitlab,
  getGitlabUrl,
  getGithubOrBitbucketUrl
)

module.exports = getUrl
