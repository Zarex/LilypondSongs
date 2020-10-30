\version "2.20.0"

voiceA = 
{
    c'8 | a4 c <a c>4. c8 | bes4 d <bes d>4. d8 | <e bes>4\staccato <e bes>\staccato <d bes>4\staccato  <e bes>\staccato | <f a,>4\staccato <g bes,>4\staccato <a c,>2 | \break
    a,4 c <a c>4. c8 | bes4 d <bes d>4. d8 | <e bes>4\staccato <e bes>\staccato <d bes>4\staccato  <e bes>\staccato <g bes,>4\staccato <f a,>4\staccato <f a,>4. r8 | \break
    a4 f c2 | bes4 d4 <bes d>2 | <e bes>8\staccato <e bes>8\staccato <e bes>4\staccato <d bes>4\staccato  <e bes>\staccato | <f a,>4\staccato <g bes,>4\staccato <a c,>2 | \break 
    a4 f c2 | bes4 d4 <bes d>2 | <e bes>8\staccato <e bes>8\staccato <e bes>4\staccato <d bes>4\staccato  <e bes>\staccato <g bes,>4\staccato <f a,>4\staccato <f a,>4. r8 | \break
}
voiceB = 
{
    r8 | <c, f,>1 | <bes d>1 | c4\staccato bes\staccato a\staccato g\staccato | f\staccato r4 <c' f,>2 | \break
    <c f,>1 | <bes d>1 | c4\staccato bes\staccato a\staccato g\staccato | f\staccato r4 <c' f,>4. r8 | \break
    <c f,>1 | <bes d>1 | c4\staccato bes\staccato a\staccato g\staccato | f\staccato r4 <c' f,>2 | \break
    <c f,>1 | <bes d>1 | c4\staccato bes\staccato a\staccato g\staccato | f\staccato r4 <c' f,>4. r8 | \break
}
\score {
 \new PianoStaff << 
  \new Staff = "up" { 
            \key f \major  { \relative c' { \partial8 \voiceA } }
        }
  \new Staff = "down" { 
            \key f \major  { \relative c' { \clef bass \partial8 \voiceB } }
        }
>>
\layout{}
\midi { \tempo 4 = 109 }
}