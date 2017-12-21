
 - -exc
  - |
    ls -ltr
    apt-get update
    curl https://glide.sh/get | sh
    ls -ltr
    go env
    pwd
    export GOPATH=$PWD/hello-go
    cd hello-go/src/cognizant.com/codeblue
    glide up
    pwd
    cd ..
    cd ..
    echo "START TESTING"
    go test cognizant.com/codeblue/test/
    echo "TEST DONE"
