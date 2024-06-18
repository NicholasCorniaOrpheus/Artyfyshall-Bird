\include "../paper_settings.ly" 
\header { piece = \markup "[A8-B5-C12-D4-E5-F10-G8-H9-J6-K5-L3-M5-N8-O8-P10-Q7-R4-S7-T5-U2-V10]" }

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
    \include "../rh/kk-01-rh-A8.ly"
    \include "../rh/kk-01-rh-B5.ly"
    \include "../rh/kk-01-rh-C12.ly"
    \include "../rh/kk-01-rh-D4.ly"
    \include "../rh/kk-01-rh-E5.ly"
    \include "../rh/kk-01-rh-F10.ly"
    \include "../rh/kk-01-rh-G8.ly"
    \include "../rh/kk-01-rh-H9.ly"
    \mark \markup{}
    \include "../rh/kk-01-rh-J6.ly"
    \include "../rh/kk-01-rh-K5.ly"
    \include "../rh/kk-01-rh-L3.ly"
    \include "../rh/kk-01-rh-M5.ly"
    \include "../rh/kk-01-rh-N8.ly"
    \include "../rh/kk-01-rh-O8.ly"
    \include "../rh/kk-01-rh-P10.ly"
    \include "../rh/kk-01-rh-Q7.ly"
    \include "../rh/kk-01-rh-R4.ly"
    \include "../rh/kk-01-rh-S7.ly"
    \include "../rh/kk-01-rh-T5.ly"
    \include "../rh/kk-01-rh-U2.ly"
    \include "../rh/kk-01-rh-V10.ly"
    \bar"|."
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/kk-01-lh-A8.ly"
    \include "../lh/kk-01-lh-B5.ly"
    \include "../lh/kk-01-lh-C12.ly"
    \include "../lh/kk-01-lh-D4.ly"
    \include "../lh/kk-01-lh-E5.ly"
    \include "../lh/kk-01-lh-F10.ly"
    \include "../lh/kk-01-lh-G8.ly"
    \include "../lh/kk-01-lh-H9.ly"
    \include "../lh/kk-01-lh-J6.ly"
    \include "../lh/kk-01-lh-K5.ly"
    \include "../lh/kk-01-lh-L3.ly"
    \include "../lh/kk-01-lh-M5.ly"
    \include "../lh/kk-01-lh-N8.ly"
    \include "../lh/kk-01-lh-O8.ly"
    \include "../lh/kk-01-lh-P10.ly"
    \include "../lh/kk-01-lh-Q7.ly"
    \include "../lh/kk-01-lh-R4.ly"
    \include "../lh/kk-01-lh-S7.ly"
    \include "../lh/kk-01-lh-T5.ly"
    \include "../lh/kk-01-lh-U2.ly"
    \include "../lh/kk-01-lh-V10.ly"
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}