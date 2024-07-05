--auto paris
return {
  "windwp/nvim-autopairs",
  lazy = true,
  config = function()
    require("nvim-autopairs").setup()
  end,
}
