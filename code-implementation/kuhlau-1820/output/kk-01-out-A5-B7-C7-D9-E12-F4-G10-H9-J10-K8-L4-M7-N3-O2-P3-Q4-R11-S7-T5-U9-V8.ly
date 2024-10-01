\include "../paper_settings.ly" 
\header { piece = \markup "[A5-B7-C7-D9-E12-F4-G10-H9-J10-K8-L4-M7-N3-O2-P3-Q4-R11-S7-T5-U9-V8]" }

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
    \include "../rh/kk-01-rh-A5.ly"
    \include "../rh/kk-01-rh-B7.ly"
    \include "../rh/kk-01-rh-C7.ly"
    \include "../rh/kk-01-rh-D9.ly"
    \include "../rh/kk-01-rh-E12.ly"
    \include "../rh/kk-01-rh-F4.ly"
    \include "../rh/kk-01-rh-G10.ly"
    \include "../rh/kk-01-rh-H9.ly"
    \mark \markup{}
    \include "../rh/kk-01-rh-J10.ly"
    \include "../rh/kk-01-rh-K8.ly"
    \include "../rh/kk-01-rh-L4.ly"
    \include "../rh/kk-01-rh-M7.ly"
    \include "../rh/kk-01-rh-N3.ly"
    \include "../rh/kk-01-rh-O2.ly"
    \include "../rh/kk-01-rh-P3.ly"
    \include "../rh/kk-01-rh-Q4.ly"
    \include "../rh/kk-01-rh-R11.ly"
    \include "../rh/kk-01-rh-S7.ly"
    \include "../rh/kk-01-rh-T5.ly"
    \include "../rh/kk-01-rh-U9.ly"
    \include "../rh/kk-01-rh-V8.ly"
    \bar"|."
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/kk-01-lh-A5.ly"
    \include "../lh/kk-01-lh-B7.ly"
    \include "../lh/kk-01-lh-C7.ly"
    \include "../lh/kk-01-lh-D9.ly"
    \include "../lh/kk-01-lh-E12.ly"
    \include "../lh/kk-01-lh-F4.ly"
    \include "../lh/kk-01-lh-G10.ly"
    \include "../lh/kk-01-lh-H9.ly"
    \include "../lh/kk-01-lh-J10.ly"
    \include "../lh/kk-01-lh-K8.ly"
    \include "../lh/kk-01-lh-L4.ly"
    \include "../lh/kk-01-lh-M7.ly"
    \include "../lh/kk-01-lh-N3.ly"
    \include "../lh/kk-01-lh-O2.ly"
    \include "../lh/kk-01-lh-P3.ly"
    \include "../lh/kk-01-lh-Q4.ly"
    \include "../lh/kk-01-lh-R11.ly"
    \include "../lh/kk-01-lh-S7.ly"
    \include "../lh/kk-01-lh-T5.ly"
    \include "../lh/kk-01-lh-U9.ly"
    \include "../lh/kk-01-lh-V8.ly"
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}