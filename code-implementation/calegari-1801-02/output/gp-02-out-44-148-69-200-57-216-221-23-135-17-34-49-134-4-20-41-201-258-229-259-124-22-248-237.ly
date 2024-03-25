\include "../paper_settings.ly" 
\header { piece = \markup "[44-148-69-200-57-216-221-23-135-17-34-49-134-4-20-41-201-258-229-259-124-22-248-237]" }

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
    \include "../vc1/gp-02-vc1-44.ly"
    \include "../vc1/gp-02-vc1-148.ly"
    \include "../vc1/gp-02-vc1-69.ly"
    \include "../vc1/gp-02-vc1-200.ly"
    \include "../vc1/gp-02-vc1-57.ly"
    \include "../vc1/gp-02-vc1-216.ly"
    \include "../vc1/gp-02-vc1-221.ly"
    \include "../vc1/gp-02-vc1-23.ly"
    \include "../vc1/gp-02-vc1-135.ly"
    \include "../vc1/gp-02-vc1-17.ly"
    \include "../vc1/gp-02-vc1-34.ly"
    \include "../vc1/gp-02-vc1-49.ly"
    \include "../vc1/gp-02-vc1-134.ly"
    \include "../vc1/gp-02-vc1-4.ly"
    \include "../vc1/gp-02-vc1-20.ly"
    \include "../vc1/gp-02-vc1-41.ly"
    \include "../vc1/gp-02-vc1-201.ly"
    \include "../vc1/gp-02-vc1-258.ly"
    \include "../vc1/gp-02-vc1-229.ly"
    \include "../vc1/gp-02-vc1-259.ly"
    \include "../vc1/gp-02-vc1-124.ly"
    \include "../vc1/gp-02-vc1-22.ly"
    \include "../vc1/gp-02-vc1-248.ly"
    \include "../vc1/gp-02-vc1-237.ly"
    }
    >>
    %Voice2 part
    \context Staff = "voicetwo" \with { instrumentName = "Canto Secondo" }
    <<
    \set Staff.midiInstrument =#"voice oohs" {
    \include "../voice_option.ly"
    \include "../vc2/gp-02-vc2-44.ly"
    \include "../vc2/gp-02-vc2-148.ly"
    \include "../vc2/gp-02-vc2-69.ly"
    \include "../vc2/gp-02-vc2-200.ly"
    \include "../vc2/gp-02-vc2-57.ly"
    \include "../vc2/gp-02-vc2-216.ly"
    \include "../vc2/gp-02-vc2-221.ly"
    \include "../vc2/gp-02-vc2-23.ly"
    \include "../vc2/gp-02-vc2-135.ly"
    \include "../vc2/gp-02-vc2-17.ly"
    \include "../vc2/gp-02-vc2-34.ly"
    \include "../vc2/gp-02-vc2-49.ly"
    \include "../vc2/gp-02-vc2-134.ly"
    \include "../vc2/gp-02-vc2-4.ly"
    \include "../vc2/gp-02-vc2-20.ly"
    \include "../vc2/gp-02-vc2-41.ly"
    \include "../vc2/gp-02-vc2-201.ly"
    \include "../vc2/gp-02-vc2-258.ly"
    \include "../vc2/gp-02-vc2-229.ly"
    \include "../vc2/gp-02-vc2-259.ly"
    \include "../vc2/gp-02-vc2-124.ly"
    \include "../vc2/gp-02-vc2-22.ly"
    \include "../vc2/gp-02-vc2-248.ly"
    \include "../vc2/gp-02-vc2-237.ly"
    }
    >>
    >>
    %Piano part
    \context PianoStaff \with { instrumentName = "Piano-Forte"}
    <<
    \context Staff = "rh" {
    \include "../voice_option.ly"
    \include "../rh/gp-02-rh-44.ly"
    \include "../rh/gp-02-rh-148.ly"
    \include "../rh/gp-02-rh-69.ly"
    \include "../rh/gp-02-rh-200.ly"
    \include "../rh/gp-02-rh-57.ly"
    \include "../rh/gp-02-rh-216.ly"
    \include "../rh/gp-02-rh-221.ly"
    \include "../rh/gp-02-rh-23.ly"
    \include "../rh/gp-02-rh-135.ly"
    \include "../rh/gp-02-rh-17.ly"
    \include "../rh/gp-02-rh-34.ly"
    \include "../rh/gp-02-rh-49.ly"
    \include "../rh/gp-02-rh-134.ly"
    \include "../rh/gp-02-rh-4.ly"
    \include "../rh/gp-02-rh-20.ly"
    \include "../rh/gp-02-rh-41.ly"
    \include "../rh/gp-02-rh-201.ly"
    \include "../rh/gp-02-rh-258.ly"
    \include "../rh/gp-02-rh-229.ly"
    \include "../rh/gp-02-rh-259.ly"
    \include "../rh/gp-02-rh-124.ly"
    \include "../rh/gp-02-rh-22.ly"
    \include "../rh/gp-02-rh-248.ly"
    \include "../rh/gp-02-rh-237.ly"
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/gp-02-lh-44.ly"
    \include "../lh/gp-02-lh-148.ly"
    \include "../lh/gp-02-lh-69.ly"
    \include "../lh/gp-02-lh-200.ly"
    \include "../lh/gp-02-lh-57.ly"
    \include "../lh/gp-02-lh-216.ly"
    \include "../lh/gp-02-lh-221.ly"
    \include "../lh/gp-02-lh-23.ly"
    \include "../lh/gp-02-lh-135.ly"
    \include "../lh/gp-02-lh-17.ly"
    \include "../lh/gp-02-lh-34.ly"
    \include "../lh/gp-02-lh-49.ly"
    \include "../lh/gp-02-lh-134.ly"
    \include "../lh/gp-02-lh-4.ly"
    \include "../lh/gp-02-lh-20.ly"
    \include "../lh/gp-02-lh-41.ly"
    \include "../lh/gp-02-lh-201.ly"
    \include "../lh/gp-02-lh-258.ly"
    \include "../lh/gp-02-lh-229.ly"
    \include "../lh/gp-02-lh-259.ly"
    \include "../lh/gp-02-lh-124.ly"
    \include "../lh/gp-02-lh-22.ly"
    \include "../lh/gp-02-lh-248.ly"
    \include "../lh/gp-02-lh-237.ly"
    \bar":|."
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}