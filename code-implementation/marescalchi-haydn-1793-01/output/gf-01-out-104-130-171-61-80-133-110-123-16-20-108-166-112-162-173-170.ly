\include "../paper_settings.ly" 
\header { piece = \markup "[104-130-171-61-80-133-110-123-16-20-108-166-112-162-173-170]" }

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
    \include "../rh/gf-01-rh-171.ly"
    \include "../rh/gf-01-rh-61.ly"
    \include "../rh/gf-01-rh-80.ly"
    \include "../rh/gf-01-rh-133.ly"
    \include "../rh/gf-01-rh-110.ly"
    \include "../rh/gf-01-rh-123.ly"
    \bar"||"
    \mark \markup{Seconda parte del minuetto}
    \include "../rh/gf-01-rh-16.ly"
    \include "../rh/gf-01-rh-20.ly"
    \include "../rh/gf-01-rh-108.ly"
    \include "../rh/gf-01-rh-166.ly"
    \include "../rh/gf-01-rh-112.ly"
    \include "../rh/gf-01-rh-162.ly"
    \include "../rh/gf-01-rh-173.ly"
    \include "../rh/gf-01-rh-170.ly"
    \bar"|."
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/gf-01-lh-104.ly"
    \include "../lh/gf-01-lh-130.ly"
    \include "../lh/gf-01-lh-171.ly"
    \include "../lh/gf-01-lh-61.ly"
    \include "../lh/gf-01-lh-80.ly"
    \include "../lh/gf-01-lh-133.ly"
    \include "../lh/gf-01-lh-110.ly"
    \include "../lh/gf-01-lh-123.ly"
    \include "../lh/gf-01-lh-16.ly"
    \include "../lh/gf-01-lh-20.ly"
    \include "../lh/gf-01-lh-108.ly"
    \include "../lh/gf-01-lh-166.ly"
    \include "../lh/gf-01-lh-112.ly"
    \include "../lh/gf-01-lh-162.ly"
    \include "../lh/gf-01-lh-173.ly"
    \include "../lh/gf-01-lh-170.ly"
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}