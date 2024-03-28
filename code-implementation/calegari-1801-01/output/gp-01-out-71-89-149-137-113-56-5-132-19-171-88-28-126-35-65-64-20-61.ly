\include "../paper_settings.ly" 
\header { piece = \markup "[71-89-149-137-113-56-5-132-19-171-88-28-126-35-65-64-20-61]" }

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
    \include "../voice/gp-01-vc-71.ly"
    \include "../voice/gp-01-vc-89.ly"
    \include "../voice/gp-01-vc-149.ly"
    \include "../voice/gp-01-vc-137.ly"
    \include "../voice/gp-01-vc-113.ly"
    \include "../voice/gp-01-vc-56.ly"
    \include "../voice/gp-01-vc-5.ly"
    \include "../voice/gp-01-vc-132.ly"
    \include "../voice/gp-01-vc-19.ly"
    \include "../voice/gp-01-vc-171.ly"
    \include "../voice/gp-01-vc-88.ly"
    \include "../voice/gp-01-vc-28.ly"
    \include "../voice/gp-01-vc-126.ly"
    \include "../voice/gp-01-vc-35.ly"
    \include "../voice/gp-01-vc-65.ly"
    \include "../voice/gp-01-vc-64.ly"
    \include "../voice/gp-01-vc-20.ly"
    \include "../voice/gp-01-vc-61.ly"
    }
    >>
    %Piano part
    \context PianoStaff \with { instrumentName = "Piano"}
    <<
    \context Staff = "rh" {
    \include "../voice_option.ly"
    \include "../rh/gp-01-rh-71.ly"
    \include "../rh/gp-01-rh-89.ly"
    \include "../rh/gp-01-rh-149.ly"
    \include "../rh/gp-01-rh-137.ly"
    \include "../rh/gp-01-rh-113.ly"
    \include "../rh/gp-01-rh-56.ly"
    \include "../rh/gp-01-rh-5.ly"
    \include "../rh/gp-01-rh-132.ly"
    \include "../rh/gp-01-rh-19.ly"
    \include "../rh/gp-01-rh-171.ly"
    \include "../rh/gp-01-rh-88.ly"
    \include "../rh/gp-01-rh-28.ly"
    \include "../rh/gp-01-rh-126.ly"
    \include "../rh/gp-01-rh-35.ly"
    \include "../rh/gp-01-rh-65.ly"
    \include "../rh/gp-01-rh-64.ly"
    \include "../rh/gp-01-rh-20.ly"
    \include "../rh/gp-01-rh-61.ly"
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/gp-01-lh-71.ly"
    \include "../lh/gp-01-lh-89.ly"
    \include "../lh/gp-01-lh-149.ly"
    \include "../lh/gp-01-lh-137.ly"
    \include "../lh/gp-01-lh-113.ly"
    \include "../lh/gp-01-lh-56.ly"
    \include "../lh/gp-01-lh-5.ly"
    \include "../lh/gp-01-lh-132.ly"
    \include "../lh/gp-01-lh-19.ly"
    \include "../lh/gp-01-lh-171.ly"
    \include "../lh/gp-01-lh-88.ly"
    \include "../lh/gp-01-lh-28.ly"
    \include "../lh/gp-01-lh-126.ly"
    \include "../lh/gp-01-lh-35.ly"
    \include "../lh/gp-01-lh-65.ly"
    \include "../lh/gp-01-lh-64.ly"
    \include "../lh/gp-01-lh-20.ly"
    \include "../lh/gp-01-lh-61.ly"
    \bar":|."
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}