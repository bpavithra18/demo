{{- define "hello-k8s.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "hello-k8s.fullname" -}}
{{- printf "%s-%s" (include "hello-k8s.name" .) .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
