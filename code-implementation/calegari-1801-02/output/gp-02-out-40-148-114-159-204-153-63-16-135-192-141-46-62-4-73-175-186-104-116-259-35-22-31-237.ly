\include "../paper_settings.ly" 
\header { piece = \markup "[40-148-114-159-204-153-63-16-135-192-141-46-62-4-73-175-186-104-116-259-35-22-31-237]" }

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
    \include "../vc1/gp-02-vc1-114.ly"
    \include "../vc1/gp-02-vc1-159.ly"
    \include "../vc1/gp-02-vc1-204.ly"
    \include "../vc1/gp-02-vc1-153.ly"
    \include "../vc1/gp-02-vc1-63.ly"
    \include "../vc1/gp-02-vc1-16.ly"
    \include "../vc1/gp-02-vc1-135.ly"
    \include "../vc1/gp-02-vc1-192.ly"
    \include "../vc1/gp-02-vc1-141.ly"
    \include "../vc1/gp-02-vc1-46.ly"
    \include "../vc1/gp-02-vc1-62.ly"
    \include "../vc1/gp-02-vc1-4.ly"
    \include "../vc1/gp-02-vc1-73.ly"
    \include "../vc1/gp-02-vc1-175.ly"
    \include "../vc1/gp-02-vc1-186.ly"
    \include "../vc1/gp-02-vc1-104.ly"
    \include "../vc1/gp-02-vc1-116.ly"
    \include "../vc1/gp-02-vc1-259.ly"
    \include "../vc1/gp-02-vc1-35.ly"
    \include "../vc1/gp-02-vc1-22.ly"
    \include "../vc1/gp-02-vc1-31.ly"
    \include "../vc1/gp-02-vc1-237.ly"
    }
    >>
    %Voice2 part
    \context Staff = "voicetwo" \with { instrumentName = "Canto Secondo" }
    <<
    \set Staff.midiInstrument =#"voice oohs" {
    \include "../voice_option.ly"
    \include "../vc2/gp-02-vc2-40.ly"
    \include "../vc2/gp-02-vc2-148.ly"
    \include "../vc2/gp-02-vc2-114.ly"
    \include "../vc2/gp-02-vc2-159.ly"
    \include "../vc2/gp-02-vc2-204.ly"
    \include "../vc2/gp-02-vc2-153.ly"
    \include "../vc2/gp-02-vc2-63.ly"
    \include "../vc2/gp-02-vc2-16.ly"
    \include "../vc2/gp-02-vc2-135.ly"
    \include "../vc2/gp-02-vc2-192.ly"
    \include "../vc2/gp-02-vc2-141.ly"
    \include "../vc2/gp-02-vc2-46.ly"
    \include "../vc2/gp-02-vc2-62.ly"
    \include "../vc2/gp-02-vc2-4.ly"
    \include "../vc2/gp-02-vc2-73.ly"
    \include "../vc2/gp-02-vc2-175.ly"
    \include "../vc2/gp-02-vc2-186.ly"
    \include "../vc2/gp-02-vc2-104.ly"
    \include "../vc2/gp-02-vc2-116.ly"
    \include "../vc2/gp-02-vc2-259.ly"
    \include "../vc2/gp-02-vc2-35.ly"
    \include "../vc2/gp-02-vc2-22.ly"
    \include "../vc2/gp-02-vc2-31.ly"
    \include "../vc2/gp-02-vc2-237.ly"
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
    \include "../rh/gp-02-rh-114.ly"
    \include "../rh/gp-02-rh-159.ly"
    \include "../rh/gp-02-rh-204.ly"
    \include "../rh/gp-02-rh-153.ly"
    \include "../rh/gp-02-rh-63.ly"
    \include "../rh/gp-02-rh-16.ly"
    \include "../rh/gp-02-rh-135.ly"
    \include "../rh/gp-02-rh-192.ly"
    \include "../rh/gp-02-rh-141.ly"
    \include "../rh/gp-02-rh-46.ly"
    \include "../rh/gp-02-rh-62.ly"
    \include "../rh/gp-02-rh-4.ly"
    \include "../rh/gp-02-rh-73.ly"
    \include "../rh/gp-02-rh-175.ly"
    \include "../rh/gp-02-rh-186.ly"
    \include "../rh/gp-02-rh-104.ly"
    \include "../rh/gp-02-rh-116.ly"
    \include "../rh/gp-02-rh-259.ly"
    \include "../rh/gp-02-rh-35.ly"
    \include "../rh/gp-02-rh-22.ly"
    \include "../rh/gp-02-rh-31.ly"
    \include "../rh/gp-02-rh-237.ly"
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/gp-02-lh-40.ly"
    \include "../lh/gp-02-lh-148.ly"
    \include "../lh/gp-02-lh-114.ly"
    \include "../lh/gp-02-lh-159.ly"
    \include "../lh/gp-02-lh-204.ly"
    \include "../lh/gp-02-lh-153.ly"
    \include "../lh/gp-02-lh-63.ly"
    \include "../lh/gp-02-lh-16.ly"
    \include "../lh/gp-02-lh-135.ly"
    \include "../lh/gp-02-lh-192.ly"
    \include "../lh/gp-02-lh-141.ly"
    \include "../lh/gp-02-lh-46.ly"
    \include "../lh/gp-02-lh-62.ly"
    \include "../lh/gp-02-lh-4.ly"
    \include "../lh/gp-02-lh-73.ly"
    \include "../lh/gp-02-lh-175.ly"
    \include "../lh/gp-02-lh-186.ly"
    \include "../lh/gp-02-lh-104.ly"
    \include "../lh/gp-02-lh-116.ly"
    \include "../lh/gp-02-lh-259.ly"
    \include "../lh/gp-02-lh-35.ly"
    \include "../lh/gp-02-lh-22.ly"
    \include "../lh/gp-02-lh-31.ly"
    \include "../lh/gp-02-lh-237.ly"
    \bar":|."
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}