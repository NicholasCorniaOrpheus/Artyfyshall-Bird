\include "../paper_settings.ly" 
\header { piece = \markup "[42-109-132-118-212-54-63-16-239-17-9-256-62-4-3-41-80-145-72-211-157-170-193-152]" }

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
    \include "../vc1/gp-02-vc1-42.ly"
    \include "../vc1/gp-02-vc1-109.ly"
    \include "../vc1/gp-02-vc1-132.ly"
    \include "../vc1/gp-02-vc1-118.ly"
    \include "../vc1/gp-02-vc1-212.ly"
    \include "../vc1/gp-02-vc1-54.ly"
    \include "../vc1/gp-02-vc1-63.ly"
    \include "../vc1/gp-02-vc1-16.ly"
    \include "../vc1/gp-02-vc1-239.ly"
    \include "../vc1/gp-02-vc1-17.ly"
    \include "../vc1/gp-02-vc1-9.ly"
    \include "../vc1/gp-02-vc1-256.ly"
    \include "../vc1/gp-02-vc1-62.ly"
    \include "../vc1/gp-02-vc1-4.ly"
    \include "../vc1/gp-02-vc1-3.ly"
    \include "../vc1/gp-02-vc1-41.ly"
    \include "../vc1/gp-02-vc1-80.ly"
    \include "../vc1/gp-02-vc1-145.ly"
    \include "../vc1/gp-02-vc1-72.ly"
    \include "../vc1/gp-02-vc1-211.ly"
    \include "../vc1/gp-02-vc1-157.ly"
    \include "../vc1/gp-02-vc1-170.ly"
    \include "../vc1/gp-02-vc1-193.ly"
    \include "../vc1/gp-02-vc1-152.ly"
    }
    >>
    %Voice2 part
    \context Staff = "voicetwo" \with { instrumentName = "Canto Secondo" }
    <<
    \set Staff.midiInstrument =#"voice oohs" {
    \include "../voice_option.ly"
    \include "../vc2/gp-02-vc2-42.ly"
    \include "../vc2/gp-02-vc2-109.ly"
    \include "../vc2/gp-02-vc2-132.ly"
    \include "../vc2/gp-02-vc2-118.ly"
    \include "../vc2/gp-02-vc2-212.ly"
    \include "../vc2/gp-02-vc2-54.ly"
    \include "../vc2/gp-02-vc2-63.ly"
    \include "../vc2/gp-02-vc2-16.ly"
    \include "../vc2/gp-02-vc2-239.ly"
    \include "../vc2/gp-02-vc2-17.ly"
    \include "../vc2/gp-02-vc2-9.ly"
    \include "../vc2/gp-02-vc2-256.ly"
    \include "../vc2/gp-02-vc2-62.ly"
    \include "../vc2/gp-02-vc2-4.ly"
    \include "../vc2/gp-02-vc2-3.ly"
    \include "../vc2/gp-02-vc2-41.ly"
    \include "../vc2/gp-02-vc2-80.ly"
    \include "../vc2/gp-02-vc2-145.ly"
    \include "../vc2/gp-02-vc2-72.ly"
    \include "../vc2/gp-02-vc2-211.ly"
    \include "../vc2/gp-02-vc2-157.ly"
    \include "../vc2/gp-02-vc2-170.ly"
    \include "../vc2/gp-02-vc2-193.ly"
    \include "../vc2/gp-02-vc2-152.ly"
    }
    >>
    >>
    %Piano part
    \context PianoStaff \with { instrumentName = "Piano-Forte"}
    <<
    \context Staff = "rh" {
    \include "../voice_option.ly"
    \include "../rh/gp-02-rh-42.ly"
    \include "../rh/gp-02-rh-109.ly"
    \include "../rh/gp-02-rh-132.ly"
    \include "../rh/gp-02-rh-118.ly"
    \include "../rh/gp-02-rh-212.ly"
    \include "../rh/gp-02-rh-54.ly"
    \include "../rh/gp-02-rh-63.ly"
    \include "../rh/gp-02-rh-16.ly"
    \include "../rh/gp-02-rh-239.ly"
    \include "../rh/gp-02-rh-17.ly"
    \include "../rh/gp-02-rh-9.ly"
    \include "../rh/gp-02-rh-256.ly"
    \include "../rh/gp-02-rh-62.ly"
    \include "../rh/gp-02-rh-4.ly"
    \include "../rh/gp-02-rh-3.ly"
    \include "../rh/gp-02-rh-41.ly"
    \include "../rh/gp-02-rh-80.ly"
    \include "../rh/gp-02-rh-145.ly"
    \include "../rh/gp-02-rh-72.ly"
    \include "../rh/gp-02-rh-211.ly"
    \include "../rh/gp-02-rh-157.ly"
    \include "../rh/gp-02-rh-170.ly"
    \include "../rh/gp-02-rh-193.ly"
    \include "../rh/gp-02-rh-152.ly"
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/gp-02-lh-42.ly"
    \include "../lh/gp-02-lh-109.ly"
    \include "../lh/gp-02-lh-132.ly"
    \include "../lh/gp-02-lh-118.ly"
    \include "../lh/gp-02-lh-212.ly"
    \include "../lh/gp-02-lh-54.ly"
    \include "../lh/gp-02-lh-63.ly"
    \include "../lh/gp-02-lh-16.ly"
    \include "../lh/gp-02-lh-239.ly"
    \include "../lh/gp-02-lh-17.ly"
    \include "../lh/gp-02-lh-9.ly"
    \include "../lh/gp-02-lh-256.ly"
    \include "../lh/gp-02-lh-62.ly"
    \include "../lh/gp-02-lh-4.ly"
    \include "../lh/gp-02-lh-3.ly"
    \include "../lh/gp-02-lh-41.ly"
    \include "../lh/gp-02-lh-80.ly"
    \include "../lh/gp-02-lh-145.ly"
    \include "../lh/gp-02-lh-72.ly"
    \include "../lh/gp-02-lh-211.ly"
    \include "../lh/gp-02-lh-157.ly"
    \include "../lh/gp-02-lh-170.ly"
    \include "../lh/gp-02-lh-193.ly"
    \include "../lh/gp-02-lh-152.ly"
    \bar":|."
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}