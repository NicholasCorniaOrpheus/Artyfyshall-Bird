\include "../paper_settings.ly" 
\header { piece = \markup "[32-84-113-53-140-86-21-30-25-176-7-34-144-160-89-172]" }

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
    \include "../rh/gf-01-rh-32.ly"
    \include "../rh/gf-01-rh-84.ly"
    \include "../rh/gf-01-rh-113.ly"
    \include "../rh/gf-01-rh-53.ly"
    \include "../rh/gf-01-rh-140.ly"
    \include "../rh/gf-01-rh-86.ly"
    \include "../rh/gf-01-rh-21.ly"
    \include "../rh/gf-01-rh-30.ly"
    \bar"||"
    \mark \markup{Seconda parte del minuetto}
    \include "../rh/gf-01-rh-25.ly"
    \include "../rh/gf-01-rh-176.ly"
    \include "../rh/gf-01-rh-7.ly"
    \include "../rh/gf-01-rh-34.ly"
    \include "../rh/gf-01-rh-144.ly"
    \include "../rh/gf-01-rh-160.ly"
    \include "../rh/gf-01-rh-89.ly"
    \include "../rh/gf-01-rh-172.ly"
    \bar"|."
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/gf-01-lh-32.ly"
    \include "../lh/gf-01-lh-84.ly"
    \include "../lh/gf-01-lh-113.ly"
    \include "../lh/gf-01-lh-53.ly"
    \include "../lh/gf-01-lh-140.ly"
    \include "../lh/gf-01-lh-86.ly"
    \include "../lh/gf-01-lh-21.ly"
    \include "../lh/gf-01-lh-30.ly"
    \include "../lh/gf-01-lh-25.ly"
    \include "../lh/gf-01-lh-176.ly"
    \include "../lh/gf-01-lh-7.ly"
    \include "../lh/gf-01-lh-34.ly"
    \include "../lh/gf-01-lh-144.ly"
    \include "../lh/gf-01-lh-160.ly"
    \include "../lh/gf-01-lh-89.ly"
    \include "../lh/gf-01-lh-172.ly"
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}