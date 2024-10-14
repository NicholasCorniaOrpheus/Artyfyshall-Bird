\include "../paper_settings.ly" 
\header { piece = \markup "[83-82-59-74-81-27-2-94-76-85-64-96-30-58-90-91]" }

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
    \include "../rh/gf-02-rh-82.ly"
    \include "../rh/gf-02-rh-59.ly"
    \include "../rh/gf-02-rh-74.ly"
    \include "../rh/gf-02-rh-81.ly"
    \include "../rh/gf-02-rh-27.ly"
    \include "../rh/gf-02-rh-2.ly"
    \include "../rh/gf-02-rh-94.ly"
    \bar"||"
    \mark \markup{Seconda parte del trio}
    \include "../rh/gf-02-rh-76.ly"
    \include "../rh/gf-02-rh-85.ly"
    \include "../rh/gf-02-rh-64.ly"
    \include "../rh/gf-02-rh-96.ly"
    \include "../rh/gf-02-rh-30.ly"
    \include "../rh/gf-02-rh-58.ly"
    \include "../rh/gf-02-rh-90.ly"
    \include "../rh/gf-02-rh-91.ly"
    \bar"|."
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/gf-02-lh-83.ly"
    \include "../lh/gf-02-lh-82.ly"
    \include "../lh/gf-02-lh-59.ly"
    \include "../lh/gf-02-lh-74.ly"
    \include "../lh/gf-02-lh-81.ly"
    \include "../lh/gf-02-lh-27.ly"
    \include "../lh/gf-02-lh-2.ly"
    \include "../lh/gf-02-lh-94.ly"
    \include "../lh/gf-02-lh-76.ly"
    \include "../lh/gf-02-lh-85.ly"
    \include "../lh/gf-02-lh-64.ly"
    \include "../lh/gf-02-lh-96.ly"
    \include "../lh/gf-02-lh-30.ly"
    \include "../lh/gf-02-lh-58.ly"
    \include "../lh/gf-02-lh-90.ly"
    \include "../lh/gf-02-lh-91.ly"
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}