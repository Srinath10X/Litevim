# Litevim v0.4.4 🌿

**Litevim 🚀**: A lightweight, easily configurable Neovim setup for a swift and clean editing experience. Tailor your themes 🎨, master languages 🚀, all in a user-friendly, minimalistic package.

## Showcase
![Showcase1](https://i.imgur.com/vQrO1iM.png)
![Showcase2](https://i.imgur.com/E2gPTU9.png)

## Table of Contents

- [Features](#features-)
- [Getting Started](#getting-started-%EF%B8%8F)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
  - [For Linux/Macos](#for-linuxmacos)
  - [For Windows](#for-windows)
- [Plugins](#plugins)
- [Customization](#customization-)
- [Themes](#themes-)
- [Contributing](#contributing-)
- [License](#license-)
- [Acknowledgments](#acknowledgments-)

## Features 🚀

- **Lightweight:** Keep your Neovim setup lean and fast, ensuring a responsive editing environment.
- **Easily Configurable:** Customize Litevim to suit your preferences with minimal effort. The configuration is designed to be accessible and straightforward.
- **User-Friendly:** Enjoy a hassle-free editing experience with a focus on simplicity and ease of use.
- **Theme Customization:** Personalize your editing environment by choosing from a variety of themes to suit your taste.
- **Language Mastery:** Litevim is built to support a wide range of programming languages, helping you become proficient in your coding endeavors.

## Getting Started 🛠️

### Prerequisites

- Make sure you have Neovim installed on your system. If not, you can install it by following the instructions on the [Neovim website](https://neovim.io/).
- Make sure you have git installed on your system.
- Nerd Font as your terminal font ( **nerd font you set doesn't end with Mono to prevent small icons** ).
- Windows users must have `mingw` installed and set on path.
- Ripgrep is required for grep searching with Telescope (**OPTIONAL**).
- Nodejs or yarn for installing lsp's

### Installation

### For Linux/Macos

Clone the Litevim repository to your local machine: (make sure you have `git` installed)

```bash
git clone https://github.com/Srinath10X/Litevim.git ~/.config/nvim --depth 1 && nvim
```

### For Windows

Clone the Litevim repository to your local machine: (make sure you have `git` installed)

- If you're using Command Prompt aka `CMD`

```bash
git clone https://github.com/Srinath10X/Litevim.git %USERPROFILE%\AppData\Local\nvim --depth 1 && nvim
```

- And for PowerShell aka `pwsh` you can use the following command 

```bash
git clone https://github.com/Srinath10X/Litevim.git $ENV:USERPROFILE\AppData\Local\nvim && nvim
```

# Plugins

Litevim uses a carefully selected set of plugins to enhance the Neovim editing experience. The plugins are managed using the lazy.nvim plugin manager. Follow the steps below to manage plugins in Litevim.Here is the list of <a href="./docs/plugins.md">pluings</a> used.

## Customization 🎨

Litevim is designed to be easily customizable. You can modify the configuration files in `~/.config/nvim/` to tailor Litevim to your preferences. Feel free to explore and adjust settings based on your needs.

## Themes 🌈

Litevim comes with a selection of themes to choose from. To change the theme, open Neovim and use the following command:

```vim
:colorscheme <theme-name>
```

Replace `<theme-name>` with the name of your preferred theme.
Or use the keybinding `<leader>th` to select the colorscheme by using telescope

## Contributing 🤝

Contributions are welcome! If you have any ideas, improvements, or bug fixes, feel free to open an issue or submit a pull request.

## License 📝

Litevim is licensed under the GPL3 License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments 🙏

Litevim is built upon the efforts of the Neovim community and various plugin authors. We extend our gratitude to them for their contributions.

Happy Coding! 🚀
