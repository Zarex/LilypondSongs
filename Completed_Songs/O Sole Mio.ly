\version "2.20.0"

% http://lilypond.org/doc/v2.18/Documentation/notation/repeats-in-midi


vChord = \relative c' 
{
    e,4. <bes' c>8 <bes c>4 <bes c>4 
}
vChordFollowup = \relative c'
{
    <e, bes' c>4 r4 r4 r4
}
iChord = \relative c'
{
    f,4. <a c>8 <a c>4 <a c>4
}
iChordFollowup = \relative c'
{
    <f, a c>4 r r r
}
ivMinorChord = \relative c'
{
    f,4. <bes des>8 <bes des>4 <bes des>
}
mainSongRh = 
{
    <a' c f>4 <a c f> <a e'> | <a c>2 <a c>~ | <a c>4 <c e> <c e> <bes d> | \break
    <g bes>1~ | <g bes>4 <c e> <c e> <bes d> | <g bes>2 <g bes>2~ | <g bes>4 <e g> <f a> <g bes> | \break
    <a c>1~ | <a c>2. c4 | <bes des>1~ | \break
    <bes des>4 bes4 <des f>4. <bes des>8 | <a c>2 <a c>2~ | <a c>4 a g f | \break
}

repeatRh_A = \relative c'
{
    c'1~ | c4 a g4. f8 | f1~ | f4
}
repeatRh_B = \relative c'
{
    c'1~ | c4 c <bes g'>4. f'8 | <a, c f>1~ | <a c f>4
}
mainSongLh = 
{
    r4 r r | \iChord | \iChordFollowup | \break
    \vChord | \vChordFollowup | \vChord | \vChordFollowup | \break
    \iChord | \iChord | \ivMinorChord | \break
    <f, bes des>1 | \iChord | \iChordFollowup \break
}
repeatLh_A = \relative c'
{
    \vChord | \vChordFollowup | \iChord | <f, a c>4 
}
repeatLh_B = \relative c'
{
    \vChord | e,4 <bes' c> <e, bes' c>4. r8 | f4. <a c>8 <a c>4 c,4 | f,4
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