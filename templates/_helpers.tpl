{{- define "myapp.name" -}}
{{ include "chart.name" . }}
{{- end }}

{{- /* Provide a chart.name helper in case the standard starter templates aren't present. */ -}}
{{- define "chart.name" -}}
{{- .Chart.Name -}}
{{- end -}}

{{- define "myapp.fullname" -}}
{{ .Release.Name }}-{{ include "myapp.name" . }}
{{- end }}