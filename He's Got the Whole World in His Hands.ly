\version "2.20.0"

% http://lilypond.org/doc/v2.18/Documentation/notation/repeats-in-midi

% key of g major, this is a G chord
gi = \relative c'
{
    <g b d>4
}
% c chord
giv = \relative c'
{
    <g c e>4
}
% d7 chord
gv = \relative c' 
{
    <fis, d' e>4
}
% c chord
ci = \relative c
{
    <c e g>4
}
% f chord
civ = \relative c'
{
    <c f' a>4
}
% g7 chord
cv = \relative c,
{
    <b f' g>4
}
% f chord
fi = \relative c'
{
    <f a c>4
}
% b chord
fiv = \relative c'
{
    <f bes' d>4
}
% c7 chord
fv = \relative c'
{
    <d bes c>4
}
gSongRh = \relative c'
{
}

gSongLh = \relative c
{
    r8 r4 | \gi \gi \gi \gi | \gi \gi \gi \gi | \break
    \gv \gv \gv \gv | \gv \gv \gv \gv | \gi \gi \gi \gi \break
    \gi \gi \gi \gi | \gv \gv \gv \gv | <g b d>8 \giv <g b d>8 r8  \break
}

cSongRh = 
{

}
cSongLh = 
{
    r8 r4 | \ci \ci \ci \ci | \ci \ci \ci \ci | \break
    \cv \cv \cv \cv | \cv \cv \cv \cv | \ci \ci \ci \ci \break
    \ci \ci \ci \ci | \cv \cv \cv \cv | <c b d>8 \civ <c b d>8 r8  \break
}
fSongRh = 
{
    
}
fSongLh = 
{
    r8 r4 | \fi \fi \fi \fi | \fi \fi \fi \fi | \break
    \fv \fv \fv \fv | \fv \fv \fv \fv | \fi \fi \fi \fi \break
    \fi \fi \fi \fi | \fv \fv \fv \fv | <f b d>8 \fiv <f b d>8 r8  \break
}
gFullRh = { \key g \major \time 4/4 { \relative c' { \partial 4. \gSongRh } } }
gFullLh = { \key g \major \time 4/4 { \relative c' { \clef bass \partial 4. \gSongLh } } }
cFullRh = { \key c \major \time 4/4 { \relative c' { \partial 4. \cSongRh } } }
cFullLh = { \key c \major \time 4/4 { \relative c' { \clef bass \partial 4. \cSongLh } } }
fFullRh = { \key f \major \time 4/4 { \relative c' { \partial 4. \fSongRh } } }
fFullLh = { \key f \major \time 4/4 { \relative c' { \clef bass \partial 4. \fSongLh } } }



music = \new PianoStaff << 

    \new Staff = "up" {
            \gFullRh \break
        }
    \new Staff = "down" { 
            \gFullLh \break
        }
    \new Staff = "up" {
            \cFullRh \break
        }
    \new Staff = "down" { 
            \cFullLh \break
        }
>>

% \new PianoStaff << 

%   \new Staff = "up" {
%             \gFullRh \break
%             \cFullRh \break
%             \fFullRh \break
%         }
%   \new Staff = "down" { 
%             \gFullLh \break
%             \cFullLh \break
%             \fFullLh \break
%         }
% >>
\score {
\music 
\layout{}
}

\score {
\unfoldRepeats { \music }
\midi { \tempo 4 = 105 }
}