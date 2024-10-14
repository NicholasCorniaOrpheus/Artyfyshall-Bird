\include "../paper_settings.ly" 
\header { piece = \markup "[152-17-141-61-146-37-134-127-117-143-31-82-101-162-89-78]" }

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
    \include "../rh/gf-01-rh-152.ly"
    \include "../rh/gf-01-rh-17.ly"
    \include "../rh/gf-01-rh-141.ly"
    \include "../rh/gf-01-rh-61.ly"
    \include "../rh/gf-01-rh-146.ly"
    \include "../rh/gf-01-rh-37.ly"
    \include "../rh/gf-01-rh-134.ly"
    \include "../rh/gf-01-rh-127.ly"
    \bar"||"
    \mark \markup{Seconda parte del minuetto}
    \include "../rh/gf-01-rh-117.ly"
    \include "../rh/gf-01-rh-143.ly"
    \include "../rh/gf-01-rh-31.ly"
    \include "../rh/gf-01-rh-82.ly"
    \include "../rh/gf-01-rh-101.ly"
    \include "../rh/gf-01-rh-162.ly"
    \include "../rh/gf-01-rh-89.ly"
    \include "../rh/gf-01-rh-78.ly"
    \bar"|."
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/gf-01-lh-152.ly"
    \include "../lh/gf-01-lh-17.ly"
    \include "../lh/gf-01-lh-141.ly"
    \include "../lh/gf-01-lh-61.ly"
    \include "../lh/gf-01-lh-146.ly"
    \include "../lh/gf-01-lh-37.ly"
    \include "../lh/gf-01-lh-134.ly"
    \include "../lh/gf-01-lh-127.ly"
    \include "../lh/gf-01-lh-117.ly"
    \include "../lh/gf-01-lh-143.ly"
    \include "../lh/gf-01-lh-31.ly"
    \include "../lh/gf-01-lh-82.ly"
    \include "../lh/gf-01-lh-101.ly"
    \include "../lh/gf-01-lh-162.ly"
    \include "../lh/gf-01-lh-89.ly"
    \include "../lh/gf-01-lh-78.ly"
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}