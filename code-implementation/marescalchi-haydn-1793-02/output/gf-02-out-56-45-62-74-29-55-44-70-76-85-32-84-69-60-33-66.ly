\include "../paper_settings.ly" 
\header { piece = \markup "[56-45-62-74-29-55-44-70-76-85-32-84-69-60-33-66]" }

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
    \include "../rh/gf-02-rh-56.ly"
    \include "../rh/gf-02-rh-45.ly"
    \include "../rh/gf-02-rh-62.ly"
    \include "../rh/gf-02-rh-74.ly"
    \include "../rh/gf-02-rh-29.ly"
    \include "../rh/gf-02-rh-55.ly"
    \include "../rh/gf-02-rh-44.ly"
    \include "../rh/gf-02-rh-70.ly"
    \bar"||"
    \mark \markup{Seconda parte del trio}
    \include "../rh/gf-02-rh-76.ly"
    \include "../rh/gf-02-rh-85.ly"
    \include "../rh/gf-02-rh-32.ly"
    \include "../rh/gf-02-rh-84.ly"
    \include "../rh/gf-02-rh-69.ly"
    \include "../rh/gf-02-rh-60.ly"
    \include "../rh/gf-02-rh-33.ly"
    \include "../rh/gf-02-rh-66.ly"
    \bar"|."
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/gf-02-lh-56.ly"
    \include "../lh/gf-02-lh-45.ly"
    \include "../lh/gf-02-lh-62.ly"
    \include "../lh/gf-02-lh-74.ly"
    \include "../lh/gf-02-lh-29.ly"
    \include "../lh/gf-02-lh-55.ly"
    \include "../lh/gf-02-lh-44.ly"
    \include "../lh/gf-02-lh-70.ly"
    \include "../lh/gf-02-lh-76.ly"
    \include "../lh/gf-02-lh-85.ly"
    \include "../lh/gf-02-lh-32.ly"
    \include "../lh/gf-02-lh-84.ly"
    \include "../lh/gf-02-lh-69.ly"
    \include "../lh/gf-02-lh-60.ly"
    \include "../lh/gf-02-lh-33.ly"
    \include "../lh/gf-02-lh-66.ly"
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}