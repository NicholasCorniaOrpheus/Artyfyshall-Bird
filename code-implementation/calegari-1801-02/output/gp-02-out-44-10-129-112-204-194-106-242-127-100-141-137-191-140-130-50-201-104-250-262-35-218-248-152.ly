\include "../paper_settings.ly" 
\header { piece = \markup "[44-10-129-112-204-194-106-242-127-100-141-137-191-140-130-50-201-104-250-262-35-218-248-152]" }

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
    \include "../vc1/gp-02-vc1-10.ly"
    \include "../vc1/gp-02-vc1-129.ly"
    \include "../vc1/gp-02-vc1-112.ly"
    \include "../vc1/gp-02-vc1-204.ly"
    \include "../vc1/gp-02-vc1-194.ly"
    \include "../vc1/gp-02-vc1-106.ly"
    \include "../vc1/gp-02-vc1-242.ly"
    \include "../vc1/gp-02-vc1-127.ly"
    \include "../vc1/gp-02-vc1-100.ly"
    \include "../vc1/gp-02-vc1-141.ly"
    \include "../vc1/gp-02-vc1-137.ly"
    \include "../vc1/gp-02-vc1-191.ly"
    \include "../vc1/gp-02-vc1-140.ly"
    \include "../vc1/gp-02-vc1-130.ly"
    \include "../vc1/gp-02-vc1-50.ly"
    \include "../vc1/gp-02-vc1-201.ly"
    \include "../vc1/gp-02-vc1-104.ly"
    \include "../vc1/gp-02-vc1-250.ly"
    \include "../vc1/gp-02-vc1-262.ly"
    \include "../vc1/gp-02-vc1-35.ly"
    \include "../vc1/gp-02-vc1-218.ly"
    \include "../vc1/gp-02-vc1-248.ly"
    \include "../vc1/gp-02-vc1-152.ly"
    }
    >>
    %Voice2 part
    \context Staff = "voicetwo" \with { instrumentName = "Canto Secondo" }
    <<
    \set Staff.midiInstrument =#"voice oohs" {
    \include "../voice_option.ly"
    \include "../vc2/gp-02-vc2-44.ly"
    \include "../vc2/gp-02-vc2-10.ly"
    \include "../vc2/gp-02-vc2-129.ly"
    \include "../vc2/gp-02-vc2-112.ly"
    \include "../vc2/gp-02-vc2-204.ly"
    \include "../vc2/gp-02-vc2-194.ly"
    \include "../vc2/gp-02-vc2-106.ly"
    \include "../vc2/gp-02-vc2-242.ly"
    \include "../vc2/gp-02-vc2-127.ly"
    \include "../vc2/gp-02-vc2-100.ly"
    \include "../vc2/gp-02-vc2-141.ly"
    \include "../vc2/gp-02-vc2-137.ly"
    \include "../vc2/gp-02-vc2-191.ly"
    \include "../vc2/gp-02-vc2-140.ly"
    \include "../vc2/gp-02-vc2-130.ly"
    \include "../vc2/gp-02-vc2-50.ly"
    \include "../vc2/gp-02-vc2-201.ly"
    \include "../vc2/gp-02-vc2-104.ly"
    \include "../vc2/gp-02-vc2-250.ly"
    \include "../vc2/gp-02-vc2-262.ly"
    \include "../vc2/gp-02-vc2-35.ly"
    \include "../vc2/gp-02-vc2-218.ly"
    \include "../vc2/gp-02-vc2-248.ly"
    \include "../vc2/gp-02-vc2-152.ly"
    }
    >>
    >>
    %Piano part
    \context PianoStaff \with { instrumentName = "Piano-Forte"}
    <<
    \context Staff = "rh" {
    \include "../voice_option.ly"
    \include "../rh/gp-02-rh-44.ly"
    \include "../rh/gp-02-rh-10.ly"
    \include "../rh/gp-02-rh-129.ly"
    \include "../rh/gp-02-rh-112.ly"
    \include "../rh/gp-02-rh-204.ly"
    \include "../rh/gp-02-rh-194.ly"
    \include "../rh/gp-02-rh-106.ly"
    \include "../rh/gp-02-rh-242.ly"
    \include "../rh/gp-02-rh-127.ly"
    \include "../rh/gp-02-rh-100.ly"
    \include "../rh/gp-02-rh-141.ly"
    \include "../rh/gp-02-rh-137.ly"
    \include "../rh/gp-02-rh-191.ly"
    \include "../rh/gp-02-rh-140.ly"
    \include "../rh/gp-02-rh-130.ly"
    \include "../rh/gp-02-rh-50.ly"
    \include "../rh/gp-02-rh-201.ly"
    \include "../rh/gp-02-rh-104.ly"
    \include "../rh/gp-02-rh-250.ly"
    \include "../rh/gp-02-rh-262.ly"
    \include "../rh/gp-02-rh-35.ly"
    \include "../rh/gp-02-rh-218.ly"
    \include "../rh/gp-02-rh-248.ly"
    \include "../rh/gp-02-rh-152.ly"
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/gp-02-lh-44.ly"
    \include "../lh/gp-02-lh-10.ly"
    \include "../lh/gp-02-lh-129.ly"
    \include "../lh/gp-02-lh-112.ly"
    \include "../lh/gp-02-lh-204.ly"
    \include "../lh/gp-02-lh-194.ly"
    \include "../lh/gp-02-lh-106.ly"
    \include "../lh/gp-02-lh-242.ly"
    \include "../lh/gp-02-lh-127.ly"
    \include "../lh/gp-02-lh-100.ly"
    \include "../lh/gp-02-lh-141.ly"
    \include "../lh/gp-02-lh-137.ly"
    \include "../lh/gp-02-lh-191.ly"
    \include "../lh/gp-02-lh-140.ly"
    \include "../lh/gp-02-lh-130.ly"
    \include "../lh/gp-02-lh-50.ly"
    \include "../lh/gp-02-lh-201.ly"
    \include "../lh/gp-02-lh-104.ly"
    \include "../lh/gp-02-lh-250.ly"
    \include "../lh/gp-02-lh-262.ly"
    \include "../lh/gp-02-lh-35.ly"
    \include "../lh/gp-02-lh-218.ly"
    \include "../lh/gp-02-lh-248.ly"
    \include "../lh/gp-02-lh-152.ly"
    \bar":|."
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}