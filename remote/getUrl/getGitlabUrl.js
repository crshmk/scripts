const {
  last,
  pipe,
  prepend,
  split
} = require('ramda')

const getGitlabUrl = pipe(
  split('gitlab.com'),
  last,
  prepend('https://gitlab.com')
)

module.exports = getGitlabUrl
