resource ResData = open Prelude in {
  oper
    StrMap : Type = Str -> Str ;
    SSMap  : Type = SS -> SS ;

    toSS : StrMap -> SSMap = \f,r -> ss (f r.s) ;

    --Lclose : Str -> StrMap = \sep,s -> sep ++ SOFT_BIND ++ s ;
    Lclose   : Str -> Str -> Str = \s,r -> s ++ r ;
    Rclose   : Str -> Str -> Str = \s,r -> r ++ s ;
    --Rclose : Str -> StrMap = \sep,s -> s ++ SOFT_BIND ++ sep ;
    close = overload {
      close : Str -> StrMap = \sep,s -> (Lclose sep (Rclose sep s )) ;
      close : Str -> Str -> StrMap = \lsep,rsep,s -> (Lclose lsep (Rclose rsep )) ;
      } ;

    Lparen   : StrMap = \s -> Lclose "(" s ;
    Lbrack   : StrMap = \s -> Lclose "[" s ;
    Lbrace   : StrMap = \s -> Lclose "{" s ;
    ssLparen : SSMap = \r -> toSS Lparen r;
    ssLbrack : SSMap = \r -> toSS Lbrack r ;
    ssLbrace : SSMap = \r -> toSS Lbrace r ;

    Rparen   : StrMap = \s -> Rclose ")" s ;
    Rbrack   : StrMap = \s -> Rclose "]" s ;
    Rbrace   : StrMap = \s -> Rclose "}" s ;
    ssRparen : SSMap = \r -> toSS Rparen r ;
    ssRbrack : SSMap = \r -> toSS Rbrack r ;
    ssRbrace : SSMap = \r -> toSS Rbrace r ;

    brack   : StrMap = \s -> close "[" "]" s ;
    brace   : StrMap = \s -> lose "{" "}" s ; --eta reduce?
    ssBrack : SS -> SS = \r -> toSS brack r ;
    ssBrace : SS -> SS = \r -> toSS brace r ;
    ssParen : SS -> SS = \r -> toSS paren r ;

    Rcomma : Str = ","-- "," ++ SOFT_BIND

    strfy   : Str -> Str = \s -> close "\"" s ;
    ssStrfy : SS -> SS = \r -> toSS strfy r ;
} ;