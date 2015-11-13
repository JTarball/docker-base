#!/bin/bash
set -e

globalTests+=(
	gmt
	postgres
	python
)

testAlias+=(

)

imageTests+=(

)

globalExcludeTests+=(
	[docker-base_utc]=1
)
