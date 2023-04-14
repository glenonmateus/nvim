local ansible_lint = io.open(".ansible-lint")
if ansible_lint then
  io.close(ansible_lint)
  vim.cmd([[autocmd BufRead,BufNewFile *.yaml,*.yml set filetype=yaml.ansible]])
end
