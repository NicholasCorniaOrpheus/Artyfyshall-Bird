\include "../paper_settings.ly" 
\header { piece = \markup "[180-184-55-98-113-56-73-94-30-99-88-11-126-6-26-108-20-61]" }

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
    \include "../voice/gp-01-vc-180.ly"
    \include "../voice/gp-01-vc-184.ly"
    \include "../voice/gp-01-vc-55.ly"
    \include "../voice/gp-01-vc-98.ly"
    \include "../voice/gp-01-vc-113.ly"
    \include "../voice/gp-01-vc-56.ly"
    \include "../voice/gp-01-vc-73.ly"
    \include "../voice/gp-01-vc-94.ly"
    \include "../voice/gp-01-vc-30.ly"
    \include "../voice/gp-01-vc-99.ly"
    \include "../voice/gp-01-vc-88.ly"
    \include "../voice/gp-01-vc-11.ly"
    \include "../voice/gp-01-vc-126.ly"
    \include "../voice/gp-01-vc-6.ly"
    \include "../voice/gp-01-vc-26.ly"
    \include "../voice/gp-01-vc-108.ly"
    \include "../voice/gp-01-vc-20.ly"
    \include "../voice/gp-01-vc-61.ly"
    }
    >>
    %Piano part
    \context PianoStaff \with { instrumentName = "Piano"}
    <<
    \context Staff = "rh" {
    \include "../voice_option.ly"
    \include "../rh/gp-01-rh-180.ly"
    \include "../rh/gp-01-rh-184.ly"
    \include "../rh/gp-01-rh-55.ly"
    \include "../rh/gp-01-rh-98.ly"
    \include "../rh/gp-01-rh-113.ly"
    \include "../rh/gp-01-rh-56.ly"
    \include "../rh/gp-01-rh-73.ly"
    \include "../rh/gp-01-rh-94.ly"
    \include "../rh/gp-01-rh-30.ly"
    \include "../rh/gp-01-rh-99.ly"
    \include "../rh/gp-01-rh-88.ly"
    \include "../rh/gp-01-rh-11.ly"
    \include "../rh/gp-01-rh-126.ly"
    \include "../rh/gp-01-rh-6.ly"
    \include "../rh/gp-01-rh-26.ly"
    \include "../rh/gp-01-rh-108.ly"
    \include "../rh/gp-01-rh-20.ly"
    \include "../rh/gp-01-rh-61.ly"
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/gp-01-lh-180.ly"
    \include "../lh/gp-01-lh-184.ly"
    \include "../lh/gp-01-lh-55.ly"
    \include "../lh/gp-01-lh-98.ly"
    \include "../lh/gp-01-lh-113.ly"
    \include "../lh/gp-01-lh-56.ly"
    \include "../lh/gp-01-lh-73.ly"
    \include "../lh/gp-01-lh-94.ly"
    \include "../lh/gp-01-lh-30.ly"
    \include "../lh/gp-01-lh-99.ly"
    \include "../lh/gp-01-lh-88.ly"
    \include "../lh/gp-01-lh-11.ly"
    \include "../lh/gp-01-lh-126.ly"
    \include "../lh/gp-01-lh-6.ly"
    \include "../lh/gp-01-lh-26.ly"
    \include "../lh/gp-01-lh-108.ly"
    \include "../lh/gp-01-lh-20.ly"
    \include "../lh/gp-01-lh-61.ly"
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}