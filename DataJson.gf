concrete DataJson of Data = open Prelude, Predef, ResData in {
  lincat
    S, Value, Tree, Map, List, Pair, Ident, Dstr = SS ;
  lin
    mkV v        = v ;
    mkT t        = t ;
    mkM m        = ssBegBrace m ;
    mkL l        = ssBegBrack l ;
    mkStr s      = ssBegQuote s ;
    consT i m v  = let m' : Str = begBrace ++  m.s
                    in ssBracks (ss3 i.s m' v.s) ;
    consM p m    = ss3 p.s bComma m.s ;
    consL v l    = ss3 v.s bComma l.s ;
    consP k v    = ss3 k.s bColon v.s ;
    consStr s ds = cc2 s ds ;
    atomM p      = ssEndBrace p ;
    atomL v      = ssEndBrack v ;
    atomStr s    = ssEndQuote s ;
    mkInt n      = n ;
    --mkFloat f  = f ;
    mkIdent i    = ssStrfy i ;
    emptyM       = ss "{}" ;
    emptyL       = ss "[]" ;
    trueB        = ss "true" ;
    falseB       = ss "false" ;
    nullB        = ss "null" ;
}
