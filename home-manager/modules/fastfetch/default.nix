{
programs.fastfetch = {
  enable = true;
  settings = {
    "display" = {
      "separator" = "~";
    };
    "logo" = {
      "source" = "./freieren.txt";
    };
    "modules" = [
      "break"
      {
        "format" = "{user-name}";
        "key" = " ";
        "keyColor" = "blue";
        "type" = "title";
      }
      {
        "format" = "-----------------";
        "type" = "custom";
        }
      {
        "format" = "{pretty-name}";
        "key" = " ";
        "keyColor" = "blue";
        "type" = "os";
      }
      {
        "key" = " ";
        "keyColor" = "blue";
        "type" = "kernel";
      }
      {
        "key" = "󰏗 ";
        "keyColor" = "blue";
        "type" = "packages";
      }
      {
        "key" = " ";
        "keyColor" = "blue";
        "type" = "wm";
      }
      {
        "key" = " ";
        "keyColor" = "blue";
        "type" = "shell";
      }
      {
        "key" = " ";
        "keyColor" = "blue";
        "type" = "terminal";
      }
      {
        "key" = "";
        "keyColor" = "blue";
        "type" = "initsystem";
      }
      {
        "key" = " ";
        "keyColor" = "blue";
        "type" = "memory";
      }
      {
        "key" = "󱦟 ";
        "keyColor" = "blue";
        "text" = "birth_install=$(stat -c %W /); current=$(date +%s); time_progression=$((current - birth_install)); days_difference=$((time_progression / 86400)); echo $days_difference days";
        "type" = "command";
      }
    ];
  };
};
}
