local ipairs = ipairs
local math = math
local tag = require("awful.tag")

module("fixedw")

local function fixedw(p, fixed_width)
	local wa = p.workarea
	local cls = p.clients

	local max_fixed = math.floor(wa.width / fixed_width)
	local remainder_width = wa.width - max_fixed*fixed_width
	local remainder_height = wa.height / (#cls - max_fixed)

	for k, c in ipairs(cls) do
		local g = {}

		if (k <= max_fixed) then
			g.width = fixed_width
			g.height = wa.height
			g.x = wa.x + (k-1) * fixed_width
			g.y = wa.y
		else
			g.width = remainder_width
			g.height = remainder_height
			g.x = wa.x + max_fixed * fixed_width
			g.y = wa.y + (k - max_fixed - 1) * remainder_height
		end

		c:geometry(g)
	end
end

name = "fixedw"
function arrange(p)
	local w = p.workarea.width
	local f = tag.getmwfact(tag.selected(p.screen))
	return fixedw(p, w*f)
end
