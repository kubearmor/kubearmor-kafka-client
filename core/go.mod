module github.com/kubearmor/kubearmor-kafka-client/core

go 1.15

replace (
	github.com/kubearmor/kubearmor-kafka-client => ../
	github.com/kubearmor/kubearmor-kafka-client/core => ./
	github.com/kubearmor/kubearmor-kafka-client/common => ../common
)
