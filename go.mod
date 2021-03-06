module github.com/dejavuzhou/felix

go 1.12

replace (
	cloud.google.com/go => github.com/googleapis/google-cloud-go v0.37.2
	go.opencensus.io => github.com/census-instrumentation/opencensus-go v0.20.0
	go.uber.org/atomic => github.com/uber-go/atomic v1.3.2
	go.uber.org/multierr => github.com/uber-go/multierr v1.1.0
	go.uber.org/zap => github.com/uber-go/zap v1.9.1
	golang.org/x/build => github.com/golang/build v0.0.0-20190403045414-85a73d7451e7

	golang.org/x/crypto => github.com/golang/crypto v0.0.0-20190325154230-a5d413f7728c
	golang.org/x/exp => github.com/golang/exp v0.0.0-20190402192236-7fd597ecf556
	golang.org/x/image => github.com/golang/image v0.0.0-20190321063152-3fc05d484e9f
	golang.org/x/lint => github.com/golang/lint v0.0.0-20190313153728-d0100b6bd8b3
	golang.org/x/mobile => github.com/golang/mobile v0.0.0-20190327163128-167ebed0ec6d
	golang.org/x/net => github.com/golang/net v0.0.0-20190328230028-74de082e2cca
	golang.org/x/oauth2 => github.com/golang/oauth2 v0.0.0-20190402181905-9f3314589c9a
	golang.org/x/perf => github.com/golang/perf v0.0.0-20190312170614-0655857e383f
	golang.org/x/sync => github.com/golang/sync v0.0.0-20190227155943-e225da77a7e6
	golang.org/x/sys => github.com/golang/sys v0.0.0-20190402142545-baf5eb976a8c
	golang.org/x/text => github.com/golang/text v0.3.0
	golang.org/x/time => github.com/golang/time v0.0.0-20190308202827-9d24e82272b4
	golang.org/x/tools => github.com/golang/tools v0.0.0-20190402200628-202502a5a924
	google.golang.org/api => github.com/googleapis/google-api-go-client v0.3.0
	google.golang.org/appengine => github.com/golang/appengine v1.5.0
	google.golang.org/genproto => github.com/google/go-genproto v0.0.0-20190401181712-f467c93bbac2
	google.golang.org/grpc => github.com/grpc/grpc-go v1.19.1
	gopkg.in/alecthomas/kingpin.v2 => github.com/alecthomas/kingpin v2.2.6+incompatible
	gopkg.in/mgo.v2 => github.com/go-mgo/mgo v0.0.0-20180705113738-7446a0344b78
	gopkg.in/tomb.v1 => github.com/go-tomb/tomb v0.0.0-20141024135613-dd632973f1e7
	gopkg.in/vmihailenco/msgpack.v2 => github.com/vmihailenco/msgpack v4.0.4+incompatible
	gopkg.in/yaml.v2 => github.com/go-yaml/yaml v2.1.0+incompatible
	labix.org/v2/mgo => github.com/go-mgo/mgo v0.0.0-20180705113738-7446a0344b78
	launchpad.net/gocheck => github.com/go-check/check v0.0.0-20180628173108-788fd7840127
)

require (
	github.com/abiosoft/ishell v2.0.0+incompatible
	github.com/abiosoft/readline v0.0.0-20180607040430-155bce2042db // indirect
	github.com/chzyer/logex v1.1.10 // indirect
	github.com/chzyer/test v0.0.0-20180213035817-a1ea475d72b1 // indirect
	github.com/denisenkom/go-mssqldb v0.0.0-20190401154936-ce35bd87d4b3 // indirect
	github.com/dgrijalva/jwt-go v3.2.0+incompatible
	github.com/erikstmartin/go-testdb v0.0.0-20160219214506-8d10e4a1bae5 // indirect
	github.com/fatih/color v1.7.0
	github.com/flynn-archive/go-shlex v0.0.0-20150515145356-3f9db97f8568 // indirect
	github.com/gin-contrib/cors v0.0.0-20190301062745-f9e10995c85a
	github.com/gin-contrib/static v0.0.0-20190301062546-ed515893e96b
	github.com/gin-gonic/autotls v0.0.0-20190119125636-0b5f4fc15768
	github.com/gin-gonic/gin v1.3.0
	github.com/go-redis/redis v6.15.2+incompatible
	github.com/go-sql-driver/mysql v1.4.1
	github.com/gofrs/uuid v3.2.0+incompatible // indirect
	github.com/gorilla/mux v1.7.0
	github.com/gorilla/websocket v1.4.0
	github.com/iancoleman/strcase v0.0.0-20180726023541-3605ed457bf7
	github.com/inconshreveable/mousetrap v1.0.0 // indirect
	github.com/jinzhu/gorm v1.9.2
	github.com/jinzhu/inflection v0.0.0-20180308033659-04140366298a
	github.com/jinzhu/now v1.0.0 // indirect
	github.com/johntdyer/slack-go v0.0.0-20180213144715-95fac1160b22 // indirect
	github.com/johntdyer/slackrus v0.0.0-20180518184837-f7aae3243a07
	github.com/kr/fs v0.1.0 // indirect
	github.com/kr/pretty v0.1.0 // indirect
	github.com/lib/pq v1.0.0 // indirect
	github.com/mattn/go-colorable v0.1.1 // indirect
	github.com/mattn/go-isatty v0.0.7
	github.com/mattn/go-runewidth v0.0.4 // indirect
	github.com/mattn/go-sqlite3 v1.10.0
	github.com/mitchellh/go-homedir v1.1.0
	github.com/olekukonko/tablewriter v0.0.1
	github.com/onsi/ginkgo v1.8.0 // indirect
	github.com/onsi/gomega v1.5.0 // indirect
	github.com/pkg/errors v0.8.1 // indirect
	github.com/pkg/sftp v1.10.0
	github.com/prometheus/common v0.2.0
	github.com/sirupsen/logrus v1.4.1
	github.com/spf13/cobra v0.0.3
	github.com/spf13/viper v1.3.2
	golang.org/x/crypto v0.0.0-20190325154230-a5d413f7728c
	golang.org/x/sys v0.0.0-20190312061237-fead79001313
)
