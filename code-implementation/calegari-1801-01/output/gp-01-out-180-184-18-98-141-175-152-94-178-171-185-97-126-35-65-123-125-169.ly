\include "../paper_settings.ly" 
\header { piece = \markup "[180-184-18-98-141-175-152-94-178-171-185-97-126-35-65-123-125-169]" }

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
    \include "../voice/gp-01-vc-18.ly"
    \include "../voice/gp-01-vc-98.ly"
    \include "../voice/gp-01-vc-141.ly"
    \include "../voice/gp-01-vc-175.ly"
    \include "../voice/gp-01-vc-152.ly"
    \include "../voice/gp-01-vc-94.ly"
    \include "../voice/gp-01-vc-178.ly"
    \include "../voice/gp-01-vc-171.ly"
    \include "../voice/gp-01-vc-185.ly"
    \include "../voice/gp-01-vc-97.ly"
    \include "../voice/gp-01-vc-126.ly"
    \include "../voice/gp-01-vc-35.ly"
    \include "../voice/gp-01-vc-65.ly"
    \include "../voice/gp-01-vc-123.ly"
    \include "../voice/gp-01-vc-125.ly"
    \include "../voice/gp-01-vc-169.ly"
    }
    >>
    %Piano part
    \context PianoStaff \with { instrumentName = "Piano"}
    <<
    \context Staff = "rh" {
    \include "../voice_option.ly"
    \include "../rh/gp-01-rh-180.ly"
    \include "../rh/gp-01-rh-184.ly"
    \include "../rh/gp-01-rh-18.ly"
    \include "../rh/gp-01-rh-98.ly"
    \include "../rh/gp-01-rh-141.ly"
    \include "../rh/gp-01-rh-175.ly"
    \include "../rh/gp-01-rh-152.ly"
    \include "../rh/gp-01-rh-94.ly"
    \include "../rh/gp-01-rh-178.ly"
    \include "../rh/gp-01-rh-171.ly"
    \include "../rh/gp-01-rh-185.ly"
    \include "../rh/gp-01-rh-97.ly"
    \include "../rh/gp-01-rh-126.ly"
    \include "../rh/gp-01-rh-35.ly"
    \include "../rh/gp-01-rh-65.ly"
    \include "../rh/gp-01-rh-123.ly"
    \include "../rh/gp-01-rh-125.ly"
    \include "../rh/gp-01-rh-169.ly"
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/gp-01-lh-180.ly"
    \include "../lh/gp-01-lh-184.ly"
    \include "../lh/gp-01-lh-18.ly"
    \include "../lh/gp-01-lh-98.ly"
    \include "../lh/gp-01-lh-141.ly"
    \include "../lh/gp-01-lh-175.ly"
    \include "../lh/gp-01-lh-152.ly"
    \include "../lh/gp-01-lh-94.ly"
    \include "../lh/gp-01-lh-178.ly"
    \include "../lh/gp-01-lh-171.ly"
    \include "../lh/gp-01-lh-185.ly"
    \include "../lh/gp-01-lh-97.ly"
    \include "../lh/gp-01-lh-126.ly"
    \include "../lh/gp-01-lh-35.ly"
    \include "../lh/gp-01-lh-65.ly"
    \include "../lh/gp-01-lh-123.ly"
    \include "../lh/gp-01-lh-125.ly"
    \include "../lh/gp-01-lh-169.ly"
    \bar":|."
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}