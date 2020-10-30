\version "2.20.0"


% \parallelMusic #'(voiceA voiceB) {
%     % Bar 1
%     b'8( d b g~ g2) | 
%     c1 |

%     b8( d b g b4 g8 f |
%     c |

%     a1) |
%     c |
% }

voiceA = 
{
    b'8( d b g~ g2) | b8( d b g b4 g8 fis | f1) | \break
    d'8( b a g d' b a g) | bes( d bes g~ g2) | bes8( d bes g bes4 a8 g | \break
    b1) | d8( b a g d' b a g) | c( b c b c d~ d4) | \break
    bes8( d bes g bes a~ a4 | g1) | 
}
voiceB = 
{
    <g b d'>4 <g b d'> <g b d'> <g b d'> | <g b d'> <g b d'> <g b d'> <g b d'>  | <g b d'> <g b d'> <g b d'> <g b d'> | \break
    <g b d'> r r r | <g c' e'> <g c' e'> <g c' e'> <g c' e'> | <g c' e'> <g c' e'> <g c' e'> <g c' e'> | \break
    <g b d'> <g b d'> <g b d'> <g b d'> | <g b d'> r r r | <fis c' d'> <fis c' d'> <fis c' d'> <fis c' d'> | \break
    <g c' e'> <g c' e'> <g c' e'> <g c' e'> | <g b d'> <g b d'> <g b d'> <g b d'> | 
}
rhRepeatOne = 
{
    d'8 d c c b b a a | \break
}
rhRepeatTwo = 
{
    r4 <dis' fis>8 <e g>~ <e g>2 | \break
}
lhRepeatOne = 
{
    <fis c' d'>2 r2 | \break
}
lhRepeatTwo = 
{
    <g b d'>4 r4 <g b d'>2
}
\score {
 \new PianoStaff << 
  \new Staff = "up" { 
            \key g \major { \relative c' { \voiceA \rhRepeatOne } \relative c' { \voiceA \rhRepeatTwo } } 
        }
  \new Staff = "down" { 
            \key g \major { \relative c, \clef bass \voiceB \lhRepeatOne \voiceB \lhRepeatTwo } 
        }
>>
\layout{}
\midi { \tempo 4 = 96 }
}