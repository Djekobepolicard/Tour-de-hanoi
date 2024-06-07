let rec hanoi n dep aux dest=
  if n = 0 then ()
  else
    begin
      hanoi (n-1) dep dest aux;
      Printf.printf "Déplacer le disque %d de %s vers %s\n" n dep dest;
      hanoi (n-1) aux dep dest
    end

let time_hanoi n =
  let start = Sys.time() in
  hanoi n "A" "B" "C";
  let end_time = Sys.time() in
  Printf.printf "Temps d'exécution de la fonction hanoi avec %d disques : %.6f secondes\n" n (end_time -. start)

let () =
  time_hanoi 5;;
