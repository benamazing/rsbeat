export GOPATH=${PWD}/gopath
#go get github.com/elastic/beats/libbeat/beat
#go get github.com/garyburd/redigo/redis

if [ ! -h gopath/src/github.com/benamazing/rsbeat ]; then
    mkdir -p gopath/src/github.com/benamazing
    ln -s ../../../.. gopath/src/github.com/benamazing/rsbeat
fi
go build
