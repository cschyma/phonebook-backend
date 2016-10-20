#!/bin/bash

set -e

dir=$1
if [ -z "$dir" -o ! -d "$dir" ]; then
	echo "Usage: $0 <directory>"
fi

# Run unittests
cd $dir

echo "Running unittests.."

SPECS="spec/app/models/ spec/framework/persistence/memory_spec.rb"
# Run unittests
bundle exec rspec \
--format RspecJunitFormatter \
--out rspec.xml \
$SPECS

echo "done."
