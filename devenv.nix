{pkgs, ...}: {
  packages = with pkgs; [git tectonic zathura just entr texlivePackages.chktex typstyle];
  languages = {
    typst.enable = true;
    # typst.fontPaths
    # typst.lsp.enable
    # treefmt.config.programs.typstyle.priority
  };
}
