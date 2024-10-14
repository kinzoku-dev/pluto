{
  config.vim = {
    filetree = {
      neo-tree = {
        enable = true;
        setupOpts = {
          enable_diagnostics = true;
        };
      };
    };
    maps.normal = {
      "<C-n>" = {
        silent = true;
        noremap = true;
        action = "<cmd>Neotree filesystem reveal left toggle<CR>";
      };
      "<leader>nb" = {
        silent = true;
        noremap = true;
        action = "<cmd>Neotree buffers reveal right toggle<CR>";
      };
    };
  };
}
