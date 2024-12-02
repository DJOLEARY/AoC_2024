(* Day 1: Part 1 *)

let calculate_distance x y = Stdlib.abs (x - y)

(** Require: left and right to be the same length *)
let solve left right =
  let sorted_left = List.sort Stdlib.compare left in
  let sorted_right = List.sort Stdlib.compare right in
  let distances = List.map2 calculate_distance sorted_left sorted_right in
  List.fold_left ( + ) 0 distances

let lines_to_lists _ = ([ 1 ], [ 2 ])
