{pkgs, ...}: {
  config.vim = {
    extraPlugins = with pkgs.vimPlugins; {
      arrow = {
        package = arrow-nvim;
        setup = ''
          require('arrow').setup({
            show_icons = true,
            leader_key = '<leader>;',
            buffer_leader_key = 'm',
          })
        '';
      };
    };
  };
}
