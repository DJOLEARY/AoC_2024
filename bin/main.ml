open AoC_2024

let day_to_path day =
  let string_day = string_of_int day in
  let formatted_day = if day < 10 then "0" ^ string_day else string_day in
  "./input/day_" ^ formatted_day ^ ".txt"

let day_1 =
  let lines = File.Read_input.lines_from_file (day_to_path 1) in
  let left, right = Day_01.Part_01.lines_to_lists lines in
  let part_01 = Day_01.Part_01.solve left right in
  print_string "D1:P1 -> ";
  print_int part_01;
  print_newline ()

let () = day_1
