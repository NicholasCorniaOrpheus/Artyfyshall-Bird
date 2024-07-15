\include "../paper_settings.ly" 
\header { piece = \markup "[40-148-8-83-168-54-63-190-135-139-34-52-191-78-130-233-172-222-241-123-110-218-151-47]" }

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
    \include "../vc1/gp-02-vc1-40.ly"
    \include "../vc1/gp-02-vc1-148.ly"
    \include "../vc1/gp-02-vc1-8.ly"
    \include "../vc1/gp-02-vc1-83.ly"
    \include "../vc1/gp-02-vc1-168.ly"
    \include "../vc1/gp-02-vc1-54.ly"
    \include "../vc1/gp-02-vc1-63.ly"
    \include "../vc1/gp-02-vc1-190.ly"
    \include "../vc1/gp-02-vc1-135.ly"
    \include "../vc1/gp-02-vc1-139.ly"
    \include "../vc1/gp-02-vc1-34.ly"
    \include "../vc1/gp-02-vc1-52.ly"
    \include "../vc1/gp-02-vc1-191.ly"
    \include "../vc1/gp-02-vc1-78.ly"
    \include "../vc1/gp-02-vc1-130.ly"
    \include "../vc1/gp-02-vc1-233.ly"
    \include "../vc1/gp-02-vc1-172.ly"
    \include "../vc1/gp-02-vc1-222.ly"
    \include "../vc1/gp-02-vc1-241.ly"
    \include "../vc1/gp-02-vc1-123.ly"
    \include "../vc1/gp-02-vc1-110.ly"
    \include "../vc1/gp-02-vc1-218.ly"
    \include "../vc1/gp-02-vc1-151.ly"
    \include "../vc1/gp-02-vc1-47.ly"
    }
    >>
    %Voice2 part
    \context Staff = "voicetwo" \with { instrumentName = "Canto Secondo" }
    <<
    \set Staff.midiInstrument =#"voice oohs" {
    \include "../voice_option.ly"
    \include "../vc2/gp-02-vc2-40.ly"
    \include "../vc2/gp-02-vc2-148.ly"
    \include "../vc2/gp-02-vc2-8.ly"
    \include "../vc2/gp-02-vc2-83.ly"
    \include "../vc2/gp-02-vc2-168.ly"
    \include "../vc2/gp-02-vc2-54.ly"
    \include "../vc2/gp-02-vc2-63.ly"
    \include "../vc2/gp-02-vc2-190.ly"
    \include "../vc2/gp-02-vc2-135.ly"
    \include "../vc2/gp-02-vc2-139.ly"
    \include "../vc2/gp-02-vc2-34.ly"
    \include "../vc2/gp-02-vc2-52.ly"
    \include "../vc2/gp-02-vc2-191.ly"
    \include "../vc2/gp-02-vc2-78.ly"
    \include "../vc2/gp-02-vc2-130.ly"
    \include "../vc2/gp-02-vc2-233.ly"
    \include "../vc2/gp-02-vc2-172.ly"
    \include "../vc2/gp-02-vc2-222.ly"
    \include "../vc2/gp-02-vc2-241.ly"
    \include "../vc2/gp-02-vc2-123.ly"
    \include "../vc2/gp-02-vc2-110.ly"
    \include "../vc2/gp-02-vc2-218.ly"
    \include "../vc2/gp-02-vc2-151.ly"
    \include "../vc2/gp-02-vc2-47.ly"
    }
    >>
    >>
    %Piano part
    \context PianoStaff \with { instrumentName = "Piano-Forte"}
    <<
    \context Staff = "rh" {
    \include "../voice_option.ly"
    \include "../rh/gp-02-rh-40.ly"
    \include "../rh/gp-02-rh-148.ly"
    \include "../rh/gp-02-rh-8.ly"
    \include "../rh/gp-02-rh-83.ly"
    \include "../rh/gp-02-rh-168.ly"
    \include "../rh/gp-02-rh-54.ly"
    \include "../rh/gp-02-rh-63.ly"
    \include "../rh/gp-02-rh-190.ly"
    \include "../rh/gp-02-rh-135.ly"
    \include "../rh/gp-02-rh-139.ly"
    \include "../rh/gp-02-rh-34.ly"
    \include "../rh/gp-02-rh-52.ly"
    \include "../rh/gp-02-rh-191.ly"
    \include "../rh/gp-02-rh-78.ly"
    \include "../rh/gp-02-rh-130.ly"
    \include "../rh/gp-02-rh-233.ly"
    \include "../rh/gp-02-rh-172.ly"
    \include "../rh/gp-02-rh-222.ly"
    \include "../rh/gp-02-rh-241.ly"
    \include "../rh/gp-02-rh-123.ly"
    \include "../rh/gp-02-rh-110.ly"
    \include "../rh/gp-02-rh-218.ly"
    \include "../rh/gp-02-rh-151.ly"
    \include "../rh/gp-02-rh-47.ly"
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/gp-02-lh-40.ly"
    \include "../lh/gp-02-lh-148.ly"
    \include "../lh/gp-02-lh-8.ly"
    \include "../lh/gp-02-lh-83.ly"
    \include "../lh/gp-02-lh-168.ly"
    \include "../lh/gp-02-lh-54.ly"
    \include "../lh/gp-02-lh-63.ly"
    \include "../lh/gp-02-lh-190.ly"
    \include "../lh/gp-02-lh-135.ly"
    \include "../lh/gp-02-lh-139.ly"
    \include "../lh/gp-02-lh-34.ly"
    \include "../lh/gp-02-lh-52.ly"
    \include "../lh/gp-02-lh-191.ly"
    \include "../lh/gp-02-lh-78.ly"
    \include "../lh/gp-02-lh-130.ly"
    \include "../lh/gp-02-lh-233.ly"
    \include "../lh/gp-02-lh-172.ly"
    \include "../lh/gp-02-lh-222.ly"
    \include "../lh/gp-02-lh-241.ly"
    \include "../lh/gp-02-lh-123.ly"
    \include "../lh/gp-02-lh-110.ly"
    \include "../lh/gp-02-lh-218.ly"
    \include "../lh/gp-02-lh-151.ly"
    \include "../lh/gp-02-lh-47.ly"
    \bar":|."
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}