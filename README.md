# Litevim 🌿

Litevim 🚀: A lightweight, easily configurable Neovim setup for a swift and clean editing experience. Tailor your themes 🎨, master languages 🚀, all in a user-friendly, minimalistic package.

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

### Installation

### For Linux/Macos

1. Clone the Litevim repository to your local machine:

```bash
git clone https://github.com/Srinath/Litevim ~/.config/nvim --depth 1 && nvim
```

2. Navigate to the Litevim directory:

```bash
cd Litevim
```

3. Copy the configuration files to your Neovim configuration directory:

```bash
cp -r * ~/.config/nvim/
```

4. Launch Neovim, and Litevim will automatically set up the plugins and configurations.

### For Windows

1. Clone the Litevim repository to your local machine:

```bash
git clone https://github.com/Srinath/Litevim $HOME\AppData\Local\nvim --depth 1 && nvim
```

## Customization 🎨

Litevim is designed to be easily customizable. You can modify the configuration files in `~/.config/nvim/` to tailor Litevim to your preferences. Feel free to explore and adjust settings based on your needs.

## Themes 🌈

Litevim comes with a selection of themes to choose from. To change the theme, open Neovim and use the following command:

```vim
:colorscheme <theme-name>
```

Replace `<theme-name>` with the name of your preferred theme.

## Contributing 🤝

Contributions are welcome! If you have any ideas, improvements, or bug fixes, feel free to open an issue or submit a pull request.

## License 📝

Litevim is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments 🙏

Litevim is built upon the efforts of the Neovim community and various plugin authors. We extend our gratitude to them for their contributions.

Happy Coding! 🚀
