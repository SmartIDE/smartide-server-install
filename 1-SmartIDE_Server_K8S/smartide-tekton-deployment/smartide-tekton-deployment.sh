kubectl apply -f pipeline/v0.32.0/smartide-tekton-release.yaml
kubectl apply -f dashboard/v0.32.0/smartide-tekton-dashboard-release.yaml
sleep 15
kubectl apply -f trigger/v0.18.0/smartide-release.yaml
kubectl apply -f trigger/v0.18.0/smartide-interceptor.yaml
sleep 5
kubectl apply -f smartide-pipeline/aliyun/trigger.yaml
kubectl apply -f smartide-pipeline/aliyun/trigger-template.yaml
kubectl apply -f smartide-pipeline/aliyun/trigger-binding.yaml
kubectl apply -f smartide-pipeline/aliyun/trigger-event-listener.yaml
sleep 5
kubectl apply -f smartide-pipeline/aliyun/task-smartide-cli-release.yaml
kubectl apply -f smartide-pipeline/aliyun/pipeline-smartide-cli.yaml