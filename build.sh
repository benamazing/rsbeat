export GOPATH=${PWD}/gopath
rm -rf ${GOPATH}
rm -rf vendor
mkdir -p vendor
curl -fsSL "https://github.com/elastic/beats/archive/v5.3.0.tar.gz" -o vendor/beats-v5.3.0.tar.gz
curl -fsSL "https://github.com/garyburd/redigo/archive/v1.6.0.tar.gz" -o vendor/redigo-v1.6.0.tar.gz

mkdir -p ${GOPATH}/src/github.com/elastic
mkdir -p ${GOPATH}/src/github.com/garyburd

tar zxf vendor/beats-v5.3.0.tar.gz -C ${GOPATH}/src/github.com/elastic
mv ${GOPATH}/src/github.com/elastic/beats-5.3.0 ${GOPATH}/src/github.com/elastic/beats

tar zxf vendor/redigo-v1.6.0.tar.gz -C ${GOPATH}/src/github.com/garyburd
mv ${GOPATH}/src/github.com/garyburd/redigo-1.6.0 ${GOPATH}/src/github.com/garyburd/redigo

#go get github.com/elastic/beats/libbeat/beat
#go get github.com/garyburd/redigo/redis

if [ ! -h gopath/src/github.com/benamazing/rsbeat ]; then
    mkdir -p gopath/src/github.com/benamazing
    ln -s ../../../.. gopath/src/github.com/benamazing/rsbeat
fi
go build
rm -rf ${GOPATH}
rm -rf vendor
