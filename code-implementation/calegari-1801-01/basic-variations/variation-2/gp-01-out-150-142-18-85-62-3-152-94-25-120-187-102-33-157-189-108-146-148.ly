\include "../paper_settings.ly" 
\header { piece = \markup "[150-142-18-85-62-3-152-94-25-120-187-102-33-157-189-108-146-148]" }

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
    \include "../voice/gp-01-vc-150.ly"
    \include "../voice/gp-01-vc-142.ly"
    \include "../voice/gp-01-vc-18.ly"
    \include "../voice/gp-01-vc-85.ly"
    \include "../voice/gp-01-vc-62.ly"
    \include "../voice/gp-01-vc-3.ly"
    \include "../voice/gp-01-vc-152.ly"
    \include "../voice/gp-01-vc-94.ly"
    \include "../voice/gp-01-vc-25.ly"
    \include "../voice/gp-01-vc-120.ly"
    \include "../voice/gp-01-vc-187.ly"
    \include "../voice/gp-01-vc-102.ly"
    \include "../voice/gp-01-vc-33.ly"
    \include "../voice/gp-01-vc-157.ly"
    \include "../voice/gp-01-vc-189.ly"
    \include "../voice/gp-01-vc-108.ly"
    \include "../voice/gp-01-vc-146.ly"
    \include "../voice/gp-01-vc-148.ly"
    }
    >>
    %Piano part
    \context PianoStaff \with { instrumentName = "Piano"}
    <<
    \context Staff = "rh" {
    \include "../voice_option.ly"
    \include "../rh/gp-01-rh-150.ly"
    \include "../rh/gp-01-rh-142.ly"
    \include "../rh/gp-01-rh-18.ly"
    \include "../rh/gp-01-rh-85.ly"
    \include "../rh/gp-01-rh-62.ly"
    \include "../rh/gp-01-rh-3.ly"
    \include "../rh/gp-01-rh-152.ly"
    \include "../rh/gp-01-rh-94.ly"
    \include "../rh/gp-01-rh-25.ly"
    \include "../rh/gp-01-rh-120.ly"
    \include "../rh/gp-01-rh-187.ly"
    \include "../rh/gp-01-rh-102.ly"
    \include "../rh/gp-01-rh-33.ly"
    \include "../rh/gp-01-rh-157.ly"
    \include "../rh/gp-01-rh-189.ly"
    \include "../rh/gp-01-rh-108.ly"
    \include "../rh/gp-01-rh-146.ly"
    \include "../rh/gp-01-rh-148.ly"
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/gp-01-lh-150.ly"
    \include "../lh/gp-01-lh-142.ly"
    \include "../lh/gp-01-lh-18.ly"
    \include "../lh/gp-01-lh-85.ly"
    \include "../lh/gp-01-lh-62.ly"
    \include "../lh/gp-01-lh-3.ly"
    \include "../lh/gp-01-lh-152.ly"
    \include "../lh/gp-01-lh-94.ly"
    \include "../lh/gp-01-lh-25.ly"
    \include "../lh/gp-01-lh-120.ly"
    \include "../lh/gp-01-lh-187.ly"
    \include "../lh/gp-01-lh-102.ly"
    \include "../lh/gp-01-lh-33.ly"
    \include "../lh/gp-01-lh-157.ly"
    \include "../lh/gp-01-lh-189.ly"
    \include "../lh/gp-01-lh-108.ly"
    \include "../lh/gp-01-lh-146.ly"
    \include "../lh/gp-01-lh-148.ly"
    \bar":|."
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}