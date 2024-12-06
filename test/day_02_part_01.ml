open OUnit2
open AoC_2024.Day_02.Part_01

let tests =
  "test suite for day 2 part 1"
  >::: [
         ( "all increasing" >:: fun _ ->
           assert_equal 1 (solve [ [ 1; 2; 3 ] ]) );
         ( "all decreasing" >:: fun _ ->
           assert_equal 1 (solve [ [ 3; 2; 1 ] ]) );
         ( "increasing and decreasing" >:: fun _ ->
           assert_equal 0 (solve [ [ 1; 3; 2 ] ]) );
         ( "change of at least one" >:: fun _ ->
           assert_equal 1 (solve [ [ 1; 2; 3 ] ]) );
         ("no change" >:: fun _ -> assert_equal 0 (solve [ [ 1; 1; 2 ] ]));
         ( "change of at most three" >:: fun _ ->
           assert_equal 1 (solve [ [ 1; 2; 4; 7 ] ]) );
         ( "change of at more than three" >:: fun _ ->
           assert_equal 0 (solve [ [ 1; 5 ] ]) );
       ]

let _ = run_test_tt_main tests

let tests =
  "test suite for day 2 part 1 - check_report_safety"
  >::: [
         ( "all increasing" >:: fun _ ->
           assert_equal true (check_report_safety [ 1; 2; 3 ]) );
         ( "all decreasing" >:: fun _ ->
           assert_equal true (check_report_safety [ 3; 2; 1 ]) );
         ( "increasing and decreasing" >:: fun _ ->
           assert_equal false (check_report_safety [ 1; 3; 2 ]) );
         ( "change of at least one" >:: fun _ ->
           assert_equal true (check_report_safety [ 1; 2; 3 ]) );
         ("no change" >:: fun _ -> assert_equal false (check_report_safety [ 1; 1; 2 ]));
         ( "change of at most three" >:: fun _ ->
           assert_equal true (check_report_safety [ 1; 2; 4; 7 ]) );
         ( "change of at more than three" >:: fun _ ->
           assert_equal false (check_report_safety [ 1; 5 ]) );
       ]

let _ = run_test_tt_main tests