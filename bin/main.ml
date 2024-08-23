
(* bin/main.ml *)
open Ocaml_practice

let display_menu () =
  print_endline "\nMain Menu:";
  print_endline "1. Run Subproject 1";
  print_endline "2. Run Subproject 2";
  print_endline "3. Quit";
  print_string "Enter your choice: "

let rec main_loop () =
  display_menu ();
  match read_line () with
  | "1" -> Subproject1.run (); main_loop ()
  | "2" -> Subproject2.run (); main_loop ()
  | "3" -> print_endline "Goodbye!"; exit 0
  | _   -> print_endline "Invalid choice. Try again."; main_loop ()

let () = main_loop ()