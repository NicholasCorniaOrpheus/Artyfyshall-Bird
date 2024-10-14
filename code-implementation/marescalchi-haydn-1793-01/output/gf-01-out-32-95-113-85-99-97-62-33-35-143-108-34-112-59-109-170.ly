\include "../paper_settings.ly" 
\header { piece = \markup "[32-95-113-85-99-97-62-33-35-143-108-34-112-59-109-170]" }

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
    \include "../rh/gf-01-rh-95.ly"
    \include "../rh/gf-01-rh-113.ly"
    \include "../rh/gf-01-rh-85.ly"
    \include "../rh/gf-01-rh-99.ly"
    \include "../rh/gf-01-rh-97.ly"
    \include "../rh/gf-01-rh-62.ly"
    \include "../rh/gf-01-rh-33.ly"
    \bar"||"
    \mark \markup{Seconda parte del minuetto}
    \include "../rh/gf-01-rh-35.ly"
    \include "../rh/gf-01-rh-143.ly"
    \include "../rh/gf-01-rh-108.ly"
    \include "../rh/gf-01-rh-34.ly"
    \include "../rh/gf-01-rh-112.ly"
    \include "../rh/gf-01-rh-59.ly"
    \include "../rh/gf-01-rh-109.ly"
    \include "../rh/gf-01-rh-170.ly"
    \bar"|."
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/gf-01-lh-32.ly"
    \include "../lh/gf-01-lh-95.ly"
    \include "../lh/gf-01-lh-113.ly"
    \include "../lh/gf-01-lh-85.ly"
    \include "../lh/gf-01-lh-99.ly"
    \include "../lh/gf-01-lh-97.ly"
    \include "../lh/gf-01-lh-62.ly"
    \include "../lh/gf-01-lh-33.ly"
    \include "../lh/gf-01-lh-35.ly"
    \include "../lh/gf-01-lh-143.ly"
    \include "../lh/gf-01-lh-108.ly"
    \include "../lh/gf-01-lh-34.ly"
    \include "../lh/gf-01-lh-112.ly"
    \include "../lh/gf-01-lh-59.ly"
    \include "../lh/gf-01-lh-109.ly"
    \include "../lh/gf-01-lh-170.ly"
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}