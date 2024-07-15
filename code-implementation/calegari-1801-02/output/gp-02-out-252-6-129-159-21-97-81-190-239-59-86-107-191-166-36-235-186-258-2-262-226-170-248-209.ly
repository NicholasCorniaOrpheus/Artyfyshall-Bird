\include "../paper_settings.ly" 
\header { piece = \markup "[252-6-129-159-21-97-81-190-239-59-86-107-191-166-36-235-186-258-2-262-226-170-248-209]" }

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
    \include "../vc1/gp-02-vc1-252.ly"
    \include "../vc1/gp-02-vc1-6.ly"
    \include "../vc1/gp-02-vc1-129.ly"
    \include "../vc1/gp-02-vc1-159.ly"
    \include "../vc1/gp-02-vc1-21.ly"
    \include "../vc1/gp-02-vc1-97.ly"
    \include "../vc1/gp-02-vc1-81.ly"
    \include "../vc1/gp-02-vc1-190.ly"
    \include "../vc1/gp-02-vc1-239.ly"
    \include "../vc1/gp-02-vc1-59.ly"
    \include "../vc1/gp-02-vc1-86.ly"
    \include "../vc1/gp-02-vc1-107.ly"
    \include "../vc1/gp-02-vc1-191.ly"
    \include "../vc1/gp-02-vc1-166.ly"
    \include "../vc1/gp-02-vc1-36.ly"
    \include "../vc1/gp-02-vc1-235.ly"
    \include "../vc1/gp-02-vc1-186.ly"
    \include "../vc1/gp-02-vc1-258.ly"
    \include "../vc1/gp-02-vc1-2.ly"
    \include "../vc1/gp-02-vc1-262.ly"
    \include "../vc1/gp-02-vc1-226.ly"
    \include "../vc1/gp-02-vc1-170.ly"
    \include "../vc1/gp-02-vc1-248.ly"
    \include "../vc1/gp-02-vc1-209.ly"
    }
    >>
    %Voice2 part
    \context Staff = "voicetwo" \with { instrumentName = "Canto Secondo" }
    <<
    \set Staff.midiInstrument =#"voice oohs" {
    \include "../voice_option.ly"
    \include "../vc2/gp-02-vc2-252.ly"
    \include "../vc2/gp-02-vc2-6.ly"
    \include "../vc2/gp-02-vc2-129.ly"
    \include "../vc2/gp-02-vc2-159.ly"
    \include "../vc2/gp-02-vc2-21.ly"
    \include "../vc2/gp-02-vc2-97.ly"
    \include "../vc2/gp-02-vc2-81.ly"
    \include "../vc2/gp-02-vc2-190.ly"
    \include "../vc2/gp-02-vc2-239.ly"
    \include "../vc2/gp-02-vc2-59.ly"
    \include "../vc2/gp-02-vc2-86.ly"
    \include "../vc2/gp-02-vc2-107.ly"
    \include "../vc2/gp-02-vc2-191.ly"
    \include "../vc2/gp-02-vc2-166.ly"
    \include "../vc2/gp-02-vc2-36.ly"
    \include "../vc2/gp-02-vc2-235.ly"
    \include "../vc2/gp-02-vc2-186.ly"
    \include "../vc2/gp-02-vc2-258.ly"
    \include "../vc2/gp-02-vc2-2.ly"
    \include "../vc2/gp-02-vc2-262.ly"
    \include "../vc2/gp-02-vc2-226.ly"
    \include "../vc2/gp-02-vc2-170.ly"
    \include "../vc2/gp-02-vc2-248.ly"
    \include "../vc2/gp-02-vc2-209.ly"
    }
    >>
    >>
    %Piano part
    \context PianoStaff \with { instrumentName = "Piano-Forte"}
    <<
    \context Staff = "rh" {
    \include "../voice_option.ly"
    \include "../rh/gp-02-rh-252.ly"
    \include "../rh/gp-02-rh-6.ly"
    \include "../rh/gp-02-rh-129.ly"
    \include "../rh/gp-02-rh-159.ly"
    \include "../rh/gp-02-rh-21.ly"
    \include "../rh/gp-02-rh-97.ly"
    \include "../rh/gp-02-rh-81.ly"
    \include "../rh/gp-02-rh-190.ly"
    \include "../rh/gp-02-rh-239.ly"
    \include "../rh/gp-02-rh-59.ly"
    \include "../rh/gp-02-rh-86.ly"
    \include "../rh/gp-02-rh-107.ly"
    \include "../rh/gp-02-rh-191.ly"
    \include "../rh/gp-02-rh-166.ly"
    \include "../rh/gp-02-rh-36.ly"
    \include "../rh/gp-02-rh-235.ly"
    \include "../rh/gp-02-rh-186.ly"
    \include "../rh/gp-02-rh-258.ly"
    \include "../rh/gp-02-rh-2.ly"
    \include "../rh/gp-02-rh-262.ly"
    \include "../rh/gp-02-rh-226.ly"
    \include "../rh/gp-02-rh-170.ly"
    \include "../rh/gp-02-rh-248.ly"
    \include "../rh/gp-02-rh-209.ly"
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/gp-02-lh-252.ly"
    \include "../lh/gp-02-lh-6.ly"
    \include "../lh/gp-02-lh-129.ly"
    \include "../lh/gp-02-lh-159.ly"
    \include "../lh/gp-02-lh-21.ly"
    \include "../lh/gp-02-lh-97.ly"
    \include "../lh/gp-02-lh-81.ly"
    \include "../lh/gp-02-lh-190.ly"
    \include "../lh/gp-02-lh-239.ly"
    \include "../lh/gp-02-lh-59.ly"
    \include "../lh/gp-02-lh-86.ly"
    \include "../lh/gp-02-lh-107.ly"
    \include "../lh/gp-02-lh-191.ly"
    \include "../lh/gp-02-lh-166.ly"
    \include "../lh/gp-02-lh-36.ly"
    \include "../lh/gp-02-lh-235.ly"
    \include "../lh/gp-02-lh-186.ly"
    \include "../lh/gp-02-lh-258.ly"
    \include "../lh/gp-02-lh-2.ly"
    \include "../lh/gp-02-lh-262.ly"
    \include "../lh/gp-02-lh-226.ly"
    \include "../lh/gp-02-lh-170.ly"
    \include "../lh/gp-02-lh-248.ly"
    \include "../lh/gp-02-lh-209.ly"
    \bar":|."
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}