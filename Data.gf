abstract Data = {
  cat
    --Tree ; Subtree ;
    S ; Value ;
    Map ; Pair ;
    List ;
  fun
    mkV      : Value  -> S             ;
    mkM      : Map    -> Value         ;
    mkL      : List   -> Value         ;
    consM    : Pair   -> Map   -> Map  ;
    consL    : Value  -> List  -> List ;
    consP    : String -> Value -> Pair ;
    map      : Pair   -> Map           ;
    list     : Value  -> List          ;
    mkInt    : Int    -> Value         ;
    mkFloat  : Float  -> Value         ;
    mkString : String -> Value         ;
    emptyM   : Value                   ;
    emptyL   : Value                   ;
    trueB    : Value                   ;
    falseB   : Value                   ;
    nullB    : Value                   ;
}
