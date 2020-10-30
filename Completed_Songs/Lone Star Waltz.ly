\version "2.20.0"


rhClefAndTime = { \time 3/4 \clef "treble" }

rightHand = 
{ 
  \relative 
  { 
    \rhClefAndTime
    c'8( e a4 g) | d8( f a4 g) | d8( f a4 g | c,2.) | \break
    c8( e a4 g) | d8( f a4 g) | d8( f a4 g | c,2.) | \break
    <g' e'>4 <f d'> <e c'> | <d b'>2. | <d b'>4 <e c'> <f d'> | <e c'>2. | \break
    <g e'>4 <f d'> <e c'> | <d b'>2. | <d b'>4 <e c'> <f d'> | <e c'>2. | \break
    r4 r r | r <f g>\staccato <f g>\staccato | r r r | r <e g>\staccato <e g>\staccato | \break
    r r r | r <f g>\staccato <f g>\staccato | r r r | r <e g>\staccato <e g>\staccato | \break
  }
}

lhClefAndTime = { \time 3/4 \clef "bass" }
leftHand = 
{ 
  \relative 
  { 
    \lhClefAndTime 
    <c g'>2. | <b g'> | <b g'> | c4 e g | \break
    <c, g'>2. | <b g'> | <b g'> | c4 <e g>2 | \break
    r4 r r | r <f g>\staccato <f g>\staccato | r r r | r <e g>\staccato <e g>\staccato | \break
    r4 r r | r <f g>\staccato <f g>\staccato | r r r | r <e g>\staccato <e g>\staccato | \break
    <c' e,>4 <b d,> <a c,> | <g b,>2. | <g b,>4 <a c,> <b d,> | <c e,>2. | \break
    <c e,>4 <b d,> <a c,> | <g b,>2. | <g b,>4 <a c,> <b d,> | <c e,>2. | \break
  }
}


\score {
 \new PianoStaff <<
  \new Staff \rightHand
  \new Staff \leftHand
>>
\layout{}
\midi { \tempo 4 = 90 }
}