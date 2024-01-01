require('mason').setup()
local mason_ls = { 'clangd' }
local additional_ls = { 'dartls' }

require('mason-lspconfig').setup {
    ensure_installed = mason_ls,
}

local cmp = require('cmp')

cmp.setup {
    snippet = {
        expand = function(args)
            require('snippy').expand_snippet(args.body)
        end,
    },
    mapping = {
        ['<TAB>'] = {
          i = function()
            local cmp = require('cmp')
            local types = require('cmp.types')
            if cmp.visible() then
              cmp.select_next_item({ behavior = types.cmp.SelectBehavior.Insert })
            else
              cmp.complete()
            end
          end,
        },
        ['<S-TAB>'] = {
          i = function()
            local cmp = require('cmp')
            local types = require('cmp.types')
            if cmp.visible() then
              cmp.select_prev_item({ behavior = types.cmp.SelectBehavior.Insert })
            else
              cmp.complete()
            end
          end,
        },
        ["<CR>"] = {
            i = cmp.mapping.confirm({ select = false }),
        }
    },
    sources = cmp.config.sources {
        { name = 'nvim_lsp' },
        { name = 'buffer' },
    }
}

cmp.setup.cmdline(':', {
    sources = cmp.config.sources(
        { { name = 'path' } },
        { { name = 'cmdline' } })
})

local map = function(type, key, value)
    vim.api.nvim_buf_set_keymap(0, type, key, value, { noremap = true, silent = true })
end

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

local custom_attach = function(client)
    map('n','gD','<cmd>lua vim.lsp.buf.declaration()<CR>')
    map('n','gd','<cmd>lua vim.lsp.buf.definition()<CR>')
    map('n','<leader>r','<cmd>lua vim.lsp.buf.rename()<CR>')
    map('n','<leader>a', '<cmd>lua vim.lsp.buf.code_action()<CR>')
    map('n','<leader>d', '<cmd>lua vim.diagnostic.open_float()<CR>')
    map('n','<leader>s', '<cmd>lua vim.lsp.buf.hover()<CR>')
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

function addLists(list1, list2)
    local newList = {}
    for i = 1, #list1 do
        table.insert(newList, list1[i])
    end
    for i = 1, #list2 do
        table.insert(newList, list2[i])
    end
    return newList
end

for _, lsp in ipairs(addLists(mason_ls, additional_ls)) do
    require('lspconfig')[lsp].setup {
        on_attach = custom_attach,
        capabilities = capabilities,
    }
end
