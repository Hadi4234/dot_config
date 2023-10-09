local M = {
  "folke/which-key.nvim",
  commit = "5224c261825263f46f6771f1b644cae33cd06995",
  event = "VeryLazy",
  opts = {
    icons = {
      group = "", -- symbol prepended to a group
    },
  }
}

function M.config(_, opts)
  require("which-key").setup(opts)
local m_opts = {
    mode = "n", -- NORMAL mode
    prefix = "m",
    buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
    silent = true, -- use `silent` when creating keymaps
    noremap = true, -- use `noremap` when creating keymaps
    nowait = true, -- use `nowait` when creating keymaps
  }

  local m_mappings = {
    m = { "<cmd>BookmarkToggle<cr>", "Toggle" },
    j = { "<cmd>BookmarkNext<cr>", "Next" },
    k = { "<cmd>BookmarkPrev<cr>", "Prev" },
    c = { "<cmd>BookmarkClear<cr>", "Clear" },
    l = { "<cmd>BookmarkList<cr>", "List" },
    -- f = { "<cmd>FilemarkToggle<cr>", "Mark File" },
    h = { '<cmd>lua require("harpoon.mark").add_file()<cr>', "Harpoon" },
    -- ["."] = { '<cmd>lua require("harpoon.ui").nav_next()<cr>', "Harpoon Next" },
    -- [","] = { '<cmd>lua require("harpoon.ui").nav_prev()<cr>', "Harpoon Prev" },
    -- l = { "<cmd>lua require('user.bfs').open()<cr>", "Buffers" },
    -- s = { "<cmd>Telescope harpoon marks<cr>", "Search Files" },
    -- s = {
    --   "<cmd>lua require('telescope').extensions.vim_bookmarks.all({ hide_filename=false, prompt_title=\"bookmarks\", shorten_path=false })<cr>",
    --   "Show",
    -- },
    -- [";"] = { '<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>', "Harpoon UI" },
  }

  require("which-key").register(m_mappings, m_opts)
  require("utils.keymaps-helpers").which_key_register()
end

return M
