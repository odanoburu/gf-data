resource ResData = open Prelude, Predef in {
  -- eta reduce opers?
  oper
    StrMap : Type = Str -> Str ;
    SSMap  : Type = SS -> SS ;

    toSS : StrMap -> SSMap = \t,r -> ss (t r.s) ;

    rSbind : Str -> Str = \s -> s ++ SOFT_BIND ;
    lSbind : Str -> Str = \s -> SOFT_BIND ++ s ;

    embed : Str -> Str -> StrMap = \lsep,rsep,s -> lsep ++ s ++ rsep ;

    begParen : Str = rSbind "(" ;
    begBrack : Str = rSbind "[" ;
    begBrace : Str = rSbind "{" ;
    begQuote : Str = rSbind "\"" ;

    ssBegParen : SSMap = prefixSS begParen ;
    ssBegBrack : SSMap = prefixSS begBrack ;
    ssBegBrace : SSMap = prefixSS begBrace ;



    endParen : Str = lSbind ")" ;
    endBrack : Str = lSbind "]" ;
    endBrace : Str = lSbind "}" ;
    endQuote : Str = lSbind "\"" ;

    ssEndParen : SSMap = postfixSS endParen ;
    ssEndBrack : SSMap = postfixSS endBrack ;
    ssEndBrace : SSMap = postfixSS endBrace ;

    parens   : StrMap = embed begParen endParen ;
    bracks   : StrMap = embed begBrack endBrack ;
    braces   : StrMap = embed begBrace endBrace ;

    ssParens : SSMap = toSS parens ;
    ssBracks : SSMap = toSS bracks ;
    ssBraces : SSMap = toSS braces ;

    Rcomma : Str = rSbind "," ;

    strfy   : StrMap = embed begQuote endQuote ;
    ssStrfy : SSMap = toSS strfy ;
} ;
