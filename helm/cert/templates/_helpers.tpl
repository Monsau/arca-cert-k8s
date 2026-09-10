{{- define "cert.fullname" -}}
{{- default .Chart.Name .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "cert.labels" -}}
app.kubernetes.io/name: {{ include "cert.fullname" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/part-of: arca-suite
app.kubernetes.io/managed-by: helm
{{- end -}}

{{- define "cert.selectorLabels" -}}
app.kubernetes.io/name: {{ include "cert.fullname" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}

{{- define "cert.serviceAccountName" -}}
{{- if .Values.serviceAccount.create -}}
{{- default (include "cert.fullname" .) .Values.serviceAccount.name -}}
{{- else -}}
{{- default "default" .Values.serviceAccount.name -}}
{{- end -}}
{{- end -}}
