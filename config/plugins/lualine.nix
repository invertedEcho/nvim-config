{
  plugins.lualine = {
    enable = true;
    settings = {
      options = {
        section_separators = "";
        component_separators = "";
        theme = "gruvbox_dark";
      };
      sections = {
        lualine_a = ["mode"];
        lualine_b = ["branch" "diagnostics"];
        lualine_c = [
          {
            __unkeyed-1 = "filename";
            path = 1;
          }
        ];
        lualine_x = ["filetype"];
        lualine_y = ["progress"];
        lualine_z = ["location"];
      };
    };
  };
}
