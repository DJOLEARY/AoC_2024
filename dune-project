(lang dune 3.16)

(name AoC_2024)

(generate_opam_files true)

(source
 (github DJOLEARY/AoC_2024))

(authors "D.J. O'Leary")

(maintainers "D.J. O'Leary")

(license MIT)

(documentation https://github.com/DJOLEARY/AoC_2024/blob/main/README.md)

(package
 (name AoC_2024)
 (synopsis "Advent of Code 2024")
 (description "Solutions to the Advent of Code puzzles for 2024")
 (depends ocaml dune)
 (tags
  (aoc2024 "Advent of Code 2024")))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/reference/dune-project/index.html
