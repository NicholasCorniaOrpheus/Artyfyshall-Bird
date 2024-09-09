\include "../paper_settings.ly" 
\header { piece = \markup "[A2-B10-C2-D4-E12-F10-G10-H7-J8-K11-L6-M11-N11-O9-P6-Q6-R9-S6-T2-U5-V12]" }

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
    \include "../rh/kk-01-rh-B10.ly"
    \include "../rh/kk-01-rh-C2.ly"
    \include "../rh/kk-01-rh-D4.ly"
    \include "../rh/kk-01-rh-E12.ly"
    \include "../rh/kk-01-rh-F10.ly"
    \include "../rh/kk-01-rh-G10.ly"
    \include "../rh/kk-01-rh-H7.ly"
    \mark \markup{}
    \include "../rh/kk-01-rh-J8.ly"
    \include "../rh/kk-01-rh-K11.ly"
    \include "../rh/kk-01-rh-L6.ly"
    \include "../rh/kk-01-rh-M11.ly"
    \include "../rh/kk-01-rh-N11.ly"
    \include "../rh/kk-01-rh-O9.ly"
    \include "../rh/kk-01-rh-P6.ly"
    \include "../rh/kk-01-rh-Q6.ly"
    \include "../rh/kk-01-rh-R9.ly"
    \include "../rh/kk-01-rh-S6.ly"
    \include "../rh/kk-01-rh-T2.ly"
    \include "../rh/kk-01-rh-U5.ly"
    \include "../rh/kk-01-rh-V12.ly"
    \bar"|."
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/kk-01-lh-A2.ly"
    \include "../lh/kk-01-lh-B10.ly"
    \include "../lh/kk-01-lh-C2.ly"
    \include "../lh/kk-01-lh-D4.ly"
    \include "../lh/kk-01-lh-E12.ly"
    \include "../lh/kk-01-lh-F10.ly"
    \include "../lh/kk-01-lh-G10.ly"
    \include "../lh/kk-01-lh-H7.ly"
    \include "../lh/kk-01-lh-J8.ly"
    \include "../lh/kk-01-lh-K11.ly"
    \include "../lh/kk-01-lh-L6.ly"
    \include "../lh/kk-01-lh-M11.ly"
    \include "../lh/kk-01-lh-N11.ly"
    \include "../lh/kk-01-lh-O9.ly"
    \include "../lh/kk-01-lh-P6.ly"
    \include "../lh/kk-01-lh-Q6.ly"
    \include "../lh/kk-01-lh-R9.ly"
    \include "../lh/kk-01-lh-S6.ly"
    \include "../lh/kk-01-lh-T2.ly"
    \include "../lh/kk-01-lh-U5.ly"
    \include "../lh/kk-01-lh-V12.ly"
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}