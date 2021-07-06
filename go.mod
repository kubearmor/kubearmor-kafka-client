module github.com/kubearmor/kubearmor-kafka-client

go 1.15

replace (
	github.com/kubearmor/kubearmor-kafka-client => ./
	github.com/kubearmor/kubearmor-kafka-client/common => ./common
	github.com/kubearmor/kubearmor-kafka-client/core => ./core
)

require (
	github.com/confluentinc/confluent-kafka-go v1.7.0 // indirect
	github.com/kubearmor/KubeArmor/protobuf v0.0.0-20210706103022-a88ee52bbf8a // indirect
	github.com/kubearmor/kubearmor-kafka-client/common v0.0.0-00010101000000-000000000000 // indirect
	github.com/kubearmor/kubearmor-kafka-client/core v0.0.0-00010101000000-000000000000
	google.golang.org/grpc v1.35.0 // indirect
	gopkg.in/confluentinc/confluent-kafka-go.v1 v1.7.0 // indirect
)
