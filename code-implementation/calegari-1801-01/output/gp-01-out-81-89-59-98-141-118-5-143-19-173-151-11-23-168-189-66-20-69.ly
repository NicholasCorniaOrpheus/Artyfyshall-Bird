\include "../paper_settings.ly" 
\header { piece = \markup "[81-89-59-98-141-118-5-143-19-173-151-11-23-168-189-66-20-69]" }

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
    \include "../voice/gp-01-vc-81.ly"
    \include "../voice/gp-01-vc-89.ly"
    \include "../voice/gp-01-vc-59.ly"
    \include "../voice/gp-01-vc-98.ly"
    \include "../voice/gp-01-vc-141.ly"
    \include "../voice/gp-01-vc-118.ly"
    \include "../voice/gp-01-vc-5.ly"
    \include "../voice/gp-01-vc-143.ly"
    \include "../voice/gp-01-vc-19.ly"
    \include "../voice/gp-01-vc-173.ly"
    \include "../voice/gp-01-vc-151.ly"
    \include "../voice/gp-01-vc-11.ly"
    \include "../voice/gp-01-vc-23.ly"
    \include "../voice/gp-01-vc-168.ly"
    \include "../voice/gp-01-vc-189.ly"
    \include "../voice/gp-01-vc-66.ly"
    \include "../voice/gp-01-vc-20.ly"
    \include "../voice/gp-01-vc-69.ly"
    }
    >>
    %Piano part
    \context PianoStaff \with { instrumentName = "Piano"}
    <<
    \context Staff = "rh" {
    \include "../voice_option.ly"
    \include "../rh/gp-01-rh-81.ly"
    \include "../rh/gp-01-rh-89.ly"
    \include "../rh/gp-01-rh-59.ly"
    \include "../rh/gp-01-rh-98.ly"
    \include "../rh/gp-01-rh-141.ly"
    \include "../rh/gp-01-rh-118.ly"
    \include "../rh/gp-01-rh-5.ly"
    \include "../rh/gp-01-rh-143.ly"
    \include "../rh/gp-01-rh-19.ly"
    \include "../rh/gp-01-rh-173.ly"
    \include "../rh/gp-01-rh-151.ly"
    \include "../rh/gp-01-rh-11.ly"
    \include "../rh/gp-01-rh-23.ly"
    \include "../rh/gp-01-rh-168.ly"
    \include "../rh/gp-01-rh-189.ly"
    \include "../rh/gp-01-rh-66.ly"
    \include "../rh/gp-01-rh-20.ly"
    \include "../rh/gp-01-rh-69.ly"
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/gp-01-lh-81.ly"
    \include "../lh/gp-01-lh-89.ly"
    \include "../lh/gp-01-lh-59.ly"
    \include "../lh/gp-01-lh-98.ly"
    \include "../lh/gp-01-lh-141.ly"
    \include "../lh/gp-01-lh-118.ly"
    \include "../lh/gp-01-lh-5.ly"
    \include "../lh/gp-01-lh-143.ly"
    \include "../lh/gp-01-lh-19.ly"
    \include "../lh/gp-01-lh-173.ly"
    \include "../lh/gp-01-lh-151.ly"
    \include "../lh/gp-01-lh-11.ly"
    \include "../lh/gp-01-lh-23.ly"
    \include "../lh/gp-01-lh-168.ly"
    \include "../lh/gp-01-lh-189.ly"
    \include "../lh/gp-01-lh-66.ly"
    \include "../lh/gp-01-lh-20.ly"
    \include "../lh/gp-01-lh-69.ly"
    \bar":|."
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}