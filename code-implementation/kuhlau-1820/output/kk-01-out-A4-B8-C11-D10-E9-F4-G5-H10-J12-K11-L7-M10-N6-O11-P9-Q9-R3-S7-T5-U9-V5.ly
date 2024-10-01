\include "../paper_settings.ly" 
\header { piece = \markup "[A4-B8-C11-D10-E9-F4-G5-H10-J12-K11-L7-M10-N6-O11-P9-Q9-R3-S7-T5-U9-V5]" }

  %! abjad.LilyPondFile._get_format_pieces()
\score
  %! abjad.LilyPondFile._get_format_pieces()
{
    <<
    %Harpsichord part
    \context PianoStaff \with { instrumentName = "Clav." midiInstrument=#"piano"}
    <<
    \context Staff = "rh" {
    \include "../voice_option.ly"
    \mark \markup{}
    \include "../rh/kk-01-rh-A4.ly"
    \include "../rh/kk-01-rh-B8.ly"
    \include "../rh/kk-01-rh-C11.ly"
    \include "../rh/kk-01-rh-D10.ly"
    \include "../rh/kk-01-rh-E9.ly"
    \include "../rh/kk-01-rh-F4.ly"
    \include "../rh/kk-01-rh-G5.ly"
    \include "../rh/kk-01-rh-H10.ly"
    \mark \markup{}
    \include "../rh/kk-01-rh-J12.ly"
    \include "../rh/kk-01-rh-K11.ly"
    \include "../rh/kk-01-rh-L7.ly"
    \include "../rh/kk-01-rh-M10.ly"
    \include "../rh/kk-01-rh-N6.ly"
    \include "../rh/kk-01-rh-O11.ly"
    \include "../rh/kk-01-rh-P9.ly"
    \include "../rh/kk-01-rh-Q9.ly"
    \include "../rh/kk-01-rh-R3.ly"
    \include "../rh/kk-01-rh-S7.ly"
    \include "../rh/kk-01-rh-T5.ly"
    \include "../rh/kk-01-rh-U9.ly"
    \include "../rh/kk-01-rh-V5.ly"
    \bar"|."
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/kk-01-lh-A4.ly"
    \include "../lh/kk-01-lh-B8.ly"
    \include "../lh/kk-01-lh-C11.ly"
    \include "../lh/kk-01-lh-D10.ly"
    \include "../lh/kk-01-lh-E9.ly"
    \include "../lh/kk-01-lh-F4.ly"
    \include "../lh/kk-01-lh-G5.ly"
    \include "../lh/kk-01-lh-H10.ly"
    \include "../lh/kk-01-lh-J12.ly"
    \include "../lh/kk-01-lh-K11.ly"
    \include "../lh/kk-01-lh-L7.ly"
    \include "../lh/kk-01-lh-M10.ly"
    \include "../lh/kk-01-lh-N6.ly"
    \include "../lh/kk-01-lh-O11.ly"
    \include "../lh/kk-01-lh-P9.ly"
    \include "../lh/kk-01-lh-Q9.ly"
    \include "../lh/kk-01-lh-R3.ly"
    \include "../lh/kk-01-lh-S7.ly"
    \include "../lh/kk-01-lh-T5.ly"
    \include "../lh/kk-01-lh-U9.ly"
    \include "../lh/kk-01-lh-V5.ly"
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}