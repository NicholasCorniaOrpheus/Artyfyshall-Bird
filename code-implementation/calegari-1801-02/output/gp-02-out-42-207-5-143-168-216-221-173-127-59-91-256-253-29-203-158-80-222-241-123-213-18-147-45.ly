\include "../paper_settings.ly" 
\header { piece = \markup "[42-207-5-143-168-216-221-173-127-59-91-256-253-29-203-158-80-222-241-123-213-18-147-45]" }

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
    \include "../vc1/gp-02-vc1-207.ly"
    \include "../vc1/gp-02-vc1-5.ly"
    \include "../vc1/gp-02-vc1-143.ly"
    \include "../vc1/gp-02-vc1-168.ly"
    \include "../vc1/gp-02-vc1-216.ly"
    \include "../vc1/gp-02-vc1-221.ly"
    \include "../vc1/gp-02-vc1-173.ly"
    \include "../vc1/gp-02-vc1-127.ly"
    \include "../vc1/gp-02-vc1-59.ly"
    \include "../vc1/gp-02-vc1-91.ly"
    \include "../vc1/gp-02-vc1-256.ly"
    \include "../vc1/gp-02-vc1-253.ly"
    \include "../vc1/gp-02-vc1-29.ly"
    \include "../vc1/gp-02-vc1-203.ly"
    \include "../vc1/gp-02-vc1-158.ly"
    \include "../vc1/gp-02-vc1-80.ly"
    \include "../vc1/gp-02-vc1-222.ly"
    \include "../vc1/gp-02-vc1-241.ly"
    \include "../vc1/gp-02-vc1-123.ly"
    \include "../vc1/gp-02-vc1-213.ly"
    \include "../vc1/gp-02-vc1-18.ly"
    \include "../vc1/gp-02-vc1-147.ly"
    \include "../vc1/gp-02-vc1-45.ly"
    }
    >>
    %Voice2 part
    \context Staff = "voicetwo" \with { instrumentName = "Canto Secondo" }
    <<
    \set Staff.midiInstrument =#"voice oohs" {
    \include "../voice_option.ly"
    \include "../vc2/gp-02-vc2-42.ly"
    \include "../vc2/gp-02-vc2-207.ly"
    \include "../vc2/gp-02-vc2-5.ly"
    \include "../vc2/gp-02-vc2-143.ly"
    \include "../vc2/gp-02-vc2-168.ly"
    \include "../vc2/gp-02-vc2-216.ly"
    \include "../vc2/gp-02-vc2-221.ly"
    \include "../vc2/gp-02-vc2-173.ly"
    \include "../vc2/gp-02-vc2-127.ly"
    \include "../vc2/gp-02-vc2-59.ly"
    \include "../vc2/gp-02-vc2-91.ly"
    \include "../vc2/gp-02-vc2-256.ly"
    \include "../vc2/gp-02-vc2-253.ly"
    \include "../vc2/gp-02-vc2-29.ly"
    \include "../vc2/gp-02-vc2-203.ly"
    \include "../vc2/gp-02-vc2-158.ly"
    \include "../vc2/gp-02-vc2-80.ly"
    \include "../vc2/gp-02-vc2-222.ly"
    \include "../vc2/gp-02-vc2-241.ly"
    \include "../vc2/gp-02-vc2-123.ly"
    \include "../vc2/gp-02-vc2-213.ly"
    \include "../vc2/gp-02-vc2-18.ly"
    \include "../vc2/gp-02-vc2-147.ly"
    \include "../vc2/gp-02-vc2-45.ly"
    }
    >>
    >>
    %Piano part
    \context PianoStaff \with { instrumentName = "Piano-Forte"}
    <<
    \context Staff = "rh" {
    \include "../voice_option.ly"
    \include "../rh/gp-02-rh-42.ly"
    \include "../rh/gp-02-rh-207.ly"
    \include "../rh/gp-02-rh-5.ly"
    \include "../rh/gp-02-rh-143.ly"
    \include "../rh/gp-02-rh-168.ly"
    \include "../rh/gp-02-rh-216.ly"
    \include "../rh/gp-02-rh-221.ly"
    \include "../rh/gp-02-rh-173.ly"
    \include "../rh/gp-02-rh-127.ly"
    \include "../rh/gp-02-rh-59.ly"
    \include "../rh/gp-02-rh-91.ly"
    \include "../rh/gp-02-rh-256.ly"
    \include "../rh/gp-02-rh-253.ly"
    \include "../rh/gp-02-rh-29.ly"
    \include "../rh/gp-02-rh-203.ly"
    \include "../rh/gp-02-rh-158.ly"
    \include "../rh/gp-02-rh-80.ly"
    \include "../rh/gp-02-rh-222.ly"
    \include "../rh/gp-02-rh-241.ly"
    \include "../rh/gp-02-rh-123.ly"
    \include "../rh/gp-02-rh-213.ly"
    \include "../rh/gp-02-rh-18.ly"
    \include "../rh/gp-02-rh-147.ly"
    \include "../rh/gp-02-rh-45.ly"
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/gp-02-lh-42.ly"
    \include "../lh/gp-02-lh-207.ly"
    \include "../lh/gp-02-lh-5.ly"
    \include "../lh/gp-02-lh-143.ly"
    \include "../lh/gp-02-lh-168.ly"
    \include "../lh/gp-02-lh-216.ly"
    \include "../lh/gp-02-lh-221.ly"
    \include "../lh/gp-02-lh-173.ly"
    \include "../lh/gp-02-lh-127.ly"
    \include "../lh/gp-02-lh-59.ly"
    \include "../lh/gp-02-lh-91.ly"
    \include "../lh/gp-02-lh-256.ly"
    \include "../lh/gp-02-lh-253.ly"
    \include "../lh/gp-02-lh-29.ly"
    \include "../lh/gp-02-lh-203.ly"
    \include "../lh/gp-02-lh-158.ly"
    \include "../lh/gp-02-lh-80.ly"
    \include "../lh/gp-02-lh-222.ly"
    \include "../lh/gp-02-lh-241.ly"
    \include "../lh/gp-02-lh-123.ly"
    \include "../lh/gp-02-lh-213.ly"
    \include "../lh/gp-02-lh-18.ly"
    \include "../lh/gp-02-lh-147.ly"
    \include "../lh/gp-02-lh-45.ly"
    \bar":|."
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}