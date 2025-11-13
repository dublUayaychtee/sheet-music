\version "2.18.2"

\header{
  title = "O Bella ciao"
  composer = "Volkslied aus Italien"
}
\language "deutsch"

RH = \relative c' {

  \numericTimeSignature \time 4/4
  \clef treble
  \key f \major
  \autoBeamOff
  \set Staff.instrumentName = #"Diskant"
  r2 r8 a d e
  f8 d4.~ d8 a d e
  f8 d4.~ d8 a d e
  f4 e8 d f4 e8 d
  a'4 a a8 a g a
  b b4.~ b8 b a g
  b a4.~ a8 a g f
  e4 a f e
  d1
}

LH = \relative c, {

  \numericTimeSignature \time 4/4
  \clef bass
  \key f \major
  \autoBeamOff
  \set Staff.instrumentName = #"Bass"
  r1 d4 <  d' f a > a < d f a >
  d, < d' f a  > a < d f a  >
  d, < d' f a  > a < d f a  >
  e, < g' a c > a, < g' a c >
  d, < d' f a  > a < d f a >
  g, < g' b d > d, < g' b d >
  e, < g' a c > a, < g' a c >
  d, < d' f a > < d, d' f a >2
}

StropheEins =
\lyricmode {
  U -- na mat -- ti -- na __
  mi son sve -- glia -- to __ o bel -- la
  ciao, bel -- la ciao, bel -- la
  ciao ciao ciao, u -- na mat --
  ti -- na __ mi son sve --
  glia -- to __ ed ho tro --
  va -- to l'in -- va
  sor.
}

StropheZwei =
\lyricmode {
  Oh! par -- ti -- gi -- a __ -- no, por -- ta -- mi
  via, __ o bel -- la
  ciao, bel -- la ciao, bel -- la
  ciao ciao ciao, Oh! par -- ti -- gi -- a -- no, __ por -- ta -- mi
  vi -- a __ che __ mi sen -- to di mo -- rir.
}

\score
{
  \new PianoStaff
  <<
    \set PianoStaff.instrumentName = #"Accordion "
    \new Staff = "Discant"
    <<
      \new Voice = "upper" { \RH }
      \new Lyrics \lyricsto "upper" { \StropheEins }
      \new Lyrics \lyricsto "upper" { \StropheZwei }
    >>
    <<
      \new Staff = "Bass" \LH
      \new ChordNames
      \chordmode {
        \germanChords

        s1 d4 d:m a d:m d d:m a d:m d d:m a d:m
        e a:7 a a:7 d d:m a d:m g g:m d g:m
        a a:7 a a:7 d d:m d2:m/d
      }
    >>
  >>

}
