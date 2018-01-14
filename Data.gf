abstract Data = {
  cat
    Tree ;
    S ; Value ; Ident ;
    Map ; Pair ;
    List ;
  fun
    mkV      : Value  -> S ;
    mkT      : Tree   -> Value ;
    mkM      : Map    -> Value ;
    mkL      : List   -> Value ;
    consT    : Ident  -> Map   -> Value -> Tree ;
    consM    : Pair   -> Map   -> Map  ;
    consL    : Value  -> List  -> List ;
    consP    : Ident  -> Value -> Pair ;
    atomM    : Pair   -> Map ;
    atomL    : Value  -> List ;
    mkInt    : Int    -> Value ;
    mkFloat  : Float  -> Value ;
    mkString : String -> Value ;
    mkIdent  : String -> Ident ;
    emptyM   : Value ;
    emptyL   : Value ;
    trueB    : Value ;
    falseB   : Value ;
    nullB    : Value ;
}

