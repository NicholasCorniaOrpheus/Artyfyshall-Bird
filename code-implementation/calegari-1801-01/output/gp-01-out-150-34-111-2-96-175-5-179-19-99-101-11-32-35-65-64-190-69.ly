\include "../paper_settings.ly" 
\header { piece = \markup "[150-34-111-2-96-175-5-179-19-99-101-11-32-35-65-64-190-69]" }

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
    \include "../voice/gp-01-vc-34.ly"
    \include "../voice/gp-01-vc-111.ly"
    \include "../voice/gp-01-vc-2.ly"
    \include "../voice/gp-01-vc-96.ly"
    \include "../voice/gp-01-vc-175.ly"
    \include "../voice/gp-01-vc-5.ly"
    \include "../voice/gp-01-vc-179.ly"
    \include "../voice/gp-01-vc-19.ly"
    \include "../voice/gp-01-vc-99.ly"
    \include "../voice/gp-01-vc-101.ly"
    \include "../voice/gp-01-vc-11.ly"
    \include "../voice/gp-01-vc-32.ly"
    \include "../voice/gp-01-vc-35.ly"
    \include "../voice/gp-01-vc-65.ly"
    \include "../voice/gp-01-vc-64.ly"
    \include "../voice/gp-01-vc-190.ly"
    \include "../voice/gp-01-vc-69.ly"
    }
    >>
    %Piano part
    \context PianoStaff \with { instrumentName = "Piano"}
    <<
    \context Staff = "rh" {
    \include "../voice_option.ly"
    \include "../rh/gp-01-rh-150.ly"
    \include "../rh/gp-01-rh-34.ly"
    \include "../rh/gp-01-rh-111.ly"
    \include "../rh/gp-01-rh-2.ly"
    \include "../rh/gp-01-rh-96.ly"
    \include "../rh/gp-01-rh-175.ly"
    \include "../rh/gp-01-rh-5.ly"
    \include "../rh/gp-01-rh-179.ly"
    \include "../rh/gp-01-rh-19.ly"
    \include "../rh/gp-01-rh-99.ly"
    \include "../rh/gp-01-rh-101.ly"
    \include "../rh/gp-01-rh-11.ly"
    \include "../rh/gp-01-rh-32.ly"
    \include "../rh/gp-01-rh-35.ly"
    \include "../rh/gp-01-rh-65.ly"
    \include "../rh/gp-01-rh-64.ly"
    \include "../rh/gp-01-rh-190.ly"
    \include "../rh/gp-01-rh-69.ly"
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/gp-01-lh-150.ly"
    \include "../lh/gp-01-lh-34.ly"
    \include "../lh/gp-01-lh-111.ly"
    \include "../lh/gp-01-lh-2.ly"
    \include "../lh/gp-01-lh-96.ly"
    \include "../lh/gp-01-lh-175.ly"
    \include "../lh/gp-01-lh-5.ly"
    \include "../lh/gp-01-lh-179.ly"
    \include "../lh/gp-01-lh-19.ly"
    \include "../lh/gp-01-lh-99.ly"
    \include "../lh/gp-01-lh-101.ly"
    \include "../lh/gp-01-lh-11.ly"
    \include "../lh/gp-01-lh-32.ly"
    \include "../lh/gp-01-lh-35.ly"
    \include "../lh/gp-01-lh-65.ly"
    \include "../lh/gp-01-lh-64.ly"
    \include "../lh/gp-01-lh-190.ly"
    \include "../lh/gp-01-lh-69.ly"
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}