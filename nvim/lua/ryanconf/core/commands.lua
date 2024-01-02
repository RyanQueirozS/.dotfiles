-- found them here https://github.com/NycRat/dotfiles/blob/main/dot_config/nvim/lua/nycrat/commands.lua#LL68C1-L71C9
-- no credits goes to me
local build_commands = {
  c = "!g++ -std=c++17 -o %:p:r.o %",
  cpp = "!g++ -std=c++17 -Wall -O2 -o %:p:r.o %",
  rust = "!cargo build --release",
  go = "!go build",
  -- tex = "pdflatex %",
  tex = "VimtexCompile",
  javascript = "",
}

local debug_build_commands = {
  c = "!g++ -std=c++17 -g -o %:p:r.o %",
  cpp = "!g++ -std=c++17 -g -o %:p:r.o %",
  rust = "!cargo build",
  go = "!go build",
}

local run_commands = {
  c = "%:p:r.o",
  cpp = "%:p:r.o",
  rust = "cargo run --release",
  -- go = "%:p:r.o",
  go = "go run .",
  -- tex = "open %:p:r.pdf",
  tex = "",
  javascript = "node %",
}

vim.api.nvim_create_user_command("Build", function()
  local filetype = vim.bo.filetype

  for file, command in pairs(build_commands) do
    if filetype == file then
      vim.cmd(command)
      break
    end
  end
end, {})

vim.api.nvim_create_user_command("DebugBuild", function()
  local filetype = vim.bo.filetype

  for file, command in pairs(debug_build_commands) do
    if filetype == file then
      vim.cmd(command)
      break
    end
  end
end, {})

vim.api.nvim_create_user_command("Run", function()
  local filetype = vim.bo.filetype

  for file, command in pairs(run_commands) do
    if filetype == file then
      vim.cmd("sp")
      vim.cmd("term " .. command)
      vim.cmd("resize 20N")
      local keys = vim.api.nvim_replace_termcodes("i", true, false, true)
      vim.api.nvim_feedkeys(keys, "n", false)
      break
    end
  end
  end, {})

  vim.api.nvim_create_user_command("BR", function()
  vim.cmd([[Build]])
  vim.cmd([[Run]])
end, {})
