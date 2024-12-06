open AoC_2024

let day_to_path day =
  let string_day = string_of_int day in
  let formatted_day = if day < 10 then "0" ^ string_day else string_day in
  "./input/day_" ^ formatted_day ^ ".txt"

let print_solution day_num part_num answer = 
  print_string "D";
  print_int day_num; 
  print_string ":P";
  print_int part_num;
  print_string " -> ";
  print_int answer;
  print_newline ()

let day_1 =
  let lines = File.Read_input.lines_from_file (day_to_path 1) in
  let left, right = Day_01.Part_01.lines_to_lists lines in
  let part_01 = Day_01.Part_01.solve left right in
  print_solution 1 1 part_01; 
  let part_02 = Day_01.Part_02.solve left right in
  print_solution 1 2 part_02

let () = day_1
