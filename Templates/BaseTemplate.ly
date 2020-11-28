\version "2.20.0"

% http://lilypond.org/doc/v2.18/Documentation/notation/repeats-in-midi


mainSongRh = \relative c'
{
}

mainSongLh = \relative c
{
    r8 r4 | \chordmode { g4 g g g } | 
}

voiceA = 
{
    { \partial 4. \mainSongRh }
}
voiceB = 
{
    { \partial 4. \mainSongLh }
    
}

music = \new PianoStaff << 

  \new Staff = "up" { \set Staff.pedalSustainStyle = #'bracket
            \key g \major \time 4/4 { \relative c' { \voiceA } }
        }
  \new Staff = "down" { 
            \key g \major \time 4/4 { \relative c' { \clef bass  \voiceB } }
        }
>>

\score {
\music 
\layout{}
}

\score {
\unfoldRepeats { \music }
\midi { \tempo 4 = 105 }
}