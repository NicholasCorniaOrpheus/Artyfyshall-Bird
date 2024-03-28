\include "../paper_settings.ly" 
\header { piece = \markup "[42-206-69-143-212-216-63-92-239-192-243-256-134-4-120-41-80-258-250-115-124-170-117-237]" }

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
    \include "../vc1/gp-02-vc1-206.ly"
    \include "../vc1/gp-02-vc1-69.ly"
    \include "../vc1/gp-02-vc1-143.ly"
    \include "../vc1/gp-02-vc1-212.ly"
    \include "../vc1/gp-02-vc1-216.ly"
    \include "../vc1/gp-02-vc1-63.ly"
    \include "../vc1/gp-02-vc1-92.ly"
    \include "../vc1/gp-02-vc1-239.ly"
    \include "../vc1/gp-02-vc1-192.ly"
    \include "../vc1/gp-02-vc1-243.ly"
    \include "../vc1/gp-02-vc1-256.ly"
    \include "../vc1/gp-02-vc1-134.ly"
    \include "../vc1/gp-02-vc1-4.ly"
    \include "../vc1/gp-02-vc1-120.ly"
    \include "../vc1/gp-02-vc1-41.ly"
    \include "../vc1/gp-02-vc1-80.ly"
    \include "../vc1/gp-02-vc1-258.ly"
    \include "../vc1/gp-02-vc1-250.ly"
    \include "../vc1/gp-02-vc1-115.ly"
    \include "../vc1/gp-02-vc1-124.ly"
    \include "../vc1/gp-02-vc1-170.ly"
    \include "../vc1/gp-02-vc1-117.ly"
    \include "../vc1/gp-02-vc1-237.ly"
    }
    >>
    %Voice2 part
    \context Staff = "voicetwo" \with { instrumentName = "Canto Secondo" }
    <<
    \set Staff.midiInstrument =#"voice oohs" {
    \include "../voice_option.ly"
    \include "../vc2/gp-02-vc2-42.ly"
    \include "../vc2/gp-02-vc2-206.ly"
    \include "../vc2/gp-02-vc2-69.ly"
    \include "../vc2/gp-02-vc2-143.ly"
    \include "../vc2/gp-02-vc2-212.ly"
    \include "../vc2/gp-02-vc2-216.ly"
    \include "../vc2/gp-02-vc2-63.ly"
    \include "../vc2/gp-02-vc2-92.ly"
    \include "../vc2/gp-02-vc2-239.ly"
    \include "../vc2/gp-02-vc2-192.ly"
    \include "../vc2/gp-02-vc2-243.ly"
    \include "../vc2/gp-02-vc2-256.ly"
    \include "../vc2/gp-02-vc2-134.ly"
    \include "../vc2/gp-02-vc2-4.ly"
    \include "../vc2/gp-02-vc2-120.ly"
    \include "../vc2/gp-02-vc2-41.ly"
    \include "../vc2/gp-02-vc2-80.ly"
    \include "../vc2/gp-02-vc2-258.ly"
    \include "../vc2/gp-02-vc2-250.ly"
    \include "../vc2/gp-02-vc2-115.ly"
    \include "../vc2/gp-02-vc2-124.ly"
    \include "../vc2/gp-02-vc2-170.ly"
    \include "../vc2/gp-02-vc2-117.ly"
    \include "../vc2/gp-02-vc2-237.ly"
    }
    >>
    >>
    %Piano part
    \context PianoStaff \with { instrumentName = "Piano-Forte"}
    <<
    \context Staff = "rh" {
    \include "../voice_option.ly"
    \include "../rh/gp-02-rh-42.ly"
    \include "../rh/gp-02-rh-206.ly"
    \include "../rh/gp-02-rh-69.ly"
    \include "../rh/gp-02-rh-143.ly"
    \include "../rh/gp-02-rh-212.ly"
    \include "../rh/gp-02-rh-216.ly"
    \include "../rh/gp-02-rh-63.ly"
    \include "../rh/gp-02-rh-92.ly"
    \include "../rh/gp-02-rh-239.ly"
    \include "../rh/gp-02-rh-192.ly"
    \include "../rh/gp-02-rh-243.ly"
    \include "../rh/gp-02-rh-256.ly"
    \include "../rh/gp-02-rh-134.ly"
    \include "../rh/gp-02-rh-4.ly"
    \include "../rh/gp-02-rh-120.ly"
    \include "../rh/gp-02-rh-41.ly"
    \include "../rh/gp-02-rh-80.ly"
    \include "../rh/gp-02-rh-258.ly"
    \include "../rh/gp-02-rh-250.ly"
    \include "../rh/gp-02-rh-115.ly"
    \include "../rh/gp-02-rh-124.ly"
    \include "../rh/gp-02-rh-170.ly"
    \include "../rh/gp-02-rh-117.ly"
    \include "../rh/gp-02-rh-237.ly"
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/gp-02-lh-42.ly"
    \include "../lh/gp-02-lh-206.ly"
    \include "../lh/gp-02-lh-69.ly"
    \include "../lh/gp-02-lh-143.ly"
    \include "../lh/gp-02-lh-212.ly"
    \include "../lh/gp-02-lh-216.ly"
    \include "../lh/gp-02-lh-63.ly"
    \include "../lh/gp-02-lh-92.ly"
    \include "../lh/gp-02-lh-239.ly"
    \include "../lh/gp-02-lh-192.ly"
    \include "../lh/gp-02-lh-243.ly"
    \include "../lh/gp-02-lh-256.ly"
    \include "../lh/gp-02-lh-134.ly"
    \include "../lh/gp-02-lh-4.ly"
    \include "../lh/gp-02-lh-120.ly"
    \include "../lh/gp-02-lh-41.ly"
    \include "../lh/gp-02-lh-80.ly"
    \include "../lh/gp-02-lh-258.ly"
    \include "../lh/gp-02-lh-250.ly"
    \include "../lh/gp-02-lh-115.ly"
    \include "../lh/gp-02-lh-124.ly"
    \include "../lh/gp-02-lh-170.ly"
    \include "../lh/gp-02-lh-117.ly"
    \include "../lh/gp-02-lh-237.ly"
    \bar":|."
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}