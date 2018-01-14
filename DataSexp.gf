concrete DataSexp of Data = open Prelude, Predef, ResData in {
  lincat
    S, Value, Tree, Map, List, Pair, Ident = SS ;
  lin
    mkV v      = ss ("'" ++ v.s ) ;
    mkT t      = t ;
    consT i m v  = let m' : SS = mkM m
                  in ss (paren (i.s ++ m'.s ++ v.s )) ;
    mkM m      = ssLparen m ;
    mkL l      = ssLparen l ;
    consM p m  = ss (p.s ++ m.s ) ;
    consL v l  = ss (v.s ++ l.s ) ;
    consP k v  = ss (paren (k.s ++ v.s ));
    atomM p    = ssRparen p ;
    atomL v    = ssRparen v ;
    mkInt n    = n ;
    mkFloat f  = f ;
    mkString s = ssStrfy s ;
    mkIdent s  = s ;
    emptyM     = ss "(())" ;
    emptyL     = ss "()" ;
    trueB      = ss "t" ;
    falseB     = ss "nil" ;
    nullB      = ss "nil" ;
}
