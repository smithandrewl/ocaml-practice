let print_table size =
  for i = 1 to size do
    for j = 1 to size do
      Printf.printf "%2d x %2d = %2d\n" i j (i * j)
    done
  done

let run () =
  print_endline "Times Table";

  print_table 12;
  print_endline "Press Enter to return to the main menu";
  ignore (read_line ())