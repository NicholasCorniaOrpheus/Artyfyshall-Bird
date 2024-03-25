\include "../paper_settings.ly" 
\header { piece = \markup "[81-184-59-10-141-154-5-94-176-177-95-102-163-147-189-144-125-159]" }

  %! abjad.LilyPondFile._get_format_pieces()
\score
  %! abjad.LilyPondFile._get_format_pieces()
{
    <<
    %Voice part
    \context Staff = "voice" \with { instrumentName = "Voice" }
    <<
    \set Staff.midiInstrument =#"voice oohs" {
    \mark \markup{Prima Parte}
    \include "../voice_option.ly"
    \include "../voice/gp-01-vc-81.ly"
    \include "../voice/gp-01-vc-184.ly"
    \include "../voice/gp-01-vc-59.ly"
    \include "../voice/gp-01-vc-10.ly"
    \include "../voice/gp-01-vc-141.ly"
    \include "../voice/gp-01-vc-154.ly"
    \include "../voice/gp-01-vc-5.ly"
    \include "../voice/gp-01-vc-94.ly"
    \mark \markup{Seconda Parte}
    \include "../voice/gp-01-vc-176.ly"
    \include "../voice/gp-01-vc-177.ly"
    \include "../voice/gp-01-vc-95.ly"
    \include "../voice/gp-01-vc-102.ly"
    \include "../voice/gp-01-vc-163.ly"
    \include "../voice/gp-01-vc-147.ly"
    \include "../voice/gp-01-vc-189.ly"
    \include "../voice/gp-01-vc-144.ly"
    \include "../voice/gp-01-vc-125.ly"
    \include "../voice/gp-01-vc-159.ly"
    \bar":|."
    }
    >>
    %Piano part
    \context PianoStaff \with { instrumentName = "Piano"}
    <<
    \context Staff = "rh" {
    \include "../voice_option.ly"
    \include "../rh/gp-01-rh-81.ly"
    \include "../rh/gp-01-rh-184.ly"
    \include "../rh/gp-01-rh-59.ly"
    \include "../rh/gp-01-rh-10.ly"
    \include "../rh/gp-01-rh-141.ly"
    \include "../rh/gp-01-rh-154.ly"
    \include "../rh/gp-01-rh-5.ly"
    \include "../rh/gp-01-rh-94.ly"
    \include "../rh/gp-01-rh-176.ly"
    \include "../rh/gp-01-rh-177.ly"
    \include "../rh/gp-01-rh-95.ly"
    \include "../rh/gp-01-rh-102.ly"
    \include "../rh/gp-01-rh-163.ly"
    \include "../rh/gp-01-rh-147.ly"
    \include "../rh/gp-01-rh-189.ly"
    \include "../rh/gp-01-rh-144.ly"
    \include "../rh/gp-01-rh-125.ly"
    \include "../rh/gp-01-rh-159.ly"
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/gp-01-lh-81.ly"
    \include "../lh/gp-01-lh-184.ly"
    \include "../lh/gp-01-lh-59.ly"
    \include "../lh/gp-01-lh-10.ly"
    \include "../lh/gp-01-lh-141.ly"
    \include "../lh/gp-01-lh-154.ly"
    \include "../lh/gp-01-lh-5.ly"
    \include "../lh/gp-01-lh-94.ly"
    \include "../lh/gp-01-lh-176.ly"
    \include "../lh/gp-01-lh-177.ly"
    \include "../lh/gp-01-lh-95.ly"
    \include "../lh/gp-01-lh-102.ly"
    \include "../lh/gp-01-lh-163.ly"
    \include "../lh/gp-01-lh-147.ly"
    \include "../lh/gp-01-lh-189.ly"
    \include "../lh/gp-01-lh-144.ly"
    \include "../lh/gp-01-lh-125.ly"
    \include "../lh/gp-01-lh-159.ly"
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}