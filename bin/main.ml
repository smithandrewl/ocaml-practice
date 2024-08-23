
(* bin/main.ml *)
open Ocaml_practice

let display_menu () =
  print_endline "\nMain Menu:";
  print_endline "1. Times Table";
  print_endline "2. Quit";
  print_string "Enter your choice: "

let rec main_loop () =
  display_menu ();
  match read_line () with
  | "1" -> Times_table.run (); main_loop ()
  | "2" -> print_endline "Goodbye!"; exit 0
  | _   -> print_endline "Invalid choice. Try again."; main_loop ()

let () = main_loop ()