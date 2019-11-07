FROM gliderlabs/alpine

RUN apk add --no-cache openssl wget ca-certificates

RUN apk --no-cache add ca-certificates wget && wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub && wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.30-r0/glibc-2.30-r0.apk && apk add glibc-2.30-r0.apk

RUN wget "https://api.bintray.com/content/basespace/BaseSpaceCLI-EarlyAccess-BIN/latest/\$latest/amd64-linux/bs?bt_package=latest" -O /bin/bs

RUN wget "https://api.bintray.com/content/basespace/BaseSpace-Copy-BIN/\$latest/linux/bscp?bt_package=develop" -O /bin/bs-cp

RUN chmod 777 /bin/bs*

