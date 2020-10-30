\version "2.20.0"


rhClefAndTime = { \time 3/4 \clef "treble" }

rightHand = 
{ 
  \relative 
  { 
    \rhClefAndTime \partial 4
    g'4( | g4. a8 g4 | e c e | g4. a8 g4 | \break
	e2) c8( e | g2. | a2. | f4. e8 f4 | \break
	d2) d4( | d d d | f e d | f e d | \break
	d2.) | g4( g g | g2 f4 | e4. d8 e4 | c2) r4 | \break
  }
}

lhClefAndTime = { \time 3/4 \clef "bass" }
leftHand = 
{ 
  \relative 
  { 
    \lhClefAndTime \partial 4
	r4 | c4 <e g> <e g> | c <e g> <e g> | c <e g> <e g> | \break
	c <e g> r | c <e g> <e g> | c <e g> <e g> | b <f' g> <f g> | \break
	b, <f' g> <f g> | b, <f' g> <f g> | b, <f' g> <f g>| b, <f' g> <f g> | \break
	<f g b,>2. | b,4 <f' g> <f g> | b, <f' g> <f g> | b, <f' g> <f g> | <c e g>2 r4 | \break
  }
}


\score {
 \new PianoStaff <<
  \new Staff \rightHand
  \new Staff \leftHand
>>
\layout{}
\midi { \tempo 4 = 120 }
}