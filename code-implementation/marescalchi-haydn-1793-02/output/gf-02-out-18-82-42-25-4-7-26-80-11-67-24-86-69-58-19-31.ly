\include "../paper_settings.ly" 
\header { piece = \markup "[18-82-42-25-4-7-26-80-11-67-24-86-69-58-19-31]" }

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
    \include "../rh/gf-02-rh-18.ly"
    \include "../rh/gf-02-rh-82.ly"
    \include "../rh/gf-02-rh-42.ly"
    \include "../rh/gf-02-rh-25.ly"
    \include "../rh/gf-02-rh-4.ly"
    \include "../rh/gf-02-rh-7.ly"
    \include "../rh/gf-02-rh-26.ly"
    \include "../rh/gf-02-rh-80.ly"
    \bar"||"
    \mark \markup{Seconda parte del trio}
    \include "../rh/gf-02-rh-11.ly"
    \include "../rh/gf-02-rh-67.ly"
    \include "../rh/gf-02-rh-24.ly"
    \include "../rh/gf-02-rh-86.ly"
    \include "../rh/gf-02-rh-69.ly"
    \include "../rh/gf-02-rh-58.ly"
    \include "../rh/gf-02-rh-19.ly"
    \include "../rh/gf-02-rh-31.ly"
    \bar"|."
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/gf-02-lh-18.ly"
    \include "../lh/gf-02-lh-82.ly"
    \include "../lh/gf-02-lh-42.ly"
    \include "../lh/gf-02-lh-25.ly"
    \include "../lh/gf-02-lh-4.ly"
    \include "../lh/gf-02-lh-7.ly"
    \include "../lh/gf-02-lh-26.ly"
    \include "../lh/gf-02-lh-80.ly"
    \include "../lh/gf-02-lh-11.ly"
    \include "../lh/gf-02-lh-67.ly"
    \include "../lh/gf-02-lh-24.ly"
    \include "../lh/gf-02-lh-86.ly"
    \include "../lh/gf-02-lh-69.ly"
    \include "../lh/gf-02-lh-58.ly"
    \include "../lh/gf-02-lh-19.ly"
    \include "../lh/gf-02-lh-31.ly"
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}