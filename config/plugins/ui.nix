{pkgs, ...}: {
  config.vim = {
    extraPlugins = with pkgs.vimPlugins; {
      nui = {
        package = nui-nvim;
      };
    };
    visuals = {
      nvimWebDevicons.enable = true;
      cursorline = {
        enable = true;
      };
      fidget-nvim = {
        enable = true;
      };
    };
    ui = {
      noice = {
        enable = true;
        setupOpts = {
          notify = {
            enabled = false;
          };
          messages = {
            enabled = true;
          };
          lsp = {
            message = {
              enabled = true;
            };
            progress = {
              enabled = true;
              view = "mini";
            };
          };
          popupmenu = {
            enabled = true;
            backend = "nui";
          };
          format = {
            filter = {
              pattern = [
                ":%s*%%s*s:%s*"
                ":%s*%%s*s!%s*"
                ":%s*%%s*s/%s*"
                "%s*s:%s*"
                ":%s*s!%s*"
                ":%s*s/%s*"
              ];
              icon = "";
              lang = "regex";
            };
            replace = {
              pattern = [
                ":%s*%%s*s:%w*:%s*"
                ":%s*%%s*s!%w*!%s*"
                ":%s*%%s*s/%w*/%s*"
                "%s*s:%w*:%s*"
                ":%s*s!%w*!%s*"
                ":%s*s/%w*/%s*"
              ];
              icon = "󱞪";
              lang = "regex";
            };
          };
        };
      };
    };
  };
}
