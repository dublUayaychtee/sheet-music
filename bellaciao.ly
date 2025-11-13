\version "2.22"

\header{
  title = "O Bella ciao"
  composer = "Volkslied aus Italien"
}

\language "español"

RH = \relative do' {

  \numericTimeSignature \time 4/4
  \clef treble
  \key la \minor
  %\set Staff.instrumentName = #"Diskant"
  \partial 4. mi8 la si |
  do8 la4.~ 8 mi la si |
  do8 la4.~ 8 mi la si | \break
  do4 si8 la do4 si8 la |
  mi'4 mi mi8 mi re mi |
  fa fa4.~ 8 fa mi re |
  fa mi4.~ 8 mi re do |
  si4 mi si do |
  la1 |
}

LH = \fixed do {

  \numericTimeSignature \time 4/4
  \clef bass
  \key la \minor
  \stemDown
  %\set Staff.instrumentName = #"Bass"
  \partial 4. r8 r4 |
  \repeat unfold 3 { la,8 la^"m" mi, la la, la mi, la }
  mi, mi^"7" si, mi mi, mi si, mi |
  re re'^"m" la, re' re re' la, re' |
  la,8 la^"m" mi, la la, la mi, la
  mi, mi^"7" si, mi mi, mi si, mi |
  la,8 la^"m" mi, la <la, la >2 |
}

StropheEins =
\lyricmode {
  U -- na mat -- ti -- na __ mi son sve -- glia -- to __
  O bel -- la ciao, bel -- la ciao, bel -- la ciao ciao ciao
  U -- na mat -- ti -- na __ mi son sve -- glia -- to __
  Eo ho tro -- va -- to l'in -- va -- sor.
}

StropheZwei =
\lyricmode {
  O par -- ti -- gia -- no __ por -- ta -- mi vi -- a __
  O bel -- la ciao, bel -- la ciao, bel -- la ciao ciao ciao
  O par -- ti -- gia -- no, __ por -- ta -- mi vi -- a __
  \skip Che mi sen -- to di mo -- rir.
}

\score
{
  \new PianoStaff
  <<
    \set PianoStaff.instrumentName = #"Accordion "
    \new Staff
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
      }
    >>
  >>

}
