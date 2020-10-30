\version "2.20.0"

lh_mv_A = 
{
    f4\staccato f\staccato a\staccato | c\staccato a\staccato f\staccato | e\staccato r4 d'4 | c4 r4 r4 | e,\staccato e\staccato g\staccato |
    bes\staccato g\staccato e\staccato |
}
lh_rA_A = 
{
    f\staccato r d' | c r r | 
}
lh_rA_B = 
{
    f\staccato r c' | <f a,> r r | 
}
lh_rB_A =
{
    a2.~ | a4 bes b | c f,\staccato g\staccato | a\staccato bes\staccato c\staccato |
}
lh_rB_B =
{
    a4 a bes | c d e | f r <bes, e> | <a f'> r r |
}
lh_mv_B = 
{
    <bes d>2. | <bes d>2. | d4 d bes | d( f) r |
    <a, c>2. | <a c>2. | c4 c a | c( f) r |
    <g, bes>2. | <g bes>2. | bes4 bes g | bes c bes |
}
rh_mv_A = 
{
    <f, a c>4\staccato r r | <f a c>4\staccato r r | <e bes' c>\staccato r <e bes' c> | <e bes' c> r r | <e bes' c>\staccato r r |
    <e bes' c>\staccato r r |
}
rh_rA_A = 
{
    <f a c>\staccato r <f a c> | <f a c> r r |
}

rh_rA_B = 
{
    <f a c>\staccato r <e bes' c> | <f a c> r r | 
}
rh_mv_B = 
{
    f <bes d> <bes d> | f <bes d> <bes d> | f <bes d> <bes d> | f <bes d> <bes d> |
    f <a c> <a c> | f <a c> <a c> | f <a c> <a c> | f <a c> <a c> |
    e4 <bes' c> <bes c> | e, <bes' c> <bes c> | e, <bes' c> <bes c> | e, <bes' c> <bes c> | 
}
rh_rB_A =
{
    f4 <a c> <a c> | f r r | <f a c> r r | r r r | 
}
rh_rB_B =
{
    <f a c>4 r r | <e bes' c> r r | <f a c> r <e bes' c> | <f a c> r r |
}
voiceA = 
{
    \lh_mv_A \lh_rA_A \relative c' { \lh_mv_A \lh_rA_B } \lh_mv_B \lh_rB_A \lh_mv_B \lh_rB_B
}
voiceB = 
{
    \rh_mv_A \rh_rA_A \relative c' { \rh_mv_A \rh_rA_B } \rh_mv_B \rh_rB_A \rh_mv_B \rh_rB_B
}
\score {
 \new PianoStaff << 

  \new Staff = "up" { 
            \key f \major \time 3/4 { \relative c' { \voiceA } }
        }
  \new Staff = "down" { 
            \key f \major \time 3/4 { \relative c' { \clef bass \voiceB } }
        }
>>
\layout{}
\midi { \tempo 4 = 109 }
}