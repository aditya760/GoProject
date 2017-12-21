    #/bin/bash
    #rest of script
    set -e -x
    
    ls -ltr
    apt-get update
    curl https://glide.sh/get | sh
    ls -ltr
    go env
    pwd
    export GOPATH=$PWD/autopcftest
    cd autopcftest/src/cognizant.com/codeblue
    glide up
    pwd
    cd ..
    cd ..
    echo "START TESTING"
    go test cognizant.com/codeblue/test/
    echo "TEST DONE"
