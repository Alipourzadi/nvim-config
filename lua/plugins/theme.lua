return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    require("tokyonight").setup({
      style = "moon",      -- The theme comes in three styles, `storm`, a darker variant `night` and `day`
      light_style = "day", -- The theme is used when the background is set to light
      transparent = false, -- Enable this to disable setting the background color
      terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
      styles = {
        comments = { italic = false },
        keywords = { italic = false },
        functions = {},
        variables = {},
        sidebars = "dark", -- style for sidebars, see below
        floats = "dark", -- style for floating windows
      },
      day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
      dim_inactive = false, -- dims inactive windows
      lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold
      cache = true,      -- When set to true, the theme will be cached for better performance
      ---@type table<string, boolean|{enabled:boolean}>
      plugins = {
        all = package.loaded.lazy == nil,
        auto = true,
        telescope = true,
      },
    })
    vim.cmd([[colorscheme tokyonight]])
  end,
}
-- return {
--   "catppuccin/nvim",
--   name = "catppuccin",
--   priority = 1000,
--   config = function()
--     require("catppuccin").setup({
--       flavour = "mocha", -- latte, frappe, macchiato, mocha
--       background = {  -- :h background
--         light = "latte",
--         dark = "mocha",
--       },
--       transparent_background = true, -- disables setting the background color.
--       floating_border = true,
--       show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
--       term_colors = true,         -- sets terminal colors (e.g. `g:terminal_color_0`)
--       dim_inactive = {
--         enabled = false,          -- dims the background color of inactive window
--         shade = "dark",
--         percentage = 0.15,        -- percentage of the shade to apply to the inactive window
--       },
--       no_italic = false,          -- Force no italic
--       no_bold = false,            -- Force no bold
--       no_underline = false,       -- Force no underline
--       styles = {                  -- Handles the styles of general hi groups (see `:h highlight-args`):
--         comments = { "italic" },  -- Change the style of comments
--         conditionals = {},
--         loops = {},
--         functions = {},
--         keywords = {},
--         strings = {},
--         variables = {},
--         numbers = {},
--         booleans = {},
--         properties = {},
--         types = {},
--         operators = {},
--         -- miscs = {}, -- Uncomment to turn off hard-coded styles
--       },
--       color_overrides = {},
--       custom_highlights = {},
--       default_integrations = true,
--       integrations = {
--         cmp = {
--           enabled = true,
--           border = {
--             completion = true,
--             documentation = true,
--           },
--         },
--         gitsigns = true,
--         nvimtree = true,
--         treesitter = true,
--         neotree = true,
--         notify = true,
--         alpha = true,
--         fidget = false,
--         indent_blankline = {
--           enabled = true,
--           scope_color = "lavender", -- catppuccin color (eg. `lavender`) Default: text
--           colored_indent_levels = false,
--         },
--         mason = false,
--         native_lsp = {
--           enabled = true,
--           border = true,
--           floating_border = true,
--           virtual_text = {
--             errors = { "italic" },
--             hints = { "italic" },
--             warnings = { "italic" },
--             information = { "italic" },
--             ok = { "italic" },
--           },
--           underlines = {
--             errors = { "underline" },
--             hints = { "underline" },
--             warnings = { "underline" },
--             information = { "underline" },
--             ok = { "underline" },
--           },
--           inlay_hints = {
--             background = true,
--             border = true,
--           },
--         },
--         telescope = {
--           enabled = true,
--         },
--         mini = {
--           enabled = true,
--           indentscope_color = "",
--         },
--         -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
--       },
--     })
--
--     -- setup must be called before loading
--     vim.cmd.colorscheme("catppuccin")
--   end,
-- }
