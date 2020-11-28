\version "2.20.0"

% http://lilypond.org/doc/v2.18/Documentation/notation/repeats-in-midi



mainSongRh = 
{
}

repeatRh_A = \relative c'
{

}
repeatRh_B = \relative c'
{

}

mainSongLh = 
{

}
repeatLh_A = \relative c'
{
    
}
repeatLh_B = \relative c'
{
    
}
voiceA = 
{
    \repeat volta 2 { \partial 2. \mainSongRh } \alternative 
    { 
        { \repeatRh_A }
        { \repeatRh_B } 
    }

}
voiceB = 
{
    \repeat volta 2 { \partial 2. \mainSongLh } \alternative
    {
        { \repeatLh_A }
        { \repeatLh_B }
    }
    
}

music = \new PianoStaff << 

  \new Staff = "up" { 
            \key f \major \time 4/4 { \relative c' { \voiceA } }
        }
  \new Staff = "down" { 
            \key f \major \time 4/4 { \relative c' { \clef bass  \voiceB } }
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