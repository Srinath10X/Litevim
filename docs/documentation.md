# Litevim Configuration Documentation

Welcome to the documentation for the Neovim configuration in Litevim. This guide will help you understand and customize your Neovim setup for a seamless and efficient editing experience.

## Table of Contents

1. [File Structure](#file-structure)
2. [Plugins](#plugins)
3. [Key Bindings](#key-bindings)
4. [Customization](#customization)
5. [Themes](#themes)
6. [Troubleshooting](#troubleshooting)

### 1. File Structure <a name="file-structure"></a>

Litevim follows a simple file structure to organize its configuration. The main configuration file is `init.lua`, and additional configurations are separated into folders:

```
├ ~/.config/nvim/
└── init.lua
    └─ lua
        ├── core
        │   ├── keymaps.lua
        │   └── options.lua
        ├── plugins
        │   ├── user.lua
        │   └── ......(other plugins)
        └── lite.lua (lazy plugin installation config)
```

### 2. Plugins <a name="plugins"></a>

Litevim uses a plugin manager to manage plugins efficiently. The main plugin manager used is [Lazy.nvim]("https://github.com/folke/lazy.nvim.git"). Plugins are listed in the `init.vim` file under the "Plugins" section.

To install plugins, launch Neovim and edit the config in the following directory:

```vim
nvim ~/.config/nvim/lua/plugins/user.lua
```

#### **Example**

Edit the user.lua file which install's your plugins

```lua
return {
    ----> Your plugins here
}
```

This will download and install all the specified plugins.

### 3. Key Bindings <a name="key-bindings"></a>

Key bindings in Litevim are organized for ease of use and productivity. Common key bindings include:

- **Leader Key:** The default leader key is set to `<space>`. You can customize it in the `keymaps.lua` file in this path `~/.config/nvim/lua/core/keymaps.lua`.
- **Plugin Shortcuts:** Many plugins come with specific key bindings for their features. Refer to the respective plugin documentation for details.

Key bindings are defined in the `keymaps.lua` file under the "Key Bindings" section.

### 4. Customization <a name="customization"></a>

Litevim is designed to be easily customizable. To tailor Litevim to your preferences, modify the configurations. Common customization options include:

- **Appearance:** Adjust colors, font, and line numbers.
- **Behavior:** Modify tab settings, auto-indentation, and line wrapping.
- **Plugins:** Customize plugin settings and options.

### 5. Themes <a name="themes"></a>

Litevim supports multiple themes to enhance your editing experience. Themes are stored in the `colors` folder. To change the theme, open Neovim and use the following command:

```vim
:colorscheme <theme-name>
```

Replace `<theme-name>` with the name of your preferred theme.

### 6. Troubleshooting <a name="troubleshooting"></a>

If you encounter issues or unexpected behavior, refer to the following troubleshooting steps:

- Check the Neovim logs for error messages.
- Ensure plugins are correctly installed by running `:PlugInstall`.
- Verify the file paths in the configuration match your system.

For additional assistance, you can open an issue on the Litevim GitHub repository.

That's it! Enjoy your customized and efficient Neovim setup with Litevim. Happy coding! 🚀
