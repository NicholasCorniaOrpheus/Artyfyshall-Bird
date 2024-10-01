\score{
  <<
    %Upper voice part
    \context Staff = "upper" \with { instrumentName = "Discant" }
    <<
    \set Staff.midiInstrument =#"violin" {
\relative c''{d4 d g2}
~\relative c''{g'8 g c g f4 f}
    }
  >>
    >>
}