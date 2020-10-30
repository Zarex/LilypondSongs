\version "2.20.0"


rhClefAndTime = { \time 3/4 \clef "treble" }

%rhL1 = { c'4 g'4 g | <c, g'>4 f8( e d c) | c4 a'4 a4  | <c, a'>2. | }
%rhL2 = 
%rhL3 =
rightHand = 
{ 
  \relative 
  { 
    \rhClefAndTime \repeat volta 2 
    {
      c'4 g'4 g | <c, g'>4 f8( e d c) | c4 a'4 a4  | <c, a'>2. |
      c4 g'4 g | <c, g'>4 f8( e d c) | f4 e d | c2. |
    }
    r4 g'8( f e d) | c4 r4 r4 | r4 <c e> <c e> | <c e>2.
  }
}

lhClefAndTime = { \time 3/4 \clef "bass" }
leftHand = 
{ 
  \relative 
  { 
    \lhClefAndTime \repeat volta 2 
    {
      <g e c>4 r4 r | <g e c> r r | <a f c> r r | c, <f a> <f a> |
      <g e c>4 r4 r | <g e c> r r | <a c,> <g c,> <f c> | <e c> g8( f e d) | 
    }
    c4 r r | r g'8( f e d) c4 <c g,> <c g> <c g>2.
  }
}



{
\new PianoStaff <<
  \new Staff \rightHand
  \new Staff \leftHand
>>
}