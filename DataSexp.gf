concrete DataSexp of Data = open Prelude, Predef, ResData in {
  lincat
    S, Value, Tree, Map, List, Pair, Ident, Dstr = SS ;
  lin
    mkV v        = ss (begSQuote ++ v.s ) ;
    mkT t        = t ;
    mkM m        = ssBegParen m ;
    mkL l        = ssBegParen l ;
    mkStr s      = ssBegQuote s ;
    consT i m v  = let m' : SS = mkM m
                    in ssParens (cc3 i m' v ) ;
    consM p m    = cc2 p m ;
    consL v l    = cc2 v l ;
    consP k v    = ssParens (cc2 k v );
    consStr s ds = cc2 s ds ;
    atomM p      = ssEndParen p ;
    atomL v      = ssEndParen v ;
    atomStr s    = ssEndQuote s ;
    mkInt n      = n ;
    --mkFloat f  = f ;
    mkIdent s    = s ;
    emptyM       = ss "(())" ;
    emptyL       = ss "()" ;
    trueB        = ss "t" ;
    falseB       = ss "nil" ;
    nullB        = ss "nil" ;
}
