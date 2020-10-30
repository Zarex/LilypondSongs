\version "2.20.0"

% http://lilypond.org/doc/v2.18/Documentation/notation/repeats-in-midi



mainSongRh = 
{
    a8 gis a b c b c d | <c e> <c e> r <c e>~ <c e>2 | <d b>8 <d b> r <d b>~ <d b>2 | <c e>8 <c e> r <c e>~ <c e> d c b | \break
    a8 gis a b c b c d | <c e> <c e> r <c e>~ <c e>4 c8 d |
}

repeatRh_A = \relative c'
{
    e4 d c b | a2. r4 | \break
}
repeatRh_B = \relative c'
{
    e2 d | c b | a1~ | a4 e' <c a'> r | \break
}

mainSongLh = 
{
    <a, e'>1 | <a e'> | <e e'> | <a e'>2. r4 | \break
    <a e'>1 | <a e'>2. r4 |
}
repeatLh_A = \relative c,
{
    r4 e fis gis | a e'8 f e d c b | \break
}
repeatLh_B = \relative c,
{
    r4 e r e | r fis r gis | a e'8 f e d c b | a4 e' a, r | \break
}
voiceA = 
{
    \repeat volta 2 { \mainSongRh } \alternative 
    { 
        { \repeatRh_A }
        { \repeatRh_B } 
    }

}
voiceB = 
{
    \repeat volta 2 { \mainSongLh } \alternative
    {
        { \repeatLh_A }
        { \repeatLh_B }
    }
    
}
keyAndTime = \key a \minor \time 4/4
music = \new PianoStaff << 

  \new Staff = "up" { 
            \keyAndTime  { \relative c' { \voiceA } }
        }
  \new Staff = "down" { 
            \keyAndTime { \relative c' { \clef bass  \voiceB } }
        }
>>

\score {
\music 
\layout{}
}

\score {
\unfoldRepeats { \music }
\midi { \tempo 4 = 110 }
}