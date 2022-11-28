local mason_status, mason = pcall(require, "mason")
if not mason_status then
	return
end

local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
	return
end

local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_status then
	return
end

mason.setup()
mason_lspconfig.setup({
	ensure_installed = {
		"ansiblels",
		"dockerls",
		"html",
		"sumneko_lua",
		"marksman",
		"intelephense",
		"terraformls",
		"tflint",
		"sqlls",
		"jedi_language_server",
		"pylsp",
		"bashls",
	},
	-- auto-install configured servers (with lspconfig)
	automatic_installation = true, -- not the same as ensure_installed
})

mason_null_ls.setup({
	ensure_installed = {
		"prettier",
		"stylua",
		"hadolint",
		"gitlint",
		"phpcbf",
		"autopep8",
		"flake8",
		"pylint",
		"shellcheck",
		"sqlfluff",
		"actionlint",
	},
	-- auto-install configured formatters and linters (with null-ls)
	automatic_installation = true,
})
