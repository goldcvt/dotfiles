local null_ls_ok, null_ls = pcall(require, "null-ls")
if not null_ls_ok then
    return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local sources = {
    formatting.prettier.with({
        only_local = "node_modules/.bin",
    }),
}

-- insert into sources only if xo executable is found
-- vim.api.exec_nvim works lamely :(
-- this thing just doesn't work lul
local xo_ok, xo = xpcall(diagnostics.xo.with, debug.debug, {only_local="node_modules/.bin"})
local eslint_ok, eslint = xpcall(diagnostics.eslint.with, debug.debug, {only_local="node_modules/.bin"})

if xo_ok then
    pcall(function()
        local xo_diag = diagnostics.xo.with({
            only_local = "node_modules/.bin",
            extra_args = {"--space", 4}
        })
        table.insert(sources, xo_diag)
    end)
end

if eslint_ok then
    pcall(function()
        local eslint_diag = diagnostics.eslint.with({
        only_local = "node_modules/.bin",
    --        diagnostics_postprocess = function(diagnostic)
        --        diagnostic.severity = vim.diagnostic.severity.WARN
            --end,
        })
        table.insert(sources, eslint_diag)
    end)
end



require("null-ls").setup({
    fallback_severity = vim.diagnostic.severity.WARN,
    sources = sources
});

