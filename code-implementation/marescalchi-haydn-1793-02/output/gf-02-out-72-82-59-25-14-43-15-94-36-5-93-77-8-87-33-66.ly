\include "../paper_settings.ly" 
\header { piece = \markup "[72-82-59-25-14-43-15-94-36-5-93-77-8-87-33-66]" }

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
    \include "../rh/gf-02-rh-72.ly"
    \include "../rh/gf-02-rh-82.ly"
    \include "../rh/gf-02-rh-59.ly"
    \include "../rh/gf-02-rh-25.ly"
    \include "../rh/gf-02-rh-14.ly"
    \include "../rh/gf-02-rh-43.ly"
    \include "../rh/gf-02-rh-15.ly"
    \include "../rh/gf-02-rh-94.ly"
    \bar"||"
    \mark \markup{Seconda parte del trio}
    \include "../rh/gf-02-rh-36.ly"
    \include "../rh/gf-02-rh-5.ly"
    \include "../rh/gf-02-rh-93.ly"
    \include "../rh/gf-02-rh-77.ly"
    \include "../rh/gf-02-rh-8.ly"
    \include "../rh/gf-02-rh-87.ly"
    \include "../rh/gf-02-rh-33.ly"
    \include "../rh/gf-02-rh-66.ly"
    \bar"|."
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/gf-02-lh-72.ly"
    \include "../lh/gf-02-lh-82.ly"
    \include "../lh/gf-02-lh-59.ly"
    \include "../lh/gf-02-lh-25.ly"
    \include "../lh/gf-02-lh-14.ly"
    \include "../lh/gf-02-lh-43.ly"
    \include "../lh/gf-02-lh-15.ly"
    \include "../lh/gf-02-lh-94.ly"
    \include "../lh/gf-02-lh-36.ly"
    \include "../lh/gf-02-lh-5.ly"
    \include "../lh/gf-02-lh-93.ly"
    \include "../lh/gf-02-lh-77.ly"
    \include "../lh/gf-02-lh-8.ly"
    \include "../lh/gf-02-lh-87.ly"
    \include "../lh/gf-02-lh-33.ly"
    \include "../lh/gf-02-lh-66.ly"
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}