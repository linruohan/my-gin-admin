package global

{{- if .HasGlobal }}

import "gin-admin/plugin/{{ .Snake}}/config"

var GlobalConfig = new(config.{{ .PlugName}})
{{ end -}}