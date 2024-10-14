\include "../paper_settings.ly" 
\header { piece = \markup "[104-130-27-63-140-68-62-81-70-20-64-175-76-58-44-111]" }

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
    \include "../rh/gf-01-rh-104.ly"
    \include "../rh/gf-01-rh-130.ly"
    \include "../rh/gf-01-rh-27.ly"
    \include "../rh/gf-01-rh-63.ly"
    \include "../rh/gf-01-rh-140.ly"
    \include "../rh/gf-01-rh-68.ly"
    \include "../rh/gf-01-rh-62.ly"
    \include "../rh/gf-01-rh-81.ly"
    \bar"||"
    \mark \markup{Seconda parte del minuetto}
    \include "../rh/gf-01-rh-70.ly"
    \include "../rh/gf-01-rh-20.ly"
    \include "../rh/gf-01-rh-64.ly"
    \include "../rh/gf-01-rh-175.ly"
    \include "../rh/gf-01-rh-76.ly"
    \include "../rh/gf-01-rh-58.ly"
    \include "../rh/gf-01-rh-44.ly"
    \include "../rh/gf-01-rh-111.ly"
    \bar"|."
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/gf-01-lh-104.ly"
    \include "../lh/gf-01-lh-130.ly"
    \include "../lh/gf-01-lh-27.ly"
    \include "../lh/gf-01-lh-63.ly"
    \include "../lh/gf-01-lh-140.ly"
    \include "../lh/gf-01-lh-68.ly"
    \include "../lh/gf-01-lh-62.ly"
    \include "../lh/gf-01-lh-81.ly"
    \include "../lh/gf-01-lh-70.ly"
    \include "../lh/gf-01-lh-20.ly"
    \include "../lh/gf-01-lh-64.ly"
    \include "../lh/gf-01-lh-175.ly"
    \include "../lh/gf-01-lh-76.ly"
    \include "../lh/gf-01-lh-58.ly"
    \include "../lh/gf-01-lh-44.ly"
    \include "../lh/gf-01-lh-111.ly"
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}