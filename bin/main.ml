open AoC_2024

let filename_to_path filename = "./input/" ^ filename

let day_1 =
  let lines = File.Read_input.lines_from_file (filename_to_path "day_01.txt") in
  let (left, right) = Day_01.Part_01.lines_to_lists lines in
  let part_01 = Day_01.Part_01.solve left right in
  print_int part_01 ; print_newline ()

let () = day_1
