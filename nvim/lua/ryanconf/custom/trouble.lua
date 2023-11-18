vim.keymap.set("n", "<leader>tr", function() require("trouble").open("workspace_diagnostics") end)

-- jump to the next item, skipping the groups
require("trouble").next({ skip_groups = true, jump = true });

-- jump to the previous item, skipping the groups
require("trouble").previous({ skip_groups = true, jump = true });

-- jump to the first item, skipping the groups
require("trouble").first({ skip_groups = true, jump = true });

-- jump to the last item, skipping the groups
require("trouble").last({ skip_groups = true, jump = true });
