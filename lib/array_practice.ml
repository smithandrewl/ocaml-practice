open Printf

let array_filter filt array =
  array
  |> Array.to_list
  |> List.filter filt
  |> Array.of_list

let is_even num = num mod 2 = 0
let is_odd num = num mod 2 <> 0

let to_even = array_filter is_even
let to_odd = array_filter is_odd

let display_array fmt = Array.iter (printf fmt)

let print_indexed_array array =
  Array.iteri (fun index value -> printf "item(%i) = %s\n" index value) array

let print_filtered_arrays int_array =
  printf "Unfiltered: ";
  display_array "%i " int_array;
  printf "\nEven: ";
  display_array "%i " (to_even int_array);
  printf "\nOdd: ";
  display_array "%i " (to_odd int_array);
  printf "\n"

let run () =
  print_endline "Array practice:\n";
  
  let str_array = [|"One"; "Two"; "Three"; "Four"; "Five"; "Six"|] in
  let int_array = [|1; 2; 3; 4; 5; 6; 7; 8; 9; 10|] in
  
  printf "String array:\n";
  display_array "%s\n" str_array;
  printf "\n";
  print_indexed_array str_array;
  
  printf "\nInt array:\n\n";
  print_filtered_arrays int_array