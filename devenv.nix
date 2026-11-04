{pkgs, ...}: {
  packages = with pkgs; [git zathura just typstyle];
  languages.typst.enable = true;
}
