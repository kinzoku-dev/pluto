{pkgs, ...}: {
  config.vim = {
    extraPlugins = with pkgs.vimPlugins; {
      aerial = {
        package = aerial-nvim;
        setup = ''
          require('aerial').setup({
            on_attach = function(bufnr)
              vim.keymap.set('n', '{', '<cmd>AerialPrev<CR>', { buffer = bufnr })
              vim.keymap.set('n', '}', '<cmd>AerialNext<CR>', { buffer = bufnr })
            end
          })
        '';
      };
    };
    maps.normal = {
      "<leader>ae" = {
        action = "<cmd>AerialToggle!<CR>";
        silent = true;
        noremap = true;
      };
    };
  };
}
