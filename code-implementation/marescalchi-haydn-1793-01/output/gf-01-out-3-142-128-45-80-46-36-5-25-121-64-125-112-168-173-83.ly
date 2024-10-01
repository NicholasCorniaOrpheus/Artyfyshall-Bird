\include "../paper_settings.ly" 
\header { piece = \markup "[3-142-128-45-80-46-36-5-25-121-64-125-112-168-173-83]" }

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
    \mark \markup{Prima parte del minuetto}
    \include "../rh/gf-01-rh-3.ly"
    \include "../rh/gf-01-rh-142.ly"
    \include "../rh/gf-01-rh-128.ly"
    \include "../rh/gf-01-rh-45.ly"
    \include "../rh/gf-01-rh-80.ly"
    \include "../rh/gf-01-rh-46.ly"
    \include "../rh/gf-01-rh-36.ly"
    \include "../rh/gf-01-rh-5.ly"
    \mark \markup{Seconda parte del minuetto}
    \include "../rh/gf-01-rh-25.ly"
    \include "../rh/gf-01-rh-121.ly"
    \include "../rh/gf-01-rh-64.ly"
    \include "../rh/gf-01-rh-125.ly"
    \include "../rh/gf-01-rh-112.ly"
    \include "../rh/gf-01-rh-168.ly"
    \include "../rh/gf-01-rh-173.ly"
    \include "../rh/gf-01-rh-83.ly"
    \bar"|."
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/gf-01-lh-3.ly"
    \include "../lh/gf-01-lh-142.ly"
    \include "../lh/gf-01-lh-128.ly"
    \include "../lh/gf-01-lh-45.ly"
    \include "../lh/gf-01-lh-80.ly"
    \include "../lh/gf-01-lh-46.ly"
    \include "../lh/gf-01-lh-36.ly"
    \include "../lh/gf-01-lh-5.ly"
    \include "../lh/gf-01-lh-25.ly"
    \include "../lh/gf-01-lh-121.ly"
    \include "../lh/gf-01-lh-64.ly"
    \include "../lh/gf-01-lh-125.ly"
    \include "../lh/gf-01-lh-112.ly"
    \include "../lh/gf-01-lh-168.ly"
    \include "../lh/gf-01-lh-173.ly"
    \include "../lh/gf-01-lh-83.ly"
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}