\version "2.20.0"

% http://lilypond.org/doc/v2.18/Documentation/notation/repeats-in-midi


% this has tons of errors, I suspect because of how I placed the \sustain, but it
% seems to work just fine, including in the midi.


preambleRh = { r4 r r | r r r | }

mainSongRh = \relative c'
{
    d2 d4 | a'2 a4 | e4. f8 e4 | \break
    d2.~ | d4 a'4( c | d2 c4 | a b g | a2.~ | a2) d4( | \break
    d2 d4 | c2 a4 | a4 g f | e2.~ | e2.) | d2( a'4 | \break
    g2 f4 | e d c | d2.~ | d2.) |
}

endRh = 
{
    <f d'>2.~ | <f d'>2. |
}

chordI = \relative c
{
    d4 f a
}
chordII = \relative c
{
    c4 e g
}
preambleLh = { \sustainOn\chordI \chordI }
mainSongLh = 
{
    \chordI | \chordI | \sustainOff\sustainOn\chordII | \break
    \sustainOff\sustainOn\chordI | \chordI | \sustainOff\sustainOn\chordI | d,4\sustainOff\sustainOn  g b | \sustainOff\sustainOn\chordI | \chordI | \break
    \sustainOff\sustainOn\chordI | c,4\sustainOff\sustainOn f a | f4\sustainOff e d | \sustainOn\chordII | \chordII | \sustainOff\sustainOn\chordI | \break
    \sustainOff\sustainOn\chordII | \sustainOff\sustainOn\chordII | \sustainOff\sustainOn\chordI | \chordI | 
}
endLh = 
{ 
    \chordI | d2. |
}


voiceA = 
{
    \preambleRh \repeat volta 2 { \mainSongRh } \endRh

}
voiceB = 
{
    \preambleLh \repeat volta 2 { \mainSongLh } \endLh
    
}

music = \new PianoStaff << 

  \new Staff = "up" { \set Staff.pedalSustainStyle = #'bracket
            \key d \minor \time 3/4 { \relative c' { \voiceA } }
        }
  \new Staff = "down" { \set Staff.pedalSustainStyle = #'bracket
            \key d \minor \time 3/4 { \relative c' { \clef bass  \voiceB } }
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