return {
  -----------------------------------------------------------------------------
  -- 1. LEETCODE.NVIM
  -- The plugin you requested.
  -- Note: We explicitly add Telescope as a dependency because LazyVim
  -- might not have it installed by default (it uses Snacks/FZF now).
  -----------------------------------------------------------------------------
  {
    "kawre/leetcode.nvim",
    build = ":TSUpdate html", -- Ensures the question description renders correctly
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    },
    lazy = "leetcode.nvim" ~= vim.fn.argv()[1],
    opts = {
      arg = "leetcode.nvim",
      lang = "python3", -- Change this to "cpp", "java", "javascript", etc.
      domain = "com", -- Use "cn" if you are in China
      storage = {
        home = vim.fn.expand("~/Documents/Leetcode"),
        cache = vim.fn.stdpath("cache") .. "/leetcode",
      },
    },
  },

  -----------------------------------------------------------------------------
  -- 2. HARPOON (v2)
  -- The most popular file navigation tool.
  -- It lets you "mark" 4-5 frequently used files and jump to them instantly
  -- without searching.
  -----------------------------------------------------------------------------
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      {
        "<leader>A",
        function()
          require("harpoon"):list():add()
        end,
        desc = "Harpoon File",
      },
      {
        "<leader>h",
        function()
          require("harpoon").ui:toggle_quick_menu(require("harpoon"):list())
        end,
        desc = "Harpoon Menu",
      },
      -- Quick jump keys (Leader + 1, 2, 3, 4)
      {
        "<leader>1",
        function()
          require("harpoon"):list():select(1)
        end,
        desc = "Harpoon 1",
      },
      {
        "<leader>2",
        function()
          require("harpoon"):list():select(2)
        end,
        desc = "Harpoon 2",
      },
      {
        "<leader>3",
        function()
          require("harpoon"):list():select(3)
        end,
        desc = "Harpoon 3",
      },
      {
        "<leader>4",
        function()
          require("harpoon"):list():select(4)
        end,
        desc = "Harpoon 4",
      },
    },
  },

  -----------------------------------------------------------------------------
  -- 3. UNDOTREE
  -- Visualizes your undo history.
  -- Even if you close a file and reopen it later, this remembers your undo
  -- history (persistent undo).
  -----------------------------------------------------------------------------
  {
    "mbbill/undotree",
    keys = {
      { "<leader>ut", "<cmd>UndotreeToggle<cr>", desc = "UndoTree" },
    },
  },

  -----------------------------------------------------------------------------
  -- 4. NVIM-COLORIZER
  -- Highlights hex codes (like #ff0000) with their actual color.
  -- Very useful for CSS, config files, and Tailwind.
  -----------------------------------------------------------------------------
  {
    "NvChad/nvim-colorizer.lua",
    opts = {
      user_default_options = {
        names = false, -- Don't highlight color names like "Blue" (too distracting)
        tailwind = true, -- Enable tailwind colors
      },
    },
  },
}
