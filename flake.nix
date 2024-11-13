{
  inputs.nixpkgs.url = "github:nixos/nixpkgs";

  outputs = { self, nixpkgs }:
    let
      pkgs = import nixpkgs { system = "x86_64-linux"; };
    in
    {
      devShells.x86_64-linux.default = pkgs.mkShell {
        buildInputs = with pkgs; [
          neovim
          ripgrep
        ];

        shellHook = ''
          ln -s "$(pwd)" "$HOME/.config/litevim"
          echo "🎉 Welcome to your LiteVim dev shell! 🎉"
          echo "⚡ Neovim and ripgrep are ready to go! ⚡"
          echo "🚀 Syncing your plugins and preparing for an awesome coding session..."
          nvim --headless +"Lazy! sync" +qa
          echo "🌟 All set up! Get ready to code and enjoy your environment! 🌟"
        '';

        env = {
          NVIM_APPNAME = "litevim";
        };
      };
    };
}
