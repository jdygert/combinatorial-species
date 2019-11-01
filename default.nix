{ pkgs ? import <nixpkgs> { } }:

with pkgs;

stdenv.mkDerivation {
  name = "species";
  src = ./.;
  buildInputs = [
    latexrun
    (python37.withPackages (ps: with ps; [ pygments ]))
    which
    (texlive.combine {
      inherit (texlive)
        scheme-basic l3kernel l3packages biber biblatex braket csquotes cm-super
        ec etoolbox logreq needspace mdframed physics;
    })
  ];
}
