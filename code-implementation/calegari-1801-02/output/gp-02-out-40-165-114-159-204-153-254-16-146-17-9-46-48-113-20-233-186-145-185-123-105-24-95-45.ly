\include "../paper_settings.ly" 
\header { piece = \markup "[40-165-114-159-204-153-254-16-146-17-9-46-48-113-20-233-186-145-185-123-105-24-95-45]" }

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
    \include "../vc1/gp-02-vc1-165.ly"
    \include "../vc1/gp-02-vc1-114.ly"
    \include "../vc1/gp-02-vc1-159.ly"
    \include "../vc1/gp-02-vc1-204.ly"
    \include "../vc1/gp-02-vc1-153.ly"
    \include "../vc1/gp-02-vc1-254.ly"
    \include "../vc1/gp-02-vc1-16.ly"
    \include "../vc1/gp-02-vc1-146.ly"
    \include "../vc1/gp-02-vc1-17.ly"
    \include "../vc1/gp-02-vc1-9.ly"
    \include "../vc1/gp-02-vc1-46.ly"
    \include "../vc1/gp-02-vc1-48.ly"
    \include "../vc1/gp-02-vc1-113.ly"
    \include "../vc1/gp-02-vc1-20.ly"
    \include "../vc1/gp-02-vc1-233.ly"
    \include "../vc1/gp-02-vc1-186.ly"
    \include "../vc1/gp-02-vc1-145.ly"
    \include "../vc1/gp-02-vc1-185.ly"
    \include "../vc1/gp-02-vc1-123.ly"
    \include "../vc1/gp-02-vc1-105.ly"
    \include "../vc1/gp-02-vc1-24.ly"
    \include "../vc1/gp-02-vc1-95.ly"
    \include "../vc1/gp-02-vc1-45.ly"
    }
    >>
    %Voice2 part
    \context Staff = "voicetwo" \with { instrumentName = "Canto Secondo" }
    <<
    \set Staff.midiInstrument =#"voice oohs" {
    \include "../voice_option.ly"
    \include "../vc2/gp-02-vc2-40.ly"
    \include "../vc2/gp-02-vc2-165.ly"
    \include "../vc2/gp-02-vc2-114.ly"
    \include "../vc2/gp-02-vc2-159.ly"
    \include "../vc2/gp-02-vc2-204.ly"
    \include "../vc2/gp-02-vc2-153.ly"
    \include "../vc2/gp-02-vc2-254.ly"
    \include "../vc2/gp-02-vc2-16.ly"
    \include "../vc2/gp-02-vc2-146.ly"
    \include "../vc2/gp-02-vc2-17.ly"
    \include "../vc2/gp-02-vc2-9.ly"
    \include "../vc2/gp-02-vc2-46.ly"
    \include "../vc2/gp-02-vc2-48.ly"
    \include "../vc2/gp-02-vc2-113.ly"
    \include "../vc2/gp-02-vc2-20.ly"
    \include "../vc2/gp-02-vc2-233.ly"
    \include "../vc2/gp-02-vc2-186.ly"
    \include "../vc2/gp-02-vc2-145.ly"
    \include "../vc2/gp-02-vc2-185.ly"
    \include "../vc2/gp-02-vc2-123.ly"
    \include "../vc2/gp-02-vc2-105.ly"
    \include "../vc2/gp-02-vc2-24.ly"
    \include "../vc2/gp-02-vc2-95.ly"
    \include "../vc2/gp-02-vc2-45.ly"
    }
    >>
    >>
    %Piano part
    \context PianoStaff \with { instrumentName = "Piano-Forte"}
    <<
    \context Staff = "rh" {
    \include "../voice_option.ly"
    \include "../rh/gp-02-rh-40.ly"
    \include "../rh/gp-02-rh-165.ly"
    \include "../rh/gp-02-rh-114.ly"
    \include "../rh/gp-02-rh-159.ly"
    \include "../rh/gp-02-rh-204.ly"
    \include "../rh/gp-02-rh-153.ly"
    \include "../rh/gp-02-rh-254.ly"
    \include "../rh/gp-02-rh-16.ly"
    \include "../rh/gp-02-rh-146.ly"
    \include "../rh/gp-02-rh-17.ly"
    \include "../rh/gp-02-rh-9.ly"
    \include "../rh/gp-02-rh-46.ly"
    \include "../rh/gp-02-rh-48.ly"
    \include "../rh/gp-02-rh-113.ly"
    \include "../rh/gp-02-rh-20.ly"
    \include "../rh/gp-02-rh-233.ly"
    \include "../rh/gp-02-rh-186.ly"
    \include "../rh/gp-02-rh-145.ly"
    \include "../rh/gp-02-rh-185.ly"
    \include "../rh/gp-02-rh-123.ly"
    \include "../rh/gp-02-rh-105.ly"
    \include "../rh/gp-02-rh-24.ly"
    \include "../rh/gp-02-rh-95.ly"
    \include "../rh/gp-02-rh-45.ly"
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/gp-02-lh-40.ly"
    \include "../lh/gp-02-lh-165.ly"
    \include "../lh/gp-02-lh-114.ly"
    \include "../lh/gp-02-lh-159.ly"
    \include "../lh/gp-02-lh-204.ly"
    \include "../lh/gp-02-lh-153.ly"
    \include "../lh/gp-02-lh-254.ly"
    \include "../lh/gp-02-lh-16.ly"
    \include "../lh/gp-02-lh-146.ly"
    \include "../lh/gp-02-lh-17.ly"
    \include "../lh/gp-02-lh-9.ly"
    \include "../lh/gp-02-lh-46.ly"
    \include "../lh/gp-02-lh-48.ly"
    \include "../lh/gp-02-lh-113.ly"
    \include "../lh/gp-02-lh-20.ly"
    \include "../lh/gp-02-lh-233.ly"
    \include "../lh/gp-02-lh-186.ly"
    \include "../lh/gp-02-lh-145.ly"
    \include "../lh/gp-02-lh-185.ly"
    \include "../lh/gp-02-lh-123.ly"
    \include "../lh/gp-02-lh-105.ly"
    \include "../lh/gp-02-lh-24.ly"
    \include "../lh/gp-02-lh-95.ly"
    \include "../lh/gp-02-lh-45.ly"
    \bar":|."
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}