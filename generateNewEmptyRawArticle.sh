#!/bin/sh
#
#


cd $(cd `dirname $0`; pwd)
java -jar GithubStaticPagesGenerator.jar gonra
