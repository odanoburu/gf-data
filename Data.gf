abstract Data = {
  cat
    --Tree ; Subtree ;
    S ; Value ; Map ; List ; Pair ; DString ; DBool ; DFloat;
    DInt; Null ;
  fun
    mkS     : Value   -> S ;
    mkM     : Map     -> Value ;
    mkL     : List    -> Value ;
    mkStr   : DString -> Value ;
    mkBool  : DBool   -> Value ;
    mkFloat : DFloat  -> Value ;
    mkInt   : DInt    -> Value ;
    mkNull  : Value ;
    consM   : Pair    -> Map   -> Map ;
    consL   : Value   -> List  -> List ;
    consP   : DString -> Value -> Pair ;
    emptyM  : Map ;
    emptyL  : List ;
}