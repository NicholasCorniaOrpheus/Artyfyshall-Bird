\include "../paper_settings.ly" 
\header { piece = \markup "[81-13-111-10-96-154-27-179-178-99-185-97-23-147-50-117-125-159]" }

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
    \include "../voice/gp-01-vc-13.ly"
    \include "../voice/gp-01-vc-111.ly"
    \include "../voice/gp-01-vc-10.ly"
    \include "../voice/gp-01-vc-96.ly"
    \include "../voice/gp-01-vc-154.ly"
    \include "../voice/gp-01-vc-27.ly"
    \include "../voice/gp-01-vc-179.ly"
    \include "../voice/gp-01-vc-178.ly"
    \include "../voice/gp-01-vc-99.ly"
    \include "../voice/gp-01-vc-185.ly"
    \include "../voice/gp-01-vc-97.ly"
    \include "../voice/gp-01-vc-23.ly"
    \include "../voice/gp-01-vc-147.ly"
    \include "../voice/gp-01-vc-50.ly"
    \include "../voice/gp-01-vc-117.ly"
    \include "../voice/gp-01-vc-125.ly"
    \include "../voice/gp-01-vc-159.ly"
    }
    >>
    %Piano part
    \context PianoStaff \with { instrumentName = "Piano"}
    <<
    \context Staff = "rh" {
    \include "../voice_option.ly"
    \include "../rh/gp-01-rh-81.ly"
    \include "../rh/gp-01-rh-13.ly"
    \include "../rh/gp-01-rh-111.ly"
    \include "../rh/gp-01-rh-10.ly"
    \include "../rh/gp-01-rh-96.ly"
    \include "../rh/gp-01-rh-154.ly"
    \include "../rh/gp-01-rh-27.ly"
    \include "../rh/gp-01-rh-179.ly"
    \include "../rh/gp-01-rh-178.ly"
    \include "../rh/gp-01-rh-99.ly"
    \include "../rh/gp-01-rh-185.ly"
    \include "../rh/gp-01-rh-97.ly"
    \include "../rh/gp-01-rh-23.ly"
    \include "../rh/gp-01-rh-147.ly"
    \include "../rh/gp-01-rh-50.ly"
    \include "../rh/gp-01-rh-117.ly"
    \include "../rh/gp-01-rh-125.ly"
    \include "../rh/gp-01-rh-159.ly"
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/gp-01-lh-81.ly"
    \include "../lh/gp-01-lh-13.ly"
    \include "../lh/gp-01-lh-111.ly"
    \include "../lh/gp-01-lh-10.ly"
    \include "../lh/gp-01-lh-96.ly"
    \include "../lh/gp-01-lh-154.ly"
    \include "../lh/gp-01-lh-27.ly"
    \include "../lh/gp-01-lh-179.ly"
    \include "../lh/gp-01-lh-178.ly"
    \include "../lh/gp-01-lh-99.ly"
    \include "../lh/gp-01-lh-185.ly"
    \include "../lh/gp-01-lh-97.ly"
    \include "../lh/gp-01-lh-23.ly"
    \include "../lh/gp-01-lh-147.ly"
    \include "../lh/gp-01-lh-50.ly"
    \include "../lh/gp-01-lh-117.ly"
    \include "../lh/gp-01-lh-125.ly"
    \include "../lh/gp-01-lh-159.ly"
    \bar":|."
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}