{
  config.vim = {
    maps = {
      visual = {
        "J" = {
          silent = true;
          action = ":m '>+1<CR>gv=gv";
        };
        "K" = {
          silent = true;
          action = ":m '<-2<CR>gv=gv";
        };
        "<" = {
          silent =true;
          action = "<gv";
        };
        ">" = {
          silent =true;
          action = ">gv";
        };
        "<C-d>" = {
          silent = true;
          action = "<C-d>zz";
        };
        "<C-u>" = {
          silent = true;
          action = "<C-u>zz";
        };
        "<leader>y" = {
          action = "\"+y";
        };
        "<leader>Y" = {
          action = "\"+Y";
        };
        "<leader>D" = {
          action = "\"_d";
        };
      };
      select = {
        "<leader>p" = {
          action = "\"_dP";
        };
      };
      normal = {
        "J" = {
          silent = true;
          action = "mzJ`z";
        };
        "<leader>y" = {
          action = "\"+y";
        };
        "<leader>Y" = {
          action = "\"+Y";
        };
        "<leader>D" = {
          action = "\"_d";
        };
        "n" = {
          action = "nzzzv";
        };
        "N" = {
          action = "Nzzzv";
        };

        "<leader><tab>l" = {
          silent = true;
          action = "<cmd>tablast<cr>";
        };
        "<leader><tab>f" = {
          silent = true;
          action = "<cmd>tabfirst<cr>";
        };
        "<leader><tab><tab>" = {
          silent = true;
          action = "<cmd>tabnew<cr>";
        };
        "<leader><tab>]" = {
          silent = true;
          action = "<cmd>tabnext<cr>";
        };
        "<leader><tab>d" = {
          silent = true;
          action = "<cmd>tabclose<cr>";
        };
        "<leader><tab>[" = {
          silent = true;
          action = "<cmd>tabprevious<cr>";
        };

        "<leader>ww" = {
          silent = true;
          action = "<C-W>p";
        };

      };
    };
  };
}
