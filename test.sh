set -ex

./build.sh
docker run --rm -v $PWD:/tmp -w /tmp -e FIRST_NAME=John -e LAST_NAME=Doe treeder/temple test.erb test.html
