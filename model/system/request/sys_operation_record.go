package request

import (
	"gin-admin/model/common/request"
	"gin-admin/model/system"
)

type SysOperationRecordSearch struct {
	system.SysOperationRecord
	request.PageInfo
}
