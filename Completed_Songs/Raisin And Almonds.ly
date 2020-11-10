\version "2.20.0"

% http://lilypond.org/doc/v2.18/Documentation/notation/repeats-in-midi


chordI = \relative c
{
    d4 f a
}

chordVII = \relative c
{
    cis g' a
}

chordIV = \relative c
{
    d4 g bes
}
mainSongRh = \relative c'
{
    d4( f | a\sustainOn a a | a4.\sustainOff\sustainOn g8 f g | a2.~\sustainOff\sustainOn | a4) d,( f \break
    a\sustainOff\sustainOn a a | a4.\sustainOff\sustainOn g8 f g | a2.~\sustainOff\sustainOn | a2) a4( | \break
    e2\sustainOff\sustainOn f4 | g\sustainOff\sustainOn f e | f\sustainOff\sustainOn d2~ | d2.) | bes'2\sustainOff\sustainOn( bes4 | \break
    bes\sustainOff\sustainOn cis d | a2.\sustainOff\sustainOn~ | a2.) | e2\sustainOff\sustainOn( f4 | g\sustainOff\sustainOn f e | \break
    f\sustainOff\sustainOn d2~ | d2.) | a'2\sustainOff\sustainOn( a4 | <g cis>4\sustainOff\sustainOn bes a | <f d'>2.\sustainOff\sustainOn \break
    <f d'>2.\sustainOff\sustainOn) | a'2\sustainOff\sustainOn( a4 | <g cis>4\sustainOff\sustainOn bes a | <f d'>2.\sustainOff\sustainOn~ | <f d'>4) \break
}

mainSongLh = \relative c
{
    r4 r | \chordI | \chordI | \chordI | \chordI | \break
    \chordI | \chordI | \chordI | \chordI | \break
    \chordVII | \chordVII | \chordI | \chordI | \chordIV | \break
    \chordIV | \chordI | \chordI | \chordVII | \chordVII | \break
    \chordI | \chordI | \chordVII | \chordVII | \chordI | \break
    \chordI | \chordVII | \chordVII | \chordI | bes \break
}

voiceA = 
{
    { \partial 2 \mainSongRh }
}
voiceB = 
{
    { \partial 2 \mainSongLh }
    
}

music = \new PianoStaff << 

  \new Staff = "up" { \set Staff.pedalSustainStyle = #'bracket
            \key d \minor \time 3/4 { \relative c' { \voiceA } }
        }
  \new Staff = "down" { 
            \key d \minor \time 3/4 { \relative c' { \clef bass  \voiceB } }
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