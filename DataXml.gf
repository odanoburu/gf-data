concrete DataXml of Data = open Prelude, Predef, ResData in {
  -- I'm using > and </ as delimiters of the string, is this
  -- necessary? does it improve parsing? (as my intuition tells me)
  lincat
    S, Value, Tree, Map, List, Pair, Ident, Dstr = SS ;
  lin
    mkV v        = ss ("<?xml version=\"1.0\"?>" ++ SOFT_BIND ++ v.s) ;
    mkT t        = t ;
    mkM m        = ss nonExist ;
    mkL l        = l ;
    mkStr s      = ssEndAngle s ; -- string is delimited by > and </
    consT i m v  = let lTag : Str = begAngle ++ i.s ;
                       rTag : Str = begAngleClo ++ i.s ++ endAngle
                   in ss (lTag ++ m.s ++ v.s ++ rTag ) ;
    consM p m    = cc2 p m ;
    consL v l    = ss nonExist ;
    consP i v    = ss (i.s ++ bEqual ++ (strfy v.s )) ;
    consStr s ds = cc2 s ds ;
    atomM p      = p ;
    atomL v      = v ;
    atomStr s    = ssBegAngleClo s ;
    mkInt n      = n ;
    --mkFloat f  = f ;
    mkIdent i    = i ;
    emptyM       = ss endAngle ;
    emptyL       = ss (begAngleClo ++ endAngle) ;
    trueB        = ss "true" ;
    falseB       = ss "false" ;
    nullB        = ss "null" ;
} ;
