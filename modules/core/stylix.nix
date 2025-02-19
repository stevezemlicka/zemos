{
  pkgs,
  ...
}:

{
  # Styling Options
  stylix = {
    enable = true;
    image = ../../wallpapers/retro-pc-keys.jpg;
    base16Scheme = {
      base00 = "282828";
      base01 = "3c3836";
      base02 = "504945";
      base03 = "665c54";
      base04 = "458588";
      base05 = "ebdbb2";
      base06 = "a89984";
      base07 = "fbf1c7";
      base08 = "fe8019";
      base09 = "d65d0e";
      base0A = "98971a";
      base0B = "fabd2f";
      base0C = "689d6a";
      base0D = "83a598";
      base0E = "b16286";
      base0F = "b8bb26";
    };
    polarity = "dark";
    opacity.terminal = 0.8;
    cursor.package = pkgs.capitaine-cursors-themed;
    cursor.name = "Capitaine Cursors (Gruvbox) - White";
    cursor.size = 24;
    fonts = {
      monospace = {
        package = pkgs.nerdfonts.override { fonts = [ "JetBrainsMono" ]; };
        name = "JetBrainsMono Nerd Font Mono";
      };
      sansSerif = {
        package = pkgs.dejavu_fonts;
        name = "DejaVu Sans";
      };
      serif = {
        package = pkgs.dejavu_fonts;
        name = "DejaVu Serif";
      };
      sizes = {
        applications = 12;
        terminal = 11;
        desktop = 11;
        popups = 12;
      };
    };
  };
}
