concrete DataJson of Data = open Prelude,Predef in {
  lincat
    S, Value, Map, Pair, List = SS ;
  lin
    mkV v      = v ;
    mkM m      = ss ("{" ++ m.s ) ;
    mkL l      = ss ("[" ++ l.s ) ;
    consM p m  = ss (p.s ++ "," ++ m.s ) ;
    consL v l  = ss (v.s ++ "," ++ l.s ) ;
    consP k v  = ss ("\"" ++ k.s ++ "\" :" ++ v.s ) ;
    map p      = ss (p.s ++ "}" ) ;
    list v     = ss (v.s ++ "]" ) ;
    mkInt n    = ss n.s ;
    mkFloat f  = ss f.s ;
    mkString s = ss ("\"" ++ s.s ++ "\"" ) ;
    emptyM     = ss "{}" ;
    emptyL     = ss "[]" ;
    trueB      = ss "true" ;
    falseB     = ss "false" ;
    nullB      = ss "null" ;
}
