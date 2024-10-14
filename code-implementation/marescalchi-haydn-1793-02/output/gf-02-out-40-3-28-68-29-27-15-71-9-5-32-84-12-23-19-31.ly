\include "../paper_settings.ly" 
\header { piece = \markup "[40-3-28-68-29-27-15-71-9-5-32-84-12-23-19-31]" }

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
    \mark \markup{Prima parte del trio}
    \include "../rh/gf-02-rh-40.ly"
    \include "../rh/gf-02-rh-3.ly"
    \include "../rh/gf-02-rh-28.ly"
    \include "../rh/gf-02-rh-68.ly"
    \include "../rh/gf-02-rh-29.ly"
    \include "../rh/gf-02-rh-27.ly"
    \include "../rh/gf-02-rh-15.ly"
    \include "../rh/gf-02-rh-71.ly"
    \bar"||"
    \mark \markup{Seconda parte del trio}
    \include "../rh/gf-02-rh-9.ly"
    \include "../rh/gf-02-rh-5.ly"
    \include "../rh/gf-02-rh-32.ly"
    \include "../rh/gf-02-rh-84.ly"
    \include "../rh/gf-02-rh-12.ly"
    \include "../rh/gf-02-rh-23.ly"
    \include "../rh/gf-02-rh-19.ly"
    \include "../rh/gf-02-rh-31.ly"
    \bar"|."
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/gf-02-lh-40.ly"
    \include "../lh/gf-02-lh-3.ly"
    \include "../lh/gf-02-lh-28.ly"
    \include "../lh/gf-02-lh-68.ly"
    \include "../lh/gf-02-lh-29.ly"
    \include "../lh/gf-02-lh-27.ly"
    \include "../lh/gf-02-lh-15.ly"
    \include "../lh/gf-02-lh-71.ly"
    \include "../lh/gf-02-lh-9.ly"
    \include "../lh/gf-02-lh-5.ly"
    \include "../lh/gf-02-lh-32.ly"
    \include "../lh/gf-02-lh-84.ly"
    \include "../lh/gf-02-lh-12.ly"
    \include "../lh/gf-02-lh-23.ly"
    \include "../lh/gf-02-lh-19.ly"
    \include "../lh/gf-02-lh-31.ly"
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}