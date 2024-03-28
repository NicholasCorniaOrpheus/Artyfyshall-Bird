\include "../paper_settings.ly" 
\header { piece = \markup "[140-184-55-2-9-175-73-90-176-17-95-195-163-6-131-144-53-169]" }

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
    \include "../voice/gp-01-vc-140.ly"
    \include "../voice/gp-01-vc-184.ly"
    \include "../voice/gp-01-vc-55.ly"
    \include "../voice/gp-01-vc-2.ly"
    \include "../voice/gp-01-vc-9.ly"
    \include "../voice/gp-01-vc-175.ly"
    \include "../voice/gp-01-vc-73.ly"
    \include "../voice/gp-01-vc-90.ly"
    \include "../voice/gp-01-vc-176.ly"
    \include "../voice/gp-01-vc-17.ly"
    \include "../voice/gp-01-vc-95.ly"
    \include "../voice/gp-01-vc-195.ly"
    \include "../voice/gp-01-vc-163.ly"
    \include "../voice/gp-01-vc-6.ly"
    \include "../voice/gp-01-vc-131.ly"
    \include "../voice/gp-01-vc-144.ly"
    \include "../voice/gp-01-vc-53.ly"
    \include "../voice/gp-01-vc-169.ly"
    }
    >>
    %Piano part
    \context PianoStaff \with { instrumentName = "Piano"}
    <<
    \context Staff = "rh" {
    \include "../voice_option.ly"
    \include "../rh/gp-01-rh-140.ly"
    \include "../rh/gp-01-rh-184.ly"
    \include "../rh/gp-01-rh-55.ly"
    \include "../rh/gp-01-rh-2.ly"
    \include "../rh/gp-01-rh-9.ly"
    \include "../rh/gp-01-rh-175.ly"
    \include "../rh/gp-01-rh-73.ly"
    \include "../rh/gp-01-rh-90.ly"
    \include "../rh/gp-01-rh-176.ly"
    \include "../rh/gp-01-rh-17.ly"
    \include "../rh/gp-01-rh-95.ly"
    \include "../rh/gp-01-rh-195.ly"
    \include "../rh/gp-01-rh-163.ly"
    \include "../rh/gp-01-rh-6.ly"
    \include "../rh/gp-01-rh-131.ly"
    \include "../rh/gp-01-rh-144.ly"
    \include "../rh/gp-01-rh-53.ly"
    \include "../rh/gp-01-rh-169.ly"
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/gp-01-lh-140.ly"
    \include "../lh/gp-01-lh-184.ly"
    \include "../lh/gp-01-lh-55.ly"
    \include "../lh/gp-01-lh-2.ly"
    \include "../lh/gp-01-lh-9.ly"
    \include "../lh/gp-01-lh-175.ly"
    \include "../lh/gp-01-lh-73.ly"
    \include "../lh/gp-01-lh-90.ly"
    \include "../lh/gp-01-lh-176.ly"
    \include "../lh/gp-01-lh-17.ly"
    \include "../lh/gp-01-lh-95.ly"
    \include "../lh/gp-01-lh-195.ly"
    \include "../lh/gp-01-lh-163.ly"
    \include "../lh/gp-01-lh-6.ly"
    \include "../lh/gp-01-lh-131.ly"
    \include "../lh/gp-01-lh-144.ly"
    \include "../lh/gp-01-lh-53.ly"
    \include "../lh/gp-01-lh-169.ly"
    \bar":|."
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}