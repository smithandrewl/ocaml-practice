open Printf

let array_filter filt array =
  array
  |> Array.to_list
  |> List.filter filt
  |> Array.of_list

let is_even num = num mod 2 = 0
let is_odd num = not (is_even num)

let to_even = array_filter is_even
let to_odd = array_filter is_odd

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
  
  printf "\n\nOdd: ";

  int_array
  |> to_odd
  |> Array.iter (fun value -> printf "%i " value);

  printf "\n"