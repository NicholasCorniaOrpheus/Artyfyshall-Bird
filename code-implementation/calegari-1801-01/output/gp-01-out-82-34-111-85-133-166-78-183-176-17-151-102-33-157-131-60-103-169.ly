\include "../paper_settings.ly" 
\header { piece = \markup "[82-34-111-85-133-166-78-183-176-17-151-102-33-157-131-60-103-169]" }

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
    \include "../voice/gp-01-vc-82.ly"
    \include "../voice/gp-01-vc-34.ly"
    \include "../voice/gp-01-vc-111.ly"
    \include "../voice/gp-01-vc-85.ly"
    \include "../voice/gp-01-vc-133.ly"
    \include "../voice/gp-01-vc-166.ly"
    \include "../voice/gp-01-vc-78.ly"
    \include "../voice/gp-01-vc-183.ly"
    \include "../voice/gp-01-vc-176.ly"
    \include "../voice/gp-01-vc-17.ly"
    \include "../voice/gp-01-vc-151.ly"
    \include "../voice/gp-01-vc-102.ly"
    \include "../voice/gp-01-vc-33.ly"
    \include "../voice/gp-01-vc-157.ly"
    \include "../voice/gp-01-vc-131.ly"
    \include "../voice/gp-01-vc-60.ly"
    \include "../voice/gp-01-vc-103.ly"
    \include "../voice/gp-01-vc-169.ly"
    }
    >>
    %Piano part
    \context PianoStaff \with { instrumentName = "Piano"}
    <<
    \context Staff = "rh" {
    \include "../voice_option.ly"
    \include "../rh/gp-01-rh-82.ly"
    \include "../rh/gp-01-rh-34.ly"
    \include "../rh/gp-01-rh-111.ly"
    \include "../rh/gp-01-rh-85.ly"
    \include "../rh/gp-01-rh-133.ly"
    \include "../rh/gp-01-rh-166.ly"
    \include "../rh/gp-01-rh-78.ly"
    \include "../rh/gp-01-rh-183.ly"
    \include "../rh/gp-01-rh-176.ly"
    \include "../rh/gp-01-rh-17.ly"
    \include "../rh/gp-01-rh-151.ly"
    \include "../rh/gp-01-rh-102.ly"
    \include "../rh/gp-01-rh-33.ly"
    \include "../rh/gp-01-rh-157.ly"
    \include "../rh/gp-01-rh-131.ly"
    \include "../rh/gp-01-rh-60.ly"
    \include "../rh/gp-01-rh-103.ly"
    \include "../rh/gp-01-rh-169.ly"
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/gp-01-lh-82.ly"
    \include "../lh/gp-01-lh-34.ly"
    \include "../lh/gp-01-lh-111.ly"
    \include "../lh/gp-01-lh-85.ly"
    \include "../lh/gp-01-lh-133.ly"
    \include "../lh/gp-01-lh-166.ly"
    \include "../lh/gp-01-lh-78.ly"
    \include "../lh/gp-01-lh-183.ly"
    \include "../lh/gp-01-lh-176.ly"
    \include "../lh/gp-01-lh-17.ly"
    \include "../lh/gp-01-lh-151.ly"
    \include "../lh/gp-01-lh-102.ly"
    \include "../lh/gp-01-lh-33.ly"
    \include "../lh/gp-01-lh-157.ly"
    \include "../lh/gp-01-lh-131.ly"
    \include "../lh/gp-01-lh-60.ly"
    \include "../lh/gp-01-lh-103.ly"
    \include "../lh/gp-01-lh-169.ly"
    \bar":|."
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}