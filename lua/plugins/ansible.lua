local ansible_lint = io.open(".ansible-lint")
if ansible_lint ~= nil then
  vim.cmd([[autocmd BufRead,BufNewFile *.yaml,*.yml set filetype=yaml.ansible]])
end
