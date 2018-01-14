resource ResData = open Prelude in {
  oper
    StrMap : Type = Str -> Str ;
    SSMap  : Type = SS -> SS ;
    
    toSS : StrMap -> SSMap = \f,r -> ss (f r.s) ;
    
    Lclose   : Str -> Str -> Str = \s,r -> s ++ r ;
    Lparen   : Str -> Str = \s -> Lclose "(" s ;
    Lbrack   : Str -> Str = \s -> Lclose "[" s ;
    Lbrace   : Str -> Str = \s -> Lclose "{" s ;
    ssLparen : SS -> SS = \r -> toSS Lparen r;
    ssLbrack : SS -> SS = \r -> toSS Lbrack r ;
    ssLbrace : SS -> SS = \r -> toSS Lbrace r ;

    Rclose   : Str -> Str -> Str = \s,r -> r ++ s ;
    Rparen   : Str -> Str = \s -> Rclose ")" s ;
    Rbrack   : Str -> Str = \s -> Rclose "]" s ;
    Rbrace   : Str -> Str = \s -> Rclose "}" s ;
    ssRparen : SS -> SS = \r -> toSS Rparen r ;
    ssRbrack : SS -> SS = \r -> toSS Rbrack r ;
    ssRbrace : SS -> SS = \r -> toSS Rbrace r ;

    brack   : Str -> Str = \s -> Lbrack (Rbrack s) ;
    brace   : Str -> Str = \s -> Lbrace (Rbrace s) ;
    ssBrack : SS -> SS = \r -> toSS brack r ;
    ssBrace : SS -> SS = \r -> toSS brace r ;
    ssParen : SS -> SS = \r -> toSS paren r ;

    strfy   : Str -> Str = \s -> "\"" ++ s ++ "\"" ;
    ssStrfy : SS -> SS = \r -> toSS strfy r ;
} ;