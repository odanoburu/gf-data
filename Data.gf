abstract Data = {
  -- if C runtime also recognizes 1 as both 1 and 1.0, have only
  -- floats.
  cat
    Tree ;
    S ; Value ; Ident ;
    Map ; Pair ;
    List ;
    Dstr ;
  fun
    mkV      : Value  -> S ;
    mkT      : Tree   -> Value ;
    mkM      : Map    -> Value ;
    mkL      : List   -> Value ;
    mkStr    : Dstr   -> Value ;
    consT    : Ident  -> Map   -> Value -> Tree ;
    consM    : Pair   -> Map   -> Map  ;
    consL    : Value  -> List  -> List ;
    consP    : Ident  -> Value -> Pair ;
    consStr  : String -> Dstr -> Dstr ;
    atomM    : Pair   -> Map ;
    atomL    : Value  -> List ;
    atomStr  : String -> Dstr ;
    mkInt    : Int    -> Value ;
    --mkFloat  : Float  -> Value ;
    mkIdent  : String -> Ident ;
    emptyM   : Value ;
    emptyL   : Value ;
    trueB    : Value ;
    falseB   : Value ;
    nullB    : Value ;
}
