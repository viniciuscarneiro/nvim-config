return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- ícones de arquivos
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.keymap.set('n', '<C-n>',  ':Neotree filesystem reveal left<CR>', {})    
    require("neo-tree").setup({
      window = {
        width = 30,
        mappings = {
          ["<space>"] = "none", -- libera o espaço dentro do NeoTree
        },
      },
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false,
        },
      },
    })
-- Fechar Neo-tree quando abrir um arquivo
      -- vim.api.nvim_create_autocmd("BufEnter", {
      --   pattern = "*",
      --   callback = function()
      --     if vim.bo.filetype ~= "neo-tree" then
      --       vim.cmd("Neotree close")
      --     end
      --   end,
      -- })
  end,
}
