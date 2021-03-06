type token =
  | UCNAME of (string)
  | LCNAME of (string)
  | EOF
  | LPAREN
  | RPAREN
  | LBRACE
  | RBRACE
  | TYPE
  | OF
  | PIPE
  | SEMICOLON
  | COLON
  | EQ
  | ARROW
  | TIMES

open Parsing;;
# 2 "Parser.mly"
open TypeDecl
# 22 "Parser.ml"
let yytransl_const = [|
    0 (* EOF *);
  259 (* LPAREN *);
  260 (* RPAREN *);
  261 (* LBRACE *);
  262 (* RBRACE *);
  263 (* TYPE *);
  264 (* OF *);
  265 (* PIPE *);
  266 (* SEMICOLON *);
  267 (* COLON *);
  268 (* EQ *);
  269 (* ARROW *);
  270 (* TIMES *);
    0|]

let yytransl_block = [|
  257 (* UCNAME *);
  258 (* LCNAME *);
    0|]

let yylhs = "\255\255\
\002\000\002\000\002\000\002\000\003\000\004\000\004\000\005\000\
\005\000\006\000\006\000\007\000\007\000\008\000\008\000\009\000\
\009\000\001\000\000\000"

let yylen = "\002\000\
\001\000\003\000\003\000\003\000\004\000\002\000\000\000\001\000\
\003\000\003\000\000\000\001\000\002\000\006\000\004\000\002\000\
\000\000\002\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\019\000\000\000\000\000\000\000\016\000\
\018\000\000\000\000\000\000\000\000\000\000\000\012\000\015\000\
\000\000\000\000\000\000\000\000\000\000\013\000\001\000\000\000\
\000\000\000\000\006\000\014\000\010\000\000\000\000\000\000\000\
\000\000\002\000\000\000\000\000\005\000"

let yydgoto = "\002\000\
\004\000\025\000\019\000\020\000\014\000\015\000\016\000\005\000\
\006\000"

let yysindex = "\002\000\
\019\255\000\000\016\255\000\000\019\255\027\000\017\255\000\000\
\000\000\255\254\020\255\028\255\030\255\023\255\000\000\000\000\
\014\255\022\255\028\255\029\255\023\255\000\000\000\000\014\255\
\011\255\014\255\000\000\000\000\000\000\254\254\014\255\014\255\
\009\255\000\000\011\255\011\255\000\000"

let yyrindex = "\000\000\
\034\000\000\000\000\000\000\000\034\000\000\000\000\000\000\000\
\000\000\006\000\009\000\031\255\000\000\006\000\000\000\000\000\
\000\000\000\000\031\255\000\000\006\000\000\000\000\000\000\000\
\010\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\001\000\005\000\000\000"

let yygindex = "\000\000\
\000\000\245\255\000\000\017\000\025\000\249\255\000\000\000\000\
\035\000"

let yytablesize = 275
let yytable = "\011\000\
\004\000\034\000\001\000\012\000\003\000\011\000\022\000\013\000\
\008\000\009\000\031\000\032\000\030\000\029\000\033\000\023\000\
\024\000\007\000\037\000\035\000\036\000\031\000\032\000\031\000\
\032\000\003\000\009\000\017\000\010\000\018\000\011\000\013\000\
\026\000\017\000\028\000\027\000\007\000\021\000\000\000\008\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\004\000\000\000\000\000\004\000\
\003\000\004\000\004\000\003\000\011\000\003\000\003\000\008\000\
\009\000\008\000\009\000"

let yycheck = "\001\001\
\000\000\004\001\001\000\005\001\000\000\000\000\014\000\009\001\
\000\000\000\000\013\001\014\001\024\000\021\000\026\000\002\001\
\003\001\002\001\010\001\031\000\032\000\013\001\014\001\013\001\
\014\001\007\001\000\000\008\001\012\001\002\001\001\001\009\001\
\011\001\000\000\006\001\019\000\006\001\013\000\255\255\005\000\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\004\001\255\255\255\255\007\001\
\004\001\009\001\010\001\007\001\007\001\009\001\010\001\007\001\
\007\001\009\001\009\001"

let yynames_const = "\
  EOF\000\
  LPAREN\000\
  RPAREN\000\
  LBRACE\000\
  RBRACE\000\
  TYPE\000\
  OF\000\
  PIPE\000\
  SEMICOLON\000\
  COLON\000\
  EQ\000\
  ARROW\000\
  TIMES\000\
  "

let yynames_block = "\
  UCNAME\000\
  LCNAME\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 14 "Parser.mly"
                          ( Type(_1) )
# 186 "Parser.ml"
               : 'typename))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'typename) in
    Obj.repr(
# 15 "Parser.mly"
                          ( _2 )
# 193 "Parser.ml"
               : 'typename))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'typename) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'typename) in
    Obj.repr(
# 16 "Parser.mly"
                          ( Tuple(_1,_3) )
# 201 "Parser.ml"
               : 'typename))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'typename) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'typename) in
    Obj.repr(
# 17 "Parser.mly"
                          ( Arrow(_1,_3) )
# 209 "Parser.ml"
               : 'typename))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'typename) in
    Obj.repr(
# 20 "Parser.mly"
                                  ( (_1,_3) )
# 217 "Parser.ml"
               : 'recordel))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'recordel) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'recordellist) in
    Obj.repr(
# 23 "Parser.mly"
                        ( _1 :: _2 )
# 225 "Parser.ml"
               : 'recordellist))
; (fun __caml_parser_env ->
    Obj.repr(
# 24 "Parser.mly"
  ( [] )
# 231 "Parser.ml"
               : 'recordellist))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 27 "Parser.mly"
                        ( (_1,NoRecord) )
# 238 "Parser.ml"
               : 'variant))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'typename) in
    Obj.repr(
# 28 "Parser.mly"
                        ( (_1,Record(_3)) )
# 246 "Parser.ml"
               : 'variant))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'variant) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'variantlist1) in
    Obj.repr(
# 31 "Parser.mly"
                            ( _2::_3 )
# 254 "Parser.ml"
               : 'variantlist1))
; (fun __caml_parser_env ->
    Obj.repr(
# 32 "Parser.mly"
  ( [] )
# 260 "Parser.ml"
               : 'variantlist1))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'variantlist1) in
    Obj.repr(
# 35 "Parser.mly"
               ( _1 )
# 267 "Parser.ml"
               : 'variantlist))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'variant) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'variantlist1) in
    Obj.repr(
# 36 "Parser.mly"
                       ( _1::_2 )
# 275 "Parser.ml"
               : 'variantlist))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _5 = (Parsing.peek_val __caml_parser_env 1 : 'recordellist) in
    Obj.repr(
# 39 "Parser.mly"
                                            ( NamedStruct(_2,_5) )
# 283 "Parser.ml"
               : 'typedecl))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'variantlist) in
    Obj.repr(
# 40 "Parser.mly"
                                            ( NamedVariant(_2,_4) )
# 291 "Parser.ml"
               : 'typedecl))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'typedecl) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'typedecllist) in
    Obj.repr(
# 43 "Parser.mly"
                        ( _1 :: _2 )
# 299 "Parser.ml"
               : 'typedecllist))
; (fun __caml_parser_env ->
    Obj.repr(
# 44 "Parser.mly"
  ( [] )
# 305 "Parser.ml"
               : 'typedecllist))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'typedecllist) in
    Obj.repr(
# 47 "Parser.mly"
                   ( _1 )
# 312 "Parser.ml"
               : (string,string,string,string,string,string) TypeDecl.named_type list))
(* Entry top *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let top (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : (string,string,string,string,string,string) TypeDecl.named_type list)
;;
