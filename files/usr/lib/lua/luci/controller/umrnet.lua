module("luci.controller.umrnet", package.seeall)

function index()
	entry({"admin", "umrnet"},
		cbi("umrnet"),
		_("University Internet Settings"), 21).leaf = true
end
