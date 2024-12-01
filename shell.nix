{ pkgs ? import <nixpkgs> { } }:
let
 # choose the ocaml version you want to use
 ocamlPackages = pkgs.ocaml-ng.ocamlPackages_5_2;
in
pkgs.mkShell {
  # build tools
    nativeBuildInputs = with ocamlPackages; [ 
      ocaml
      findlib
      dune_3
      ocaml-lsp
    ];
  # dependencies
    buildInputs = with ocamlPackages; [ 
      bisect_ppx
      findlib
      menhir
      ocaml-lsp
      ocamlformat
      ocamlgraph
      odoc
      ounit2
      re
      utop
    ];
}
