\version "2.20.0"

% http://lilypond.org/doc/v2.18/Documentation/notation/repeats-in-midi


lhRepeat = {}
rhRepeat = {}
voiceA = 
{
    d''8 e''8 c''8 a'8~ a'8 b'8 g'4 | d''8 e''8 c''8 a'8~ a'8 b'8 g'4 | \break
    d'8 e' c' a~ a b r4 | r2 <b f' g'>4 d'8( dis' \break
    e' c''4 e'8 c''4 e'8 c''~ c''2~ c''8) c''( d'' dis'' e'' c'' d'' e'' e'' b' d''4 \break
    c''2.) d'8( dis' e' c''4 e'8 c''4 e'8 c''~ c''2.) a'8( g' \break
    fis' a' c'' e'' e'' d'' c'' a' <f' d''>2.) d'8( dis' e' c''4 e'8 c''4 e'8 c''~ \break
    c''2~) c''8( c'' d'' dis'' e'' c'' d'' e''~ e'' b' d''4 c''2.) c''8( d'' \break
    e'' c'' d'' e''~ e'' c'' d'' c'' e'' c'' d'' e''~ e'' c'' d'' c'' \break
    e'' c'' d'' e''~ e'' b' d''4 c''2.) d'8 dis' c''2. r4 \break
}
voiceB = 
{
    r1 | r1 | \break
    r2 r4 a8 aes g4\staccato r g,\staccato r \break
    c <e g> c <e bes> c <f a>\staccato <e g>\staccato r <c e g> r <b, f g> r \break
    c <e g> <e g> r c <e g> c <e bes> c <f a>\staccato <e g>\staccato r \break
    d <fis a> d <fis a> g\staccato g,\staccato a,\staccato b,\staccato c <e g> c <e bes> \break
    c <f a> <e g> r <c e g> r <b, f g> r c <e g> <e g> r \break
    c'2 <bes c'> <a c'> <aes c'> \break
    <g c'>4 r <b, f g> r <c e g>\staccato g,\staccato a,\staccato b,\staccato <c e g>\staccato g,\staccato c,\staccato r \break
}
% Timing change to 1: c''''' 
% Timing change to 2: b'''' 
% Timing change to 4: a'''' 
% Timing change to 8: g'''' 
% Mark linebreak    : f'''' 
% Mark Rest         : e''''
% Mark Staccato     : d'''' 

music = \new PianoStaff << 

  \new Staff = "up" { 
            \key c \major \time 4/4 { { \voiceA } }
        }
  \new Staff = "down" { 
            \key c \major \time 4/4 { { \clef bass  \voiceB } }
        }
>>

\score {
\music 
\layout{}
}

\score {
\unfoldRepeats { \music }
\midi { \tempo 4 = 120 }
}
