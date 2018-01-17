resource ResData = open Prelude, Predef in {
  oper
    StrMap : Type = Str -> Str ;
    SSMap  : Type = SS -> SS ;

    toSS : StrMap -> SSMap = \t,r -> ss (t r.s) ;

    rSbind : Str -> Str = \s -> s ++ SOFT_BIND ;
    lSbind : Str -> Str = \s -> SOFT_BIND ++ s ;

    embed = overload {
      embed : Str -> StrMap = \sep,s -> sep ++ s ++ sep ;
      embed : Str -> Str -> StrMap = \lsep,rsep,s -> lsep ++ s ++ rsep ;
      } ;

    begParen    : Str = rSbind "(" ;
    begBrack    : Str = rSbind "[" ;
    begBrace    : Str = rSbind "{" ;
    begQuote    : Str = rSbind "\"" ;
    begSQuote   : Str = rSbind "'" ;
    begAngle    : Str = rSbind "<" ;

    ssBegParen    : SSMap = prefixSS begParen ;
    ssBegBrack    : SSMap = prefixSS begBrack ;
    ssBegBrace    : SSMap = prefixSS begBrace ;
    ssBegQuote    : SSMap = prefixSS begQuote ;
    ssBegAngle    : SSMap = prefixSS begAngle ;

    -- used as string delimiter in XML
    begAngleClo : Str = embed SOFT_BIND "</" ;
    ssBegAngleClo : SSMap = postfixSS begAngleClo ;

    endParen : Str = lSbind ")" ;
    endBrack : Str = lSbind "]" ;
    endBrace : Str = lSbind "}" ;
    endQuote : Str = lSbind "\"" ;
    endAngle : Str = lSbind ">" ;

    ssEndParen : SSMap = postfixSS endParen ;
    ssEndBrack : SSMap = postfixSS endBrack ;
    ssEndBrace : SSMap = postfixSS endBrace ;
    ssEndQuote : SSMap = postfixSS endQuote ;
    ssEndAngle : SSMap = postfixSS endAngle ;

    parens : StrMap = embed begParen endParen ;
    bracks : StrMap = embed begBrack endBrack ;
    braces : StrMap = embed begBrace endBrace ;
    angles : StrMap = embed begAngle endAngle ;

    ssParens : SSMap = toSS parens ;
    ssBracks : SSMap = toSS bracks ;
    ssBraces : SSMap = toSS braces ;

    bComma : Str = embed SOFT_BIND "," ;
    bColon : Str = embed SOFT_BIND ":" ;
    bEqual : Str = embed SOFT_BIND "=" ;

    strfy   : StrMap = embed begQuote endQuote ;
    ssStrfy : SSMap = toSS strfy ;
} ;
