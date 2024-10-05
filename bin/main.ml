
(* bin/main.ml *)
open Ocaml_practice

let display_menu () =
  print_endline "\nMain Menu:";
  print_endline "1. Times Table";
  print_endline "2. Array Practice";
  print_endline "3. Quit";
  print_string "Enter your choice: "

let rec main_loop () =
  display_menu ();
  match read_line () with
  | "1" -> Times_table.run (); main_loop ()
  | "2" -> Array_practice.run (); main_loop ()
  | "3" -> print_endline "Goodbye!"; exit 0
  | _   -> print_endline "Invalid choice. Try again."; main_loop ()

let () = main_loop ()