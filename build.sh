export GOPATH=${PWD}/gopath
wget https://github.com/elastic/beats/archive/v5.3.0.tar.gz
tar zxf v5.3.0.tar.gz
mkdir -p ${GOPATH}/src/github.com/elastic
mv beats-5.3.0 ${GOPATH}/src/github.com/elastic/
mv ${GOPATH}/src/github.com/elastic/beats-5.3.0 ${GOPATH}/src/github.com/elastic/beats
#go get github.com/elastic/beats/libbeat/beat
go get github.com/garyburd/redigo/redis

if [ ! -h gopath/src/github.com/benamazing/rsbeat ]; then
    mkdir -p gopath/src/github.com/benamazing
    ln -s ../../../.. gopath/src/github.com/benamazing/rsbeat
fi
go build


