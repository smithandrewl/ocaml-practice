open Printf

let to_even ints =
  ints
  |> Array.to_list
  |> List.filter (fun value -> value mod 2 = 0)
  |> Array.of_list
  
let run () =
  print_endline "Array practice:";
  print_endline "";

  let str_array = [|"One"; "Two"; "Three"; "Four"; "Five"; "Six" |] in
  let int_array = [|1; 2; 3; 4; 5; 6; 7; 8; 9; 10|] in


  printf "String array:\n"; 

  Array.iter 
    (fun word -> printf "%s\n" word)
    str_array;

  printf "\n\n";

  Array.iteri
    (fun index value ->
      printf "item(%i) = %s\n" index value)
    str_array;

  printf "\nInt array:\n\n";

  printf "Even: ";

  int_array
  |> to_even
  |> Array.iter (fun value -> printf "%i " value);
  
  printf "\n"