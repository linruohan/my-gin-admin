package initialize

import (
	_ "gin-admin/source/example"
	_ "gin-admin/source/system"
)

func init() {
	// do nothing,only import source package so that inits can be registered
}
