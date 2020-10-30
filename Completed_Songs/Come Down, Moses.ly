\version "2.20.0"

% http://lilypond.org/doc/v2.18/Documentation/notation/repeats-in-midi



mainSongRh = 
{
    e4( | c' c b b | c c a2) | e4 e gis gis | <c, a'>2. e4( | \break
    c' c b b | c c a2) | e4 e gis gis | <c, a'>2. r4 | \break
    a'4 a2. | d4 d2. | e2( e4. d8 | e4 d c8 a4.) | \break
    c4( a2.) | c4( a2.) | e4( e gis gis |  <c, a'>2.)
}

mainSongLh = 
{
    r4 | <a c e>2 <a d f> | <a c e>2 <a d f> | e4( d c b | <a e'>2.) r4 | \break
    <a' c e>2 <a d f> | <a c e>2 <a d f> | e4( d c b | <a e'>2.) r4 | \break
    <a' c e>4 <a c e>2. | <a d f>4 <a d f>2. | <a c e>2 <gis d' e> | <gis d' e> <a c e> | \break
    <a d f>1 | <a c e>1 | e4( d c b | <a e'>2.)
}

voiceA = 
{
    \partial 4 \mainSongRh 
}
voiceB = 
{
    \partial 4 \mainSongLh 
}

music = \new PianoStaff << 

  \new Staff = "up" { 
            \key a \minor \time 4/4 { \relative c' { \voiceA } }
        }
  \new Staff = "down" { 
            \key a \minor \time 4/4 { \relative c' { \clef bass  \voiceB } }
        }
>>

\score {
\music 
\layout{}
}

\score {
\unfoldRepeats { \music }
\midi { \tempo 4 = 72 }
}