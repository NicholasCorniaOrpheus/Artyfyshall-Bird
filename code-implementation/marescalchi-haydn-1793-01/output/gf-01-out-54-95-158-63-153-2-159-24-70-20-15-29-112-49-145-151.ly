\include "../paper_settings.ly" 
\header { piece = \markup "[54-95-158-63-153-2-159-24-70-20-15-29-112-49-145-151]" }

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
    \include "../rh/gf-01-rh-54.ly"
    \include "../rh/gf-01-rh-95.ly"
    \include "../rh/gf-01-rh-158.ly"
    \include "../rh/gf-01-rh-63.ly"
    \include "../rh/gf-01-rh-153.ly"
    \include "../rh/gf-01-rh-2.ly"
    \include "../rh/gf-01-rh-159.ly"
    \include "../rh/gf-01-rh-24.ly"
    \bar"||"
    \mark \markup{Seconda parte del minuetto}
    \include "../rh/gf-01-rh-70.ly"
    \include "../rh/gf-01-rh-20.ly"
    \include "../rh/gf-01-rh-15.ly"
    \include "../rh/gf-01-rh-29.ly"
    \include "../rh/gf-01-rh-112.ly"
    \include "../rh/gf-01-rh-49.ly"
    \include "../rh/gf-01-rh-145.ly"
    \include "../rh/gf-01-rh-151.ly"
    \bar"|."
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/gf-01-lh-54.ly"
    \include "../lh/gf-01-lh-95.ly"
    \include "../lh/gf-01-lh-158.ly"
    \include "../lh/gf-01-lh-63.ly"
    \include "../lh/gf-01-lh-153.ly"
    \include "../lh/gf-01-lh-2.ly"
    \include "../lh/gf-01-lh-159.ly"
    \include "../lh/gf-01-lh-24.ly"
    \include "../lh/gf-01-lh-70.ly"
    \include "../lh/gf-01-lh-20.ly"
    \include "../lh/gf-01-lh-15.ly"
    \include "../lh/gf-01-lh-29.ly"
    \include "../lh/gf-01-lh-112.ly"
    \include "../lh/gf-01-lh-49.ly"
    \include "../lh/gf-01-lh-145.ly"
    \include "../lh/gf-01-lh-151.ly"
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}