concrete DataXml of Data = open Prelude, Predef, ResData in {
  lincat
    S, Value, Tree, Map, List, Pair, Ident = SS ;
  lin
    mkV v = ss ("<?xml version=\"1.0\"?>" ++ v ;
    mkT t = t ;
    mkM m = ss nonExist ;
    mkL l = ss nonExist ;
    consT i m v = let lTag : Str = Langle i.s ;
                      rTag : Str = LangleEnd (Rangle i.s )
                   in ss (lTag ++ m.s ++ v.s ++ rTag ) ;
    consM p m = ss (p.s ++ m.s ) ;
    consL v l = ss nonExist ;
    consP i v = ss (i.s ++ "=" ++ (Rangle (strfy v.s ))) ;
    atomM p   = p ;
    atomL v = ss nonExist ;
    mkInt n = n ;
    mkFloat f = f ;
    mkString s = ssStrfy s ;
    mkIdent i = i ;
    emptyM = ">" ;
    trueB

  oper
    Langle    : StrMap = \s -> Lclose "<" s ;
    LangleEnd : Str Map = \s -> Lclose "</" s ;
    ssLangle  : SSMap = \r -> toSS Langle r ;
    
    Rangle   : StrMap = \s -> Rclose ">" s ;
    ssRangle : SSMap = \r -> toSS Rangle r ;

    angle : StrMap = \s -> Langle (Rangle s) ;
    ssAngle : SSMap = \r -> toSS angle r ;
} ;