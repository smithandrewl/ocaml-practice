open Printf
let run () =
  print_endline "Array practice:";
  print_endline "";

  let str_array = [|"One"; "Two"; "Three"; "Four"; "Five"; "Six" |] in

  Array.iter 
    (fun word -> printf "%s\n" word)
    str_array;

  printf "\n\n";

  Array.iteri
    (fun index value ->
      printf "item(%i) = %s\n" index value)
    str_array;
