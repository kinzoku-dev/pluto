{pkgs, ...}: {
  config.vim = {
    languages = {
      rust = {
        enable = true;
        crates.enable = true;
        dap.enable = true;
        format.enable = true;
        lsp.enable = true;
        treesitter.enable = true;
      };
      sql = {
        enable = true;
        extraDiagnostics.enable = true;
        format.enable = true;
        lsp.enable = true;
        treesitter.enable = true;
      };
      go = {
        enable = true;
        dap.enable = true;
        lsp.enable = true;
        treesitter.enable = true;
      };
      html = {
        enable = true;
        treesitter = {
          enable = true;
          autotagHtml = true;
        };
      };
      lua = {
        enable = true;
        lsp = {
          enable = true;
          neodev.enable = true;
        };
        treesitter.enable = true;
      };
      markdown = {
        enable = true;
        format = {
          enable = true;
          extraFiletypes = ["mdx"];
        };
        lsp.enable = true;
        treesitter.enable = true;
      };
      nix = {
        enable = true;
        extraDiagnostics.enable = true;
        format = {
          enable = true;
          package = pkgs.nixfmt-rfc-style;
        };
        lsp.enable = true;
        treesitter.enable = true;
      };
      tailwind = {
        enable = true;
        lsp.enable = true;
      };
      terraform = {
        enable = true;
        lsp.enable = true;
        treesitter.enable = true;
      };
      ts = {
        enable = true;
        extraDiagnostics.enable = true;
        format.enable = true;
        lsp.enable = true;
        treesitter.enable = true;
      };
    };
  };
}
