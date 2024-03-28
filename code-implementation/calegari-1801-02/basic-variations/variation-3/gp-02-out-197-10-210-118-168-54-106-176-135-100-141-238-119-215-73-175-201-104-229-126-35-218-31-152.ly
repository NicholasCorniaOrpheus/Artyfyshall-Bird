\include "../paper_settings.ly" 
\header { piece = \markup "[197-10-210-118-168-54-106-176-135-100-141-238-119-215-73-175-201-104-229-126-35-218-31-152]" }

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
    \include "../vc1/gp-02-vc1-197.ly"
    \include "../vc1/gp-02-vc1-10.ly"
    \include "../vc1/gp-02-vc1-210.ly"
    \include "../vc1/gp-02-vc1-118.ly"
    \include "../vc1/gp-02-vc1-168.ly"
    \include "../vc1/gp-02-vc1-54.ly"
    \include "../vc1/gp-02-vc1-106.ly"
    \include "../vc1/gp-02-vc1-176.ly"
    \include "../vc1/gp-02-vc1-135.ly"
    \include "../vc1/gp-02-vc1-100.ly"
    \include "../vc1/gp-02-vc1-141.ly"
    \include "../vc1/gp-02-vc1-238.ly"
    \include "../vc1/gp-02-vc1-119.ly"
    \include "../vc1/gp-02-vc1-215.ly"
    \include "../vc1/gp-02-vc1-73.ly"
    \include "../vc1/gp-02-vc1-175.ly"
    \include "../vc1/gp-02-vc1-201.ly"
    \include "../vc1/gp-02-vc1-104.ly"
    \include "../vc1/gp-02-vc1-229.ly"
    \include "../vc1/gp-02-vc1-126.ly"
    \include "../vc1/gp-02-vc1-35.ly"
    \include "../vc1/gp-02-vc1-218.ly"
    \include "../vc1/gp-02-vc1-31.ly"
    \include "../vc1/gp-02-vc1-152.ly"
    }
    >>
    %Voice2 part
    \context Staff = "voicetwo" \with { instrumentName = "Canto Secondo" }
    <<
    \set Staff.midiInstrument =#"voice oohs" {
    \include "../voice_option.ly"
    \include "../vc2/gp-02-vc2-197.ly"
    \include "../vc2/gp-02-vc2-10.ly"
    \include "../vc2/gp-02-vc2-210.ly"
    \include "../vc2/gp-02-vc2-118.ly"
    \include "../vc2/gp-02-vc2-168.ly"
    \include "../vc2/gp-02-vc2-54.ly"
    \include "../vc2/gp-02-vc2-106.ly"
    \include "../vc2/gp-02-vc2-176.ly"
    \include "../vc2/gp-02-vc2-135.ly"
    \include "../vc2/gp-02-vc2-100.ly"
    \include "../vc2/gp-02-vc2-141.ly"
    \include "../vc2/gp-02-vc2-238.ly"
    \include "../vc2/gp-02-vc2-119.ly"
    \include "../vc2/gp-02-vc2-215.ly"
    \include "../vc2/gp-02-vc2-73.ly"
    \include "../vc2/gp-02-vc2-175.ly"
    \include "../vc2/gp-02-vc2-201.ly"
    \include "../vc2/gp-02-vc2-104.ly"
    \include "../vc2/gp-02-vc2-229.ly"
    \include "../vc2/gp-02-vc2-126.ly"
    \include "../vc2/gp-02-vc2-35.ly"
    \include "../vc2/gp-02-vc2-218.ly"
    \include "../vc2/gp-02-vc2-31.ly"
    \include "../vc2/gp-02-vc2-152.ly"
    }
    >>
    >>
    %Piano part
    \context PianoStaff \with { instrumentName = "Piano-Forte"}
    <<
    \context Staff = "rh" {
    \include "../voice_option.ly"
    \include "../rh/gp-02-rh-197.ly"
    \include "../rh/gp-02-rh-10.ly"
    \include "../rh/gp-02-rh-210.ly"
    \include "../rh/gp-02-rh-118.ly"
    \include "../rh/gp-02-rh-168.ly"
    \include "../rh/gp-02-rh-54.ly"
    \include "../rh/gp-02-rh-106.ly"
    \include "../rh/gp-02-rh-176.ly"
    \include "../rh/gp-02-rh-135.ly"
    \include "../rh/gp-02-rh-100.ly"
    \include "../rh/gp-02-rh-141.ly"
    \include "../rh/gp-02-rh-238.ly"
    \include "../rh/gp-02-rh-119.ly"
    \include "../rh/gp-02-rh-215.ly"
    \include "../rh/gp-02-rh-73.ly"
    \include "../rh/gp-02-rh-175.ly"
    \include "../rh/gp-02-rh-201.ly"
    \include "../rh/gp-02-rh-104.ly"
    \include "../rh/gp-02-rh-229.ly"
    \include "../rh/gp-02-rh-126.ly"
    \include "../rh/gp-02-rh-35.ly"
    \include "../rh/gp-02-rh-218.ly"
    \include "../rh/gp-02-rh-31.ly"
    \include "../rh/gp-02-rh-152.ly"
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/gp-02-lh-197.ly"
    \include "../lh/gp-02-lh-10.ly"
    \include "../lh/gp-02-lh-210.ly"
    \include "../lh/gp-02-lh-118.ly"
    \include "../lh/gp-02-lh-168.ly"
    \include "../lh/gp-02-lh-54.ly"
    \include "../lh/gp-02-lh-106.ly"
    \include "../lh/gp-02-lh-176.ly"
    \include "../lh/gp-02-lh-135.ly"
    \include "../lh/gp-02-lh-100.ly"
    \include "../lh/gp-02-lh-141.ly"
    \include "../lh/gp-02-lh-238.ly"
    \include "../lh/gp-02-lh-119.ly"
    \include "../lh/gp-02-lh-215.ly"
    \include "../lh/gp-02-lh-73.ly"
    \include "../lh/gp-02-lh-175.ly"
    \include "../lh/gp-02-lh-201.ly"
    \include "../lh/gp-02-lh-104.ly"
    \include "../lh/gp-02-lh-229.ly"
    \include "../lh/gp-02-lh-126.ly"
    \include "../lh/gp-02-lh-35.ly"
    \include "../lh/gp-02-lh-218.ly"
    \include "../lh/gp-02-lh-31.ly"
    \include "../lh/gp-02-lh-152.ly"
    \bar":|."
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}