{
  config.vim = {
    viAlias = true;
    vimAlias = true;
    lineNumberMode = "relNumber";
    enableEditorconfig = true;
    useSystemClipboard = true;
    autopairs.enable = true;
    autocomplete.enable = true;
    theme = {
      enable = true;
      name = "catppuccin";
      style = "mocha";
    };
    tabWidth = 2;
    options = {
      # set tabs to 2 spaces
      tabstop = 2;
      softtabstop = 2;
      showtabline = 2;
      expandtab = true;

      # enable auto intending and set it to spaces
      smartindent = true;
      shiftwidth = 2;

      # enable smart indenting
      breakindent = true;

      # enable incremental searching
      hlsearch = true;
      incsearch = true;

      # enable text wrap
      wrap = true;

      # better splitting
      splitbelow = true;
      splitright = true;

      # enable ignorecase + smartcase for better searching
      ignorecase = true;
      smartcase = true; # don't ignore case with capitals
      grepprg = "rg --vimgrep";
      grepformat = "%f:%l:%c:%m";

      # decrease updatetime
      updatetime = 50;

      # set completeopt
      completeopt = "menuone,noselect,noinsert";

      # enable persistent undo directory
      swapfile = false;
      backup = false;
      undofile = true;

      # enable termguicolors
      termguicolors = true;

      # enable sign column
      signcolumn = "yes";

      # set folding options
      foldcolumn = "0";
      foldlevel = 99;
      foldlevelstart = 99;
      foldenable = false;

      # always keep 8 lines above/below cursor
      scrolloff = 8;

      # reduce which-key timeout
      timeoutlen = 10;

      # set encoding type
      encoding = "utf-8";
      fileencoding = "utf-8";

      # more space in cmdline
      cmdheight = 2;
    };
  };
}
