#!/usr/bin/env bash

# Get SOURCE_DIR resolving symbolic links
# http://stackoverflow.com/questions/59895/can-a-bash-script-tell-what-directory-its-stored-in/246128#246128
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  SOURCE_DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  # LP: modified to append path correctly when SOURCE_DIR is "/"
  [[ $SOURCE != /* ]] && SOURCE="${SOURCE_DIR%\/}/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
SOURCE_DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

if [[ ! "$PATH" =~ "$SOURCE_DIR" ]]; then
  export PATH="$SOURCE_DIR:$PATH"
fi

