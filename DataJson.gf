concrete DataJson of Data = open Prelude, Predef, ResData in {
  lincat
    S, Value, Tree, Map, List, Pair, Ident = SS ;
  lin
    mkV v      = v ;
    mkT t      = t ;
    mkM m      = ssLbrace m ;
    mkL l      = ssLbrack l ;
    consT i m v  = let m' : Str = Lbrace m.s
                    in ss (brack (i.s ++ m' ++ v.s)) ;
    consM p m  = ss (p.s ++ "," ++ m.s ) ;
    consL v l  = ss (v.s ++ "," ++ l.s ) ;
    consP k v  = ss (k.s ++ ":" ++ v.s ) ;
    atomM p    = ssRbrace p ;
    atomL v    = ssRbrack v ;
    mkInt n    = n ;
    mkFloat f  = f ;
    mkString s = ssStrfy s ;
    mkIdent i  = ssStrfy i ;
    emptyM     = ss "{}" ;
    emptyL     = ss "[]" ;
    trueB      = ss "true" ;
    falseB     = ss "false" ;
    nullB      = ss "null" ;
}
