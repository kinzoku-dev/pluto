{pkgs, ...}: {
  config.vim = {
    extraPlugins = with pkgs.vimPlugins; {
      oil = {
        package = oil-nvim;
        after = [
          "mini-icons"
        ];
        setup = ''
          require('oil').setup()
        '';
      };
      mini-icons = {
        package = mini-icons;
      };
    };
    maps = {
      normal = {
        "<leader>op" = {
          silent = true;
          noremap = true;
          lua = true;
          action = "function() require('oil').toggle_float() end";
        };
      };
    };
  };
}
