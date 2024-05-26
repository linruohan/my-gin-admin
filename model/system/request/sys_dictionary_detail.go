package request

import (
	"gin-admin/model/common/request"
	"gin-admin/model/system"
)

type SysDictionaryDetailSearch struct {
	system.SysDictionaryDetail
	request.PageInfo
}
