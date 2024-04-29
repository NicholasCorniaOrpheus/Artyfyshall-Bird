\include "../paper_settings.ly" 
\header { piece = \markup "[A2-B3-C10-D9-E5-F3-G8-H12-J9-K10-L6-M10-N6-O7-P4-Q5-R9-S6-T7-U6-V6]" }

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
    \include "../rh/kk-01-rh-A2.ly"
    \include "../rh/kk-01-rh-B3.ly"
    \include "../rh/kk-01-rh-C10.ly"
    \include "../rh/kk-01-rh-D9.ly"
    \include "../rh/kk-01-rh-E5.ly"
    \include "../rh/kk-01-rh-F3.ly"
    \include "../rh/kk-01-rh-G8.ly"
    \include "../rh/kk-01-rh-H12.ly"
    \mark \markup{}
    \include "../rh/kk-01-rh-J9.ly"
    \include "../rh/kk-01-rh-K10.ly"
    \include "../rh/kk-01-rh-L6.ly"
    \include "../rh/kk-01-rh-M10.ly"
    \include "../rh/kk-01-rh-N6.ly"
    \include "../rh/kk-01-rh-O7.ly"
    \include "../rh/kk-01-rh-P4.ly"
    \include "../rh/kk-01-rh-Q5.ly"
    \include "../rh/kk-01-rh-R9.ly"
    \include "../rh/kk-01-rh-S6.ly"
    \include "../rh/kk-01-rh-T7.ly"
    \include "../rh/kk-01-rh-U6.ly"
    \include "../rh/kk-01-rh-V6.ly"
    \bar"|."
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/kk-01-lh-A2.ly"
    \include "../lh/kk-01-lh-B3.ly"
    \include "../lh/kk-01-lh-C10.ly"
    \include "../lh/kk-01-lh-D9.ly"
    \include "../lh/kk-01-lh-E5.ly"
    \include "../lh/kk-01-lh-F3.ly"
    \include "../lh/kk-01-lh-G8.ly"
    \include "../lh/kk-01-lh-H12.ly"
    \include "../lh/kk-01-lh-J9.ly"
    \include "../lh/kk-01-lh-K10.ly"
    \include "../lh/kk-01-lh-L6.ly"
    \include "../lh/kk-01-lh-M10.ly"
    \include "../lh/kk-01-lh-N6.ly"
    \include "../lh/kk-01-lh-O7.ly"
    \include "../lh/kk-01-lh-P4.ly"
    \include "../lh/kk-01-lh-Q5.ly"
    \include "../lh/kk-01-lh-R9.ly"
    \include "../lh/kk-01-lh-S6.ly"
    \include "../lh/kk-01-lh-T7.ly"
    \include "../lh/kk-01-lh-U6.ly"
    \include "../lh/kk-01-lh-V6.ly"
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}