\include "../paper_settings.ly" 
\header { piece = \markup "[A10-B4-C11-D6-E3-F4-G3-H5-J11-K11-L4-M4-N12-O10-P12-Q9-R2-S10-T5-U11-V12]" }

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
    \include "../rh/kk-01-rh-A10.ly"
    \include "../rh/kk-01-rh-B4.ly"
    \include "../rh/kk-01-rh-C11.ly"
    \include "../rh/kk-01-rh-D6.ly"
    \include "../rh/kk-01-rh-E3.ly"
    \include "../rh/kk-01-rh-F4.ly"
    \include "../rh/kk-01-rh-G3.ly"
    \include "../rh/kk-01-rh-H5.ly"
    \mark \markup{}
    \include "../rh/kk-01-rh-J11.ly"
    \include "../rh/kk-01-rh-K11.ly"
    \include "../rh/kk-01-rh-L4.ly"
    \include "../rh/kk-01-rh-M4.ly"
    \include "../rh/kk-01-rh-N12.ly"
    \include "../rh/kk-01-rh-O10.ly"
    \include "../rh/kk-01-rh-P12.ly"
    \include "../rh/kk-01-rh-Q9.ly"
    \include "../rh/kk-01-rh-R2.ly"
    \include "../rh/kk-01-rh-S10.ly"
    \include "../rh/kk-01-rh-T5.ly"
    \include "../rh/kk-01-rh-U11.ly"
    \include "../rh/kk-01-rh-V12.ly"
    \bar"|."
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/kk-01-lh-A10.ly"
    \include "../lh/kk-01-lh-B4.ly"
    \include "../lh/kk-01-lh-C11.ly"
    \include "../lh/kk-01-lh-D6.ly"
    \include "../lh/kk-01-lh-E3.ly"
    \include "../lh/kk-01-lh-F4.ly"
    \include "../lh/kk-01-lh-G3.ly"
    \include "../lh/kk-01-lh-H5.ly"
    \include "../lh/kk-01-lh-J11.ly"
    \include "../lh/kk-01-lh-K11.ly"
    \include "../lh/kk-01-lh-L4.ly"
    \include "../lh/kk-01-lh-M4.ly"
    \include "../lh/kk-01-lh-N12.ly"
    \include "../lh/kk-01-lh-O10.ly"
    \include "../lh/kk-01-lh-P12.ly"
    \include "../lh/kk-01-lh-Q9.ly"
    \include "../lh/kk-01-lh-R2.ly"
    \include "../lh/kk-01-lh-S10.ly"
    \include "../lh/kk-01-lh-T5.ly"
    \include "../lh/kk-01-lh-U11.ly"
    \include "../lh/kk-01-lh-V12.ly"
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}