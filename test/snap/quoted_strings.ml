(** This is a string *)
let _ = "hello"

(** This is a string *)
let () =
  Printf.printf
    {|
(rule
 (targets %s.output)
 (deps .ocamlformat %s)
 (action
   (with-outputs-to %%{targets}
     (system "%s%%{bin:ocamlformat}%s %%{dep:%s}"))))

(alias
 (name runtest)
 (action (diff %s %s.output)))
|}

(** This is also a string *)
let _ = {delimiter|contents|delimiter}
