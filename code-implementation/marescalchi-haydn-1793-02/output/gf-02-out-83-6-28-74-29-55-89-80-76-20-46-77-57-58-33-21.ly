\include "../paper_settings.ly" 
\header { piece = \markup "[83-6-28-74-29-55-89-80-76-20-46-77-57-58-33-21]" }

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
    \include "../rh/gf-02-rh-83.ly"
    \include "../rh/gf-02-rh-6.ly"
    \include "../rh/gf-02-rh-28.ly"
    \include "../rh/gf-02-rh-74.ly"
    \include "../rh/gf-02-rh-29.ly"
    \include "../rh/gf-02-rh-55.ly"
    \include "../rh/gf-02-rh-89.ly"
    \include "../rh/gf-02-rh-80.ly"
    \bar"||"
    \mark \markup{Seconda parte del trio}
    \include "../rh/gf-02-rh-76.ly"
    \include "../rh/gf-02-rh-20.ly"
    \include "../rh/gf-02-rh-46.ly"
    \include "../rh/gf-02-rh-77.ly"
    \include "../rh/gf-02-rh-57.ly"
    \include "../rh/gf-02-rh-58.ly"
    \include "../rh/gf-02-rh-33.ly"
    \include "../rh/gf-02-rh-21.ly"
    \bar"|."
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/gf-02-lh-83.ly"
    \include "../lh/gf-02-lh-6.ly"
    \include "../lh/gf-02-lh-28.ly"
    \include "../lh/gf-02-lh-74.ly"
    \include "../lh/gf-02-lh-29.ly"
    \include "../lh/gf-02-lh-55.ly"
    \include "../lh/gf-02-lh-89.ly"
    \include "../lh/gf-02-lh-80.ly"
    \include "../lh/gf-02-lh-76.ly"
    \include "../lh/gf-02-lh-20.ly"
    \include "../lh/gf-02-lh-46.ly"
    \include "../lh/gf-02-lh-77.ly"
    \include "../lh/gf-02-lh-57.ly"
    \include "../lh/gf-02-lh-58.ly"
    \include "../lh/gf-02-lh-33.ly"
    \include "../lh/gf-02-lh-21.ly"
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}