local M ={
  'doxnit/cmp-luasnip-choice',
  config = function()
    require('cmp_luasnip_choice').setup({
        auto_open = true, -- Automatically open nvim-cmp on choice node (default: true)
    });
  end,
}
return M
