\include "../paper_settings.ly" 
\header { piece = \markup "[217-109-132-263-57-11-79-23-84-85-91-49-62-234-58-164-103-205-116-259-213-22-193-12]" }

  %! abjad.LilyPondFile._get_format_pieces()
\score
  %! abjad.LilyPondFile._get_format_pieces()
{
    <<
    \new ChoirStaff
    <<
    %Voice1 part
    \context Staff = "voiceone" \with { instrumentName = "Canto Primo" }
    <<
    \set Staff.midiInstrument =#"voice oohs" {
    \include "../voice_option.ly"
    \include "../vc1/gp-02-vc1-217.ly"
    \include "../vc1/gp-02-vc1-109.ly"
    \include "../vc1/gp-02-vc1-132.ly"
    \include "../vc1/gp-02-vc1-263.ly"
    \include "../vc1/gp-02-vc1-57.ly"
    \include "../vc1/gp-02-vc1-11.ly"
    \include "../vc1/gp-02-vc1-79.ly"
    \include "../vc1/gp-02-vc1-23.ly"
    \include "../vc1/gp-02-vc1-84.ly"
    \include "../vc1/gp-02-vc1-85.ly"
    \include "../vc1/gp-02-vc1-91.ly"
    \include "../vc1/gp-02-vc1-49.ly"
    \include "../vc1/gp-02-vc1-62.ly"
    \include "../vc1/gp-02-vc1-234.ly"
    \include "../vc1/gp-02-vc1-58.ly"
    \include "../vc1/gp-02-vc1-164.ly"
    \include "../vc1/gp-02-vc1-103.ly"
    \include "../vc1/gp-02-vc1-205.ly"
    \include "../vc1/gp-02-vc1-116.ly"
    \include "../vc1/gp-02-vc1-259.ly"
    \include "../vc1/gp-02-vc1-213.ly"
    \include "../vc1/gp-02-vc1-22.ly"
    \include "../vc1/gp-02-vc1-193.ly"
    \include "../vc1/gp-02-vc1-12.ly"
    }
    >>
    %Voice2 part
    \context Staff = "voicetwo" \with { instrumentName = "Canto Secondo" }
    <<
    \set Staff.midiInstrument =#"voice oohs" {
    \include "../voice_option.ly"
    \include "../vc2/gp-02-vc2-217.ly"
    \include "../vc2/gp-02-vc2-109.ly"
    \include "../vc2/gp-02-vc2-132.ly"
    \include "../vc2/gp-02-vc2-263.ly"
    \include "../vc2/gp-02-vc2-57.ly"
    \include "../vc2/gp-02-vc2-11.ly"
    \include "../vc2/gp-02-vc2-79.ly"
    \include "../vc2/gp-02-vc2-23.ly"
    \include "../vc2/gp-02-vc2-84.ly"
    \include "../vc2/gp-02-vc2-85.ly"
    \include "../vc2/gp-02-vc2-91.ly"
    \include "../vc2/gp-02-vc2-49.ly"
    \include "../vc2/gp-02-vc2-62.ly"
    \include "../vc2/gp-02-vc2-234.ly"
    \include "../vc2/gp-02-vc2-58.ly"
    \include "../vc2/gp-02-vc2-164.ly"
    \include "../vc2/gp-02-vc2-103.ly"
    \include "../vc2/gp-02-vc2-205.ly"
    \include "../vc2/gp-02-vc2-116.ly"
    \include "../vc2/gp-02-vc2-259.ly"
    \include "../vc2/gp-02-vc2-213.ly"
    \include "../vc2/gp-02-vc2-22.ly"
    \include "../vc2/gp-02-vc2-193.ly"
    \include "../vc2/gp-02-vc2-12.ly"
    }
    >>
    >>
    %Piano part
    \context PianoStaff \with { instrumentName = "Piano-Forte"}
    <<
    \context Staff = "rh" {
    \include "../voice_option.ly"
    \include "../rh/gp-02-rh-217.ly"
    \include "../rh/gp-02-rh-109.ly"
    \include "../rh/gp-02-rh-132.ly"
    \include "../rh/gp-02-rh-263.ly"
    \include "../rh/gp-02-rh-57.ly"
    \include "../rh/gp-02-rh-11.ly"
    \include "../rh/gp-02-rh-79.ly"
    \include "../rh/gp-02-rh-23.ly"
    \include "../rh/gp-02-rh-84.ly"
    \include "../rh/gp-02-rh-85.ly"
    \include "../rh/gp-02-rh-91.ly"
    \include "../rh/gp-02-rh-49.ly"
    \include "../rh/gp-02-rh-62.ly"
    \include "../rh/gp-02-rh-234.ly"
    \include "../rh/gp-02-rh-58.ly"
    \include "../rh/gp-02-rh-164.ly"
    \include "../rh/gp-02-rh-103.ly"
    \include "../rh/gp-02-rh-205.ly"
    \include "../rh/gp-02-rh-116.ly"
    \include "../rh/gp-02-rh-259.ly"
    \include "../rh/gp-02-rh-213.ly"
    \include "../rh/gp-02-rh-22.ly"
    \include "../rh/gp-02-rh-193.ly"
    \include "../rh/gp-02-rh-12.ly"
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/gp-02-lh-217.ly"
    \include "../lh/gp-02-lh-109.ly"
    \include "../lh/gp-02-lh-132.ly"
    \include "../lh/gp-02-lh-263.ly"
    \include "../lh/gp-02-lh-57.ly"
    \include "../lh/gp-02-lh-11.ly"
    \include "../lh/gp-02-lh-79.ly"
    \include "../lh/gp-02-lh-23.ly"
    \include "../lh/gp-02-lh-84.ly"
    \include "../lh/gp-02-lh-85.ly"
    \include "../lh/gp-02-lh-91.ly"
    \include "../lh/gp-02-lh-49.ly"
    \include "../lh/gp-02-lh-62.ly"
    \include "../lh/gp-02-lh-234.ly"
    \include "../lh/gp-02-lh-58.ly"
    \include "../lh/gp-02-lh-164.ly"
    \include "../lh/gp-02-lh-103.ly"
    \include "../lh/gp-02-lh-205.ly"
    \include "../lh/gp-02-lh-116.ly"
    \include "../lh/gp-02-lh-259.ly"
    \include "../lh/gp-02-lh-213.ly"
    \include "../lh/gp-02-lh-22.ly"
    \include "../lh/gp-02-lh-193.ly"
    \include "../lh/gp-02-lh-12.ly"
    \bar":|."
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}