# shinshutsu installation

Please refer to repository [README](https://github.com/EmilRehnberg/shinshutsu) for guidance.

```sh
go get github.com/EmilRehnberg/shinshutsu
go get github.com/mitchellh/go-homedir
go get gopkg.in/yaml.v2
go get github.com/onsi/ginkgo
go get github.com/onsi/gomega
cd $GOPATH/src/github.com/EmilRehnberg/shinshutsu
cd alarmclock
go install
cd ../brewci
go install
cd ../executables/countdown
go install
cd ../shinshutsu
go install
```
