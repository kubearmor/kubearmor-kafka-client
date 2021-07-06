module github.com/kubearmor/kubearmor-kafka-client/common

go 1.15

replace (
	github.com/kubearmor/kubearmor-kafka-client => ../
	github.com/kubearmor/kubearmor-kafka-client/common => ./
)
