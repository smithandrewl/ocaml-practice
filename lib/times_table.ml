let print_table size =

  Printf.printf "\n";

  for i = 1 to size do
    for j = 1 to size do
      Printf.printf "%4d" (i * j)
    done;
    Printf.printf "\n";
  done

let run () =
  print_endline "Times Table";

  print_table 12;
  print_endline "Press Enter to return to the main menu";
  ignore (read_line ())