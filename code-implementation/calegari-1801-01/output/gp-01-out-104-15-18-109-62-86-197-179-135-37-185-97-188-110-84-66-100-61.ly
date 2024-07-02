\include "../paper_settings.ly" 
\header { piece = \markup "[104-15-18-109-62-86-197-179-135-37-185-97-188-110-84-66-100-61]" }

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
    \include "../voice/gp-01-vc-104.ly"
    \include "../voice/gp-01-vc-15.ly"
    \include "../voice/gp-01-vc-18.ly"
    \include "../voice/gp-01-vc-109.ly"
    \include "../voice/gp-01-vc-62.ly"
    \include "../voice/gp-01-vc-86.ly"
    \include "../voice/gp-01-vc-197.ly"
    \include "../voice/gp-01-vc-179.ly"
    \include "../voice/gp-01-vc-135.ly"
    \include "../voice/gp-01-vc-37.ly"
    \include "../voice/gp-01-vc-185.ly"
    \include "../voice/gp-01-vc-97.ly"
    \include "../voice/gp-01-vc-188.ly"
    \include "../voice/gp-01-vc-110.ly"
    \include "../voice/gp-01-vc-84.ly"
    \include "../voice/gp-01-vc-66.ly"
    \include "../voice/gp-01-vc-100.ly"
    \include "../voice/gp-01-vc-61.ly"
    }
    >>
    %Piano part
    \context PianoStaff \with { instrumentName = "Piano"}
    <<
    \context Staff = "rh" {
    \include "../voice_option.ly"
    \include "../rh/gp-01-rh-104.ly"
    \include "../rh/gp-01-rh-15.ly"
    \include "../rh/gp-01-rh-18.ly"
    \include "../rh/gp-01-rh-109.ly"
    \include "../rh/gp-01-rh-62.ly"
    \include "../rh/gp-01-rh-86.ly"
    \include "../rh/gp-01-rh-197.ly"
    \include "../rh/gp-01-rh-179.ly"
    \include "../rh/gp-01-rh-135.ly"
    \include "../rh/gp-01-rh-37.ly"
    \include "../rh/gp-01-rh-185.ly"
    \include "../rh/gp-01-rh-97.ly"
    \include "../rh/gp-01-rh-188.ly"
    \include "../rh/gp-01-rh-110.ly"
    \include "../rh/gp-01-rh-84.ly"
    \include "../rh/gp-01-rh-66.ly"
    \include "../rh/gp-01-rh-100.ly"
    \include "../rh/gp-01-rh-61.ly"
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/gp-01-lh-104.ly"
    \include "../lh/gp-01-lh-15.ly"
    \include "../lh/gp-01-lh-18.ly"
    \include "../lh/gp-01-lh-109.ly"
    \include "../lh/gp-01-lh-62.ly"
    \include "../lh/gp-01-lh-86.ly"
    \include "../lh/gp-01-lh-197.ly"
    \include "../lh/gp-01-lh-179.ly"
    \include "../lh/gp-01-lh-135.ly"
    \include "../lh/gp-01-lh-37.ly"
    \include "../lh/gp-01-lh-185.ly"
    \include "../lh/gp-01-lh-97.ly"
    \include "../lh/gp-01-lh-188.ly"
    \include "../lh/gp-01-lh-110.ly"
    \include "../lh/gp-01-lh-84.ly"
    \include "../lh/gp-01-lh-66.ly"
    \include "../lh/gp-01-lh-100.ly"
    \include "../lh/gp-01-lh-61.ly"
    \bar":|."
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}