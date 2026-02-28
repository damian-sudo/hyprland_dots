local plugins = {}

local function add(tbl)
    for _, p in ipairs(tbl) do
        table.insert(plugins, p)
    end
end

-- Add all plugin subfiles
add(require("plugins.colorscheme"))
add(require("plugins.dashboard"))
add(require("plugins.indent"))
add(require("plugins.treesitter"))

return plugins
