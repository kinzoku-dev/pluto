{
  config.vim = {
    tabline.nvimBufferline = {
      enable = true;
      mappings = {
        cycleNext = "<Tab>";
        cyclePrevious = "<S-Tab>";
        closeCurrent = "<C-x>";
        pick = "<leader>bp";
        moveNext = "<leader>b<Tab>";
        movePrevious = "<leader>b<S-Tab>";
      };
      setupOpts = {
        options = {
          buffer_close_icon = "";
          close_icon = "";
          separator_style = "thick";
          offsets = [
            {
              filetype = "neo-tree";
              text = "Neo-tree";
              highlight = "Directory";
              text_align = "left";
            }
          ];
          diagnostics_indicator = {
            _type = "lua-inline";
            expr = ''
              function(count, level, diagnostics_dict, context)
                local s = " "
                for e, n in pairs (diagnostics_dict) do
                  local sym = context.buffer:current() and ""
                    or (
                      e == "error" and "  "
                        or (e == "warning" and "  " or "  ")
                    )
                  s = s .. n .. sym
                end
                return s
              end
            '';
          };
          numbers = "none";
        };
      };
    };
    maps.normal = {
      "<leader>bt" = {
        action = "<cmd>BufferLineTogglePin<cr>";
        desc = "Toggle current buffer as pinned";
      };
      "<leader>bb" = {
        action = "<cmd>e #<cr>";
        desc = "Go to last visited buffer";
      };
      "<leader>bf" = {
        action = "<cmd>BufferLineGoToBuffer 1<cr>";
        desc = "Go to first buffer";
      };
      "<leader>br" = {
        action = "<cmd>BufferLineCloseRight<cr>";
        desc = "Close all buffers to the right";
      };
      "<leader>bl" = {
        action = "<cmd>BufferLineCloseLeft<cr>";
        desc = "Close all buffers to the left";
      };
      "<leader>bo" = {
        action = "<cmd>BufferLineCloseOthers<cr>";
        desc = "Close all other buffers";
      };
      "<leader>bP" = {
        action = "<cmd>BufferLineGroupClose ungrouped<cr>";
        desc = "Delete non-pinned buffers";
      };
    };
  };
}
