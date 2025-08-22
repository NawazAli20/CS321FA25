#!/usr/bin/env bash
set -euo pipefail
make

check () {
  name="$1"
  expected="Hello, ${name}, welcome to CS321 class."
  got="$(echo "$name" | ./hello)"
  if [[ "$got" != "$expected" ]]; then
    echo "FAIL: name='$name'"
    echo " expected: '$expected'"
    echo " got     : '$got'"
    exit 1
  else
    echo "PASS: $name"
  fi
}

check "Nawaz"
check "Alice"
check "Mary Jane"
echo "All local checks passed."
