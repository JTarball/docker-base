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
	[utc]=1
)
