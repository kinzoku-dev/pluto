{
  config.vim = {
    notify = {
      nvim-notify = {
        enable = true;
        setupOpts = {
          background_colour = "#000000";
          timeout = 500;
          position = "top_right";
          render = "default";
        };
      };
    };
    maps.normal = {
      "<leader>un" = {
        silent = true;
        noremap = true;
        lua = true;
        action = "function() require('notify').dismiss({ silent = true, pending = true }) end";
      };
    };
  };
}
