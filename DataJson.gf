concrete DataJson of Data = open Prelude,Predef in {
  lincat
    S, Value, Map, List, Pair, DString, Null = Str ;
    DBool   = Bool ;
    DFloat  = Float ;
    DInt    = {n : Int} ;
  lin
    mkS v = v ;
    mkM m = "{" ++ m ;
    mkL l = "[" ++ l ;
    mkStr s = "\"" ++ s ++ "\"" ;
    mkBool b = case b of {
      True => "true"  ;
      _    => "false"
      } ;
    mkFloat f = show Float f ;
    mkInt i = mkInt' i ;
    mkNull = "null" ;
    consM p m = p ++ "," ++ m ;
    consL v l = v ++ "," ++ l ;
    consP k v = "\"" ++ k ++ "\":" ++ v ;
    emptyM = "}" ;
    emptyL = "]" ;
  oper
    mkInt' : DInt -> Str = \n -> show Int n.n ;
}