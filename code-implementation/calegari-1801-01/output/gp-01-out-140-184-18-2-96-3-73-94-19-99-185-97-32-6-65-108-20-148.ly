\include "../paper_settings.ly" 
\header { piece = \markup "[140-184-18-2-96-3-73-94-19-99-185-97-32-6-65-108-20-148]" }

  %! abjad.LilyPondFile._get_format_pieces()
\score
  %! abjad.LilyPondFile._get_format_pieces()
{
    <<
    %Voice part
    \context Staff = "voice" \with { instrumentName = "Voice" }
    <<
    \set Staff.midiInstrument =#"voice oohs" {
    \include "../voice_option.ly"
    \include "../voice/gp-01-vc-140.ly"
    \include "../voice/gp-01-vc-184.ly"
    \include "../voice/gp-01-vc-18.ly"
    \include "../voice/gp-01-vc-2.ly"
    \include "../voice/gp-01-vc-96.ly"
    \include "../voice/gp-01-vc-3.ly"
    \include "../voice/gp-01-vc-73.ly"
    \include "../voice/gp-01-vc-94.ly"
    \include "../voice/gp-01-vc-19.ly"
    \include "../voice/gp-01-vc-99.ly"
    \include "../voice/gp-01-vc-185.ly"
    \include "../voice/gp-01-vc-97.ly"
    \include "../voice/gp-01-vc-32.ly"
    \include "../voice/gp-01-vc-6.ly"
    \include "../voice/gp-01-vc-65.ly"
    \include "../voice/gp-01-vc-108.ly"
    \include "../voice/gp-01-vc-20.ly"
    \include "../voice/gp-01-vc-148.ly"
    }
    >>
    %Piano part
    \context PianoStaff \with { instrumentName = "Piano"}
    <<
    \context Staff = "rh" {
    \include "../voice_option.ly"
    \include "../rh/gp-01-rh-140.ly"
    \include "../rh/gp-01-rh-184.ly"
    \include "../rh/gp-01-rh-18.ly"
    \include "../rh/gp-01-rh-2.ly"
    \include "../rh/gp-01-rh-96.ly"
    \include "../rh/gp-01-rh-3.ly"
    \include "../rh/gp-01-rh-73.ly"
    \include "../rh/gp-01-rh-94.ly"
    \include "../rh/gp-01-rh-19.ly"
    \include "../rh/gp-01-rh-99.ly"
    \include "../rh/gp-01-rh-185.ly"
    \include "../rh/gp-01-rh-97.ly"
    \include "../rh/gp-01-rh-32.ly"
    \include "../rh/gp-01-rh-6.ly"
    \include "../rh/gp-01-rh-65.ly"
    \include "../rh/gp-01-rh-108.ly"
    \include "../rh/gp-01-rh-20.ly"
    \include "../rh/gp-01-rh-148.ly"
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/gp-01-lh-140.ly"
    \include "../lh/gp-01-lh-184.ly"
    \include "../lh/gp-01-lh-18.ly"
    \include "../lh/gp-01-lh-2.ly"
    \include "../lh/gp-01-lh-96.ly"
    \include "../lh/gp-01-lh-3.ly"
    \include "../lh/gp-01-lh-73.ly"
    \include "../lh/gp-01-lh-94.ly"
    \include "../lh/gp-01-lh-19.ly"
    \include "../lh/gp-01-lh-99.ly"
    \include "../lh/gp-01-lh-185.ly"
    \include "../lh/gp-01-lh-97.ly"
    \include "../lh/gp-01-lh-32.ly"
    \include "../lh/gp-01-lh-6.ly"
    \include "../lh/gp-01-lh-65.ly"
    \include "../lh/gp-01-lh-108.ly"
    \include "../lh/gp-01-lh-20.ly"
    \include "../lh/gp-01-lh-148.ly"
    \bar":|."
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}