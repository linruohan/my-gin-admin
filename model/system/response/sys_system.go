package response

import "gin-admin/config"

type SysConfigResponse struct {
	Config config.Server `json:"config"`
}
