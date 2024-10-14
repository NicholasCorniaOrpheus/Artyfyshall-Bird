\include "../paper_settings.ly" 
\header { piece = \markup "[119-157-163-61-99-46-36-127-16-88-57-29-67-160-23-93]" }

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
    \include "../rh/gf-01-rh-119.ly"
    \include "../rh/gf-01-rh-157.ly"
    \include "../rh/gf-01-rh-163.ly"
    \include "../rh/gf-01-rh-61.ly"
    \include "../rh/gf-01-rh-99.ly"
    \include "../rh/gf-01-rh-46.ly"
    \include "../rh/gf-01-rh-36.ly"
    \include "../rh/gf-01-rh-127.ly"
    \bar"||"
    \mark \markup{Seconda parte del minuetto}
    \include "../rh/gf-01-rh-16.ly"
    \include "../rh/gf-01-rh-88.ly"
    \include "../rh/gf-01-rh-57.ly"
    \include "../rh/gf-01-rh-29.ly"
    \include "../rh/gf-01-rh-67.ly"
    \include "../rh/gf-01-rh-160.ly"
    \include "../rh/gf-01-rh-23.ly"
    \include "../rh/gf-01-rh-93.ly"
    \bar"|."
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/gf-01-lh-119.ly"
    \include "../lh/gf-01-lh-157.ly"
    \include "../lh/gf-01-lh-163.ly"
    \include "../lh/gf-01-lh-61.ly"
    \include "../lh/gf-01-lh-99.ly"
    \include "../lh/gf-01-lh-46.ly"
    \include "../lh/gf-01-lh-36.ly"
    \include "../lh/gf-01-lh-127.ly"
    \include "../lh/gf-01-lh-16.ly"
    \include "../lh/gf-01-lh-88.ly"
    \include "../lh/gf-01-lh-57.ly"
    \include "../lh/gf-01-lh-29.ly"
    \include "../lh/gf-01-lh-67.ly"
    \include "../lh/gf-01-lh-160.ly"
    \include "../lh/gf-01-lh-23.ly"
    \include "../lh/gf-01-lh-93.ly"
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}