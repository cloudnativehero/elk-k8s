helm repo add elastic https://helm.elastic.co
helm repo update

helm install elk-elasticsearch elastic/elasticsearch -f es-values.yaml --namespace elk --create-namespace
helm install elk-kibana elastic/kibana --namespace elk
helm install elk-logstash elastic/logstash --namespace elk -f ls-values.yaml
helm install elk-filebeat elastic/filebeat -f fb-values.yaml
