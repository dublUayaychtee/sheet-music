\version "2.22.2"

\header{
  title = "O Bella Ciao"
  tagline = ##f
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
  la2~ 8 | \bar ":|."
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
  \partial 8*5 la,8[ la^"m" mi, la] <la, la > |
}

One =
\lyricmode {
  \set stanza = #"1."
  U -- na mat -- ti -- na __ mi son sve -- glia -- to __
  O bel -- la ciao, bel -- la ciao, bel -- la ciao ciao ciao
  U -- na mat -- ti -- na __ mi son sve -- glia -- to __
  Eo ho tro -- va -- to l'in -- va -- sor.
}

Two =
\lyricmode {
  \set stanza = #"2."
  O par -- ti -- gia -- no __ por -- ta -- mi vi -- a __
  O bel -- la ciao, bel -- la ciao, bel -- la ciao ciao ciao
  O par -- ti -- gia -- no __ por -- ta -- mi vi -- a __
  \skip 8 Che mi sen -- to di mo -- rir.
}

Three =
\lyricmode {
  \set stanza = #"3."
  E se io muo -- io __ da par -- ti -- gia -- no __
  O bel -- la ciao, bel -- la ciao, bel -- la ciao ciao ciao
  E se io muo -- io __ da par -- ti -- gia -- no __
  \skip 8 Tu mi de -- vi sep -- pel -- lir
}

Four =
\lyricmode {
  \set stanza = #"4."
  Mi sep -- pel -- li -- re __  las -- sù~in mon -- ta -- gna __
  O bel -- la ciao, bel -- la ciao, bel -- la ciao ciao ciao
  Mi sep -- pel -- li -- re __ las -- sù~in mon -- ta -- gna __
  Sot -- to l'om -- bra di un bel fior
}

Five =
\lyricmode {
  \set stanza = #"5."
  E __ _ le gen -- ti __ che pas -- se -- ran -- no __
  O bel -- la ciao, bel -- la ciao, bel -- la ciao ciao ciao
  E __ _ le gen -- ti __ che pas -- se -- ran -- no __
  \skip 8 Mi di -- ran -- no: Che bel fior
}

Six =
\lyricmode {
  \set stanza = #"6."
  È que -- sto~il fio -- re __ del par -- ti -- gia -- no __
  O bel -- la ciao, bel -- la ciao, bel -- la ciao ciao ciao
  È que -- sto~il fio -- re __  del par -- ti -- gia -- no __
  \skip 8 Mor -- to per la li -- ber -- tà
}

\score
{
  \new PianoStaff
  <<
    \set PianoStaff.instrumentName = #"Accordion "
    \new Staff
    <<
      \new Voice = "upper" { \RH }
      \new Lyrics \lyricsto "upper" { \One }
      \new Lyrics \lyricsto "upper" { \Two }
      \new Lyrics \lyricsto "upper" { \Three }
      \new Lyrics \lyricsto "upper" { \Four }
      \new Lyrics \lyricsto "upper" { \Five }
      \new Lyrics \lyricsto "upper" { \Six }
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
