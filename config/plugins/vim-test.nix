{pkgs, ...}: {
  config.vim = {
    extraPlugins = with pkgs.vimPlugins; {
      vim-test = {
        package = vim-test;
        after = [
          "vimux"
        ];
        setup = ''
          vim.cmd("let test#strategy = 'vimux'")
        '';
      };
      vimux = {
        package = vimux;
      };
    };
    maps.normal = {
      "<leader>Tn" = {
        silent = true;
        noremap = true;
        action = "<cmd>TestNearest<CR>";
      };
      "<leader>Tf" = {
        silent = true;
        noremap = true;
        action = "<cmd>TestFile<CR>";
      };
      "<leader>Ta" = {
        silent = true;
        noremap = true;
        action = "<cmd>TestSuite<CR>";
      };
      "<leader>Tl" = {
        silent = true;
        noremap = true;
        action = "<cmd>TestLast<CR>";
      };
      "<leader>Tg" = {
        silent = true;
        noremap = true;
        action = "<cmd>TestVisit<CR>";
      };
    };
  };
}
