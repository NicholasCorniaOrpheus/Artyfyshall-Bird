\include "../paper_settings.ly" 
\header { piece = \markup "[180-34-59-98-141-166-78-143-30-177-101-11-32-165-26-123-190-69]" }

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
    \include "../voice/gp-01-vc-34.ly"
    \include "../voice/gp-01-vc-59.ly"
    \include "../voice/gp-01-vc-98.ly"
    \include "../voice/gp-01-vc-141.ly"
    \include "../voice/gp-01-vc-166.ly"
    \include "../voice/gp-01-vc-78.ly"
    \include "../voice/gp-01-vc-143.ly"
    \include "../voice/gp-01-vc-30.ly"
    \include "../voice/gp-01-vc-177.ly"
    \include "../voice/gp-01-vc-101.ly"
    \include "../voice/gp-01-vc-11.ly"
    \include "../voice/gp-01-vc-32.ly"
    \include "../voice/gp-01-vc-165.ly"
    \include "../voice/gp-01-vc-26.ly"
    \include "../voice/gp-01-vc-123.ly"
    \include "../voice/gp-01-vc-190.ly"
    \include "../voice/gp-01-vc-69.ly"
    }
    >>
    %Piano part
    \context PianoStaff \with { instrumentName = "Piano"}
    <<
    \context Staff = "rh" {
    \include "../voice_option.ly"
    \include "../rh/gp-01-rh-180.ly"
    \include "../rh/gp-01-rh-34.ly"
    \include "../rh/gp-01-rh-59.ly"
    \include "../rh/gp-01-rh-98.ly"
    \include "../rh/gp-01-rh-141.ly"
    \include "../rh/gp-01-rh-166.ly"
    \include "../rh/gp-01-rh-78.ly"
    \include "../rh/gp-01-rh-143.ly"
    \include "../rh/gp-01-rh-30.ly"
    \include "../rh/gp-01-rh-177.ly"
    \include "../rh/gp-01-rh-101.ly"
    \include "../rh/gp-01-rh-11.ly"
    \include "../rh/gp-01-rh-32.ly"
    \include "../rh/gp-01-rh-165.ly"
    \include "../rh/gp-01-rh-26.ly"
    \include "../rh/gp-01-rh-123.ly"
    \include "../rh/gp-01-rh-190.ly"
    \include "../rh/gp-01-rh-69.ly"
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/gp-01-lh-180.ly"
    \include "../lh/gp-01-lh-34.ly"
    \include "../lh/gp-01-lh-59.ly"
    \include "../lh/gp-01-lh-98.ly"
    \include "../lh/gp-01-lh-141.ly"
    \include "../lh/gp-01-lh-166.ly"
    \include "../lh/gp-01-lh-78.ly"
    \include "../lh/gp-01-lh-143.ly"
    \include "../lh/gp-01-lh-30.ly"
    \include "../lh/gp-01-lh-177.ly"
    \include "../lh/gp-01-lh-101.ly"
    \include "../lh/gp-01-lh-11.ly"
    \include "../lh/gp-01-lh-32.ly"
    \include "../lh/gp-01-lh-165.ly"
    \include "../lh/gp-01-lh-26.ly"
    \include "../lh/gp-01-lh-123.ly"
    \include "../lh/gp-01-lh-190.ly"
    \include "../lh/gp-01-lh-69.ly"
    \bar":|."
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}