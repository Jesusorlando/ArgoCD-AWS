{{/*
Etiquetas estándar para CloudWatch y organización
*/}}
{{- define "timetrack.labels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
env: {{ .Values.global.env | default "dev" | quote }}
project: {{ .Values.global.project | default "timetrack" | quote }}
owner: {{ .Values.global.owner | default "orlando" | quote }}
{{- end }}

{{/*
Selector labels para unir el Service con los Pods
*/}}
{{- define "timetrack.selectorLabels" -}}
app: {{ .Values.global.app | default "txm-app" }}
{{- end }}