{pkgs, ...}: {
  config.vim = {
    extraPlugins = with pkgs.vimPlugins; {
      vim-tmux-navigator = {
        package = vim-tmux-navigator;
        setup = ''
          vim.keymap.set("n", "<C-h>", "<cmd><C-U>TmuxNavigateLeft<cr>")
          vim.keymap.set("n", "<C-j>", "<cmd><C-U>TmuxNavigateDown<cr>")
          vim.keymap.set("n", "<C-k>", "<cmd><C-U>TmuxNavigateUp<cr>")
          vim.keymap.set("n", "<C-l>", "<cmd><C-U>TmuxNavigateRight<cr>")
          vim.keymap.set("n", "<C-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>")
        '';
      };
    };
  };
}
