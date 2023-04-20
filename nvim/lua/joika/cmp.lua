-- nvim/lua/user/cmp.lua
--

local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
    return
end

local luasnip = require 'luasnip'

luasnip.config.setup {}

snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },

-- Basic mapping
cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ["<C-p>"] = cmp.mapping.select_prev_item(),
        ["<C-n>"] = cmp.mapping.select_next_item(),
        ["<C-u>"] = cmp.mapping(cmp.mapping.scroll_docs(-1), { "i", "c" }),
        ["<C-d>"] = cmp.mapping(cmp.mapping.scroll_docs(1), { "i", "c" }),
        ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
        ["<C-c>"] = cmp.mapping({
            i = cmp.mapping.abort(),
            c = cmp.mapping.close(),
        }),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        ["<Right>"] = cmp.mapping.confirm({ select = true }),
        ["<TAB>"] = cmp.mapping(function()
            if cmp.visible() then
                cmp.select_next_item()
            end
        end, {
            "i",
            "s",
        }),
        ["<S-TAB>"] = cmp.mapping(function()
            if cmp.visible() then
                cmp.select_prev_item()
            end
        end, {
        "i",
        "s",
    }),
}),

-- Here we choose how the completion window will appear
  formatting = {
    fields = { "kind", "abbr", "menu" },
    format = function(entry, vim_item)
      -- NOTE: order matters
      vim_item.menu = ({
        nvim_lsp = "[LSP]",
        buffer = "[Buffer]",
      })[entry.source.name]
      return vim_item
    end,

  },

-- Here is the place where we can choose our sources, if the cmp is already configured, we can just add it here.
  sources = {
    { name = "nvim_lsp" },
    { name = "buffer" },
  },
  confirm_opts = {
    behavior = cmp.ConfirmBehavior.Replace,
    select = false,
  },
  experimental = {
    ghost_text = true,
  },
})
