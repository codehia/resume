{ pkgs, ... }:
{
  packages = with pkgs; [ git tectonic zathura just entr texlivePackages.chktex ];
}
