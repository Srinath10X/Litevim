-- Buffer line
return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  opts = {
    options = {
      indicator = { style = "icon", icon = "" },
      buffer_close_icon = "",
      modified_icon = "●",
      close_icon = "",
      left_trunc_marker = "",
      right_trunc_marker = "",
      always_show_bufferline = true,
      offsets = { { filetype = "NvimTree", text = " 󰉋  Explorer", text_align = "center" } },
      max_name_length = 30,
      max_prefix_length = 30, -- prefix used when a buffer is de-duplicated
      tab_size = 20,
    },
  },
}
