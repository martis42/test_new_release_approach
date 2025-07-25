#!/usr/bin/env bash

set -o errexit -o nounset -o pipefail

# # Set by GH actions, see
# # https://docs.github.com/en/actions/learn-github-actions/environment-variables#default-environment-variables
# readonly TAG=$1
# # The prefix is chosen to match what GitHub generates for source archives.
# # This guarantees that users can easily switch from a released artifact to a source archive
# # with minimal differences in their code (e.g. strip_prefix remains the same)
# readonly PREFIX="depend_on_what_you_use-${TAG}"
# readonly ARCHIVE="${PREFIX}.tar.gz"

# # NB: configuration for 'git archive' is in /.gitattributes
# git archive --format=tar --prefix=${PREFIX}/ ${TAG} | gzip > $ARCHIVE

# cat << EOF
# ## Test

# foo
# EOF

.github/workflows/prepare_release.py --tag $1
