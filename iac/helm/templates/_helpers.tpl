{{- define "go-service.name" -}}
{{ .Chart.Name }}
{{- end }}

{{- define "go-service.fullname" -}}
{{ .Release.Name }}
{{- end }}
