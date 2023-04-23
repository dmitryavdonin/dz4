dependency-build:
	@cd app-chart && helm dependency build
app:
	@cd app-chart && helm install app . -f values.yaml


remove:
	@helm uninstall app

grafana-forward:
	@kubectl port-forward service/app-grafana 9001:80

prometheus-forward:
	@kubectl port-forward service/prometheus-operated 9091:9090	

loadtest-run:
	@load.cmd