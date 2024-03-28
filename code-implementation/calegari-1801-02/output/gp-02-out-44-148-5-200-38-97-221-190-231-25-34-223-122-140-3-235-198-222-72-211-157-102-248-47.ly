\include "../paper_settings.ly" 
\header { piece = \markup "[44-148-5-200-38-97-221-190-231-25-34-223-122-140-3-235-198-222-72-211-157-102-248-47]" }

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
    \include "../vc1/gp-02-vc1-5.ly"
    \include "../vc1/gp-02-vc1-200.ly"
    \include "../vc1/gp-02-vc1-38.ly"
    \include "../vc1/gp-02-vc1-97.ly"
    \include "../vc1/gp-02-vc1-221.ly"
    \include "../vc1/gp-02-vc1-190.ly"
    \include "../vc1/gp-02-vc1-231.ly"
    \include "../vc1/gp-02-vc1-25.ly"
    \include "../vc1/gp-02-vc1-34.ly"
    \include "../vc1/gp-02-vc1-223.ly"
    \include "../vc1/gp-02-vc1-122.ly"
    \include "../vc1/gp-02-vc1-140.ly"
    \include "../vc1/gp-02-vc1-3.ly"
    \include "../vc1/gp-02-vc1-235.ly"
    \include "../vc1/gp-02-vc1-198.ly"
    \include "../vc1/gp-02-vc1-222.ly"
    \include "../vc1/gp-02-vc1-72.ly"
    \include "../vc1/gp-02-vc1-211.ly"
    \include "../vc1/gp-02-vc1-157.ly"
    \include "../vc1/gp-02-vc1-102.ly"
    \include "../vc1/gp-02-vc1-248.ly"
    \include "../vc1/gp-02-vc1-47.ly"
    }
    >>
    %Voice2 part
    \context Staff = "voicetwo" \with { instrumentName = "Canto Secondo" }
    <<
    \set Staff.midiInstrument =#"voice oohs" {
    \include "../voice_option.ly"
    \include "../vc2/gp-02-vc2-44.ly"
    \include "../vc2/gp-02-vc2-148.ly"
    \include "../vc2/gp-02-vc2-5.ly"
    \include "../vc2/gp-02-vc2-200.ly"
    \include "../vc2/gp-02-vc2-38.ly"
    \include "../vc2/gp-02-vc2-97.ly"
    \include "../vc2/gp-02-vc2-221.ly"
    \include "../vc2/gp-02-vc2-190.ly"
    \include "../vc2/gp-02-vc2-231.ly"
    \include "../vc2/gp-02-vc2-25.ly"
    \include "../vc2/gp-02-vc2-34.ly"
    \include "../vc2/gp-02-vc2-223.ly"
    \include "../vc2/gp-02-vc2-122.ly"
    \include "../vc2/gp-02-vc2-140.ly"
    \include "../vc2/gp-02-vc2-3.ly"
    \include "../vc2/gp-02-vc2-235.ly"
    \include "../vc2/gp-02-vc2-198.ly"
    \include "../vc2/gp-02-vc2-222.ly"
    \include "../vc2/gp-02-vc2-72.ly"
    \include "../vc2/gp-02-vc2-211.ly"
    \include "../vc2/gp-02-vc2-157.ly"
    \include "../vc2/gp-02-vc2-102.ly"
    \include "../vc2/gp-02-vc2-248.ly"
    \include "../vc2/gp-02-vc2-47.ly"
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
    \include "../rh/gp-02-rh-5.ly"
    \include "../rh/gp-02-rh-200.ly"
    \include "../rh/gp-02-rh-38.ly"
    \include "../rh/gp-02-rh-97.ly"
    \include "../rh/gp-02-rh-221.ly"
    \include "../rh/gp-02-rh-190.ly"
    \include "../rh/gp-02-rh-231.ly"
    \include "../rh/gp-02-rh-25.ly"
    \include "../rh/gp-02-rh-34.ly"
    \include "../rh/gp-02-rh-223.ly"
    \include "../rh/gp-02-rh-122.ly"
    \include "../rh/gp-02-rh-140.ly"
    \include "../rh/gp-02-rh-3.ly"
    \include "../rh/gp-02-rh-235.ly"
    \include "../rh/gp-02-rh-198.ly"
    \include "../rh/gp-02-rh-222.ly"
    \include "../rh/gp-02-rh-72.ly"
    \include "../rh/gp-02-rh-211.ly"
    \include "../rh/gp-02-rh-157.ly"
    \include "../rh/gp-02-rh-102.ly"
    \include "../rh/gp-02-rh-248.ly"
    \include "../rh/gp-02-rh-47.ly"
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/gp-02-lh-44.ly"
    \include "../lh/gp-02-lh-148.ly"
    \include "../lh/gp-02-lh-5.ly"
    \include "../lh/gp-02-lh-200.ly"
    \include "../lh/gp-02-lh-38.ly"
    \include "../lh/gp-02-lh-97.ly"
    \include "../lh/gp-02-lh-221.ly"
    \include "../lh/gp-02-lh-190.ly"
    \include "../lh/gp-02-lh-231.ly"
    \include "../lh/gp-02-lh-25.ly"
    \include "../lh/gp-02-lh-34.ly"
    \include "../lh/gp-02-lh-223.ly"
    \include "../lh/gp-02-lh-122.ly"
    \include "../lh/gp-02-lh-140.ly"
    \include "../lh/gp-02-lh-3.ly"
    \include "../lh/gp-02-lh-235.ly"
    \include "../lh/gp-02-lh-198.ly"
    \include "../lh/gp-02-lh-222.ly"
    \include "../lh/gp-02-lh-72.ly"
    \include "../lh/gp-02-lh-211.ly"
    \include "../lh/gp-02-lh-157.ly"
    \include "../lh/gp-02-lh-102.ly"
    \include "../lh/gp-02-lh-248.ly"
    \include "../lh/gp-02-lh-47.ly"
    \bar":|."
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}