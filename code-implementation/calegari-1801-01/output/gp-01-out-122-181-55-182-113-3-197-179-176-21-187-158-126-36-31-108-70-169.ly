\include "../paper_settings.ly" 
\header { piece = \markup "[122-181-55-182-113-3-197-179-176-21-187-158-126-36-31-108-70-169]" }

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
    \include "../voice/gp-01-vc-122.ly"
    \include "../voice/gp-01-vc-181.ly"
    \include "../voice/gp-01-vc-55.ly"
    \include "../voice/gp-01-vc-182.ly"
    \include "../voice/gp-01-vc-113.ly"
    \include "../voice/gp-01-vc-3.ly"
    \include "../voice/gp-01-vc-197.ly"
    \include "../voice/gp-01-vc-179.ly"
    \include "../voice/gp-01-vc-176.ly"
    \include "../voice/gp-01-vc-21.ly"
    \include "../voice/gp-01-vc-187.ly"
    \include "../voice/gp-01-vc-158.ly"
    \include "../voice/gp-01-vc-126.ly"
    \include "../voice/gp-01-vc-36.ly"
    \include "../voice/gp-01-vc-31.ly"
    \include "../voice/gp-01-vc-108.ly"
    \include "../voice/gp-01-vc-70.ly"
    \include "../voice/gp-01-vc-169.ly"
    }
    >>
    %Piano part
    \context PianoStaff \with { instrumentName = "Piano"}
    <<
    \context Staff = "rh" {
    \include "../voice_option.ly"
    \include "../rh/gp-01-rh-122.ly"
    \include "../rh/gp-01-rh-181.ly"
    \include "../rh/gp-01-rh-55.ly"
    \include "../rh/gp-01-rh-182.ly"
    \include "../rh/gp-01-rh-113.ly"
    \include "../rh/gp-01-rh-3.ly"
    \include "../rh/gp-01-rh-197.ly"
    \include "../rh/gp-01-rh-179.ly"
    \include "../rh/gp-01-rh-176.ly"
    \include "../rh/gp-01-rh-21.ly"
    \include "../rh/gp-01-rh-187.ly"
    \include "../rh/gp-01-rh-158.ly"
    \include "../rh/gp-01-rh-126.ly"
    \include "../rh/gp-01-rh-36.ly"
    \include "../rh/gp-01-rh-31.ly"
    \include "../rh/gp-01-rh-108.ly"
    \include "../rh/gp-01-rh-70.ly"
    \include "../rh/gp-01-rh-169.ly"
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/gp-01-lh-122.ly"
    \include "../lh/gp-01-lh-181.ly"
    \include "../lh/gp-01-lh-55.ly"
    \include "../lh/gp-01-lh-182.ly"
    \include "../lh/gp-01-lh-113.ly"
    \include "../lh/gp-01-lh-3.ly"
    \include "../lh/gp-01-lh-197.ly"
    \include "../lh/gp-01-lh-179.ly"
    \include "../lh/gp-01-lh-176.ly"
    \include "../lh/gp-01-lh-21.ly"
    \include "../lh/gp-01-lh-187.ly"
    \include "../lh/gp-01-lh-158.ly"
    \include "../lh/gp-01-lh-126.ly"
    \include "../lh/gp-01-lh-36.ly"
    \include "../lh/gp-01-lh-31.ly"
    \include "../lh/gp-01-lh-108.ly"
    \include "../lh/gp-01-lh-70.ly"
    \include "../lh/gp-01-lh-169.ly"
    \bar":|."
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}