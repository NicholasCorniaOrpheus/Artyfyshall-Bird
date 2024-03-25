\include "../paper_settings.ly" 
\header { piece = \markup "[40-148-132-200-204-97-106-176-146-85-141-238-119-113-20-233-103-205-116-123-213-170-95-152]" }

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
    \include "../vc1/gp-02-vc1-132.ly"
    \include "../vc1/gp-02-vc1-200.ly"
    \include "../vc1/gp-02-vc1-204.ly"
    \include "../vc1/gp-02-vc1-97.ly"
    \include "../vc1/gp-02-vc1-106.ly"
    \include "../vc1/gp-02-vc1-176.ly"
    \include "../vc1/gp-02-vc1-146.ly"
    \include "../vc1/gp-02-vc1-85.ly"
    \include "../vc1/gp-02-vc1-141.ly"
    \include "../vc1/gp-02-vc1-238.ly"
    \include "../vc1/gp-02-vc1-119.ly"
    \include "../vc1/gp-02-vc1-113.ly"
    \include "../vc1/gp-02-vc1-20.ly"
    \include "../vc1/gp-02-vc1-233.ly"
    \include "../vc1/gp-02-vc1-103.ly"
    \include "../vc1/gp-02-vc1-205.ly"
    \include "../vc1/gp-02-vc1-116.ly"
    \include "../vc1/gp-02-vc1-123.ly"
    \include "../vc1/gp-02-vc1-213.ly"
    \include "../vc1/gp-02-vc1-170.ly"
    \include "../vc1/gp-02-vc1-95.ly"
    \include "../vc1/gp-02-vc1-152.ly"
    }
    >>
    %Voice2 part
    \context Staff = "voicetwo" \with { instrumentName = "Canto Secondo" }
    <<
    \set Staff.midiInstrument =#"voice oohs" {
    \include "../voice_option.ly"
    \include "../vc2/gp-02-vc2-40.ly"
    \include "../vc2/gp-02-vc2-148.ly"
    \include "../vc2/gp-02-vc2-132.ly"
    \include "../vc2/gp-02-vc2-200.ly"
    \include "../vc2/gp-02-vc2-204.ly"
    \include "../vc2/gp-02-vc2-97.ly"
    \include "../vc2/gp-02-vc2-106.ly"
    \include "../vc2/gp-02-vc2-176.ly"
    \include "../vc2/gp-02-vc2-146.ly"
    \include "../vc2/gp-02-vc2-85.ly"
    \include "../vc2/gp-02-vc2-141.ly"
    \include "../vc2/gp-02-vc2-238.ly"
    \include "../vc2/gp-02-vc2-119.ly"
    \include "../vc2/gp-02-vc2-113.ly"
    \include "../vc2/gp-02-vc2-20.ly"
    \include "../vc2/gp-02-vc2-233.ly"
    \include "../vc2/gp-02-vc2-103.ly"
    \include "../vc2/gp-02-vc2-205.ly"
    \include "../vc2/gp-02-vc2-116.ly"
    \include "../vc2/gp-02-vc2-123.ly"
    \include "../vc2/gp-02-vc2-213.ly"
    \include "../vc2/gp-02-vc2-170.ly"
    \include "../vc2/gp-02-vc2-95.ly"
    \include "../vc2/gp-02-vc2-152.ly"
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
    \include "../rh/gp-02-rh-132.ly"
    \include "../rh/gp-02-rh-200.ly"
    \include "../rh/gp-02-rh-204.ly"
    \include "../rh/gp-02-rh-97.ly"
    \include "../rh/gp-02-rh-106.ly"
    \include "../rh/gp-02-rh-176.ly"
    \include "../rh/gp-02-rh-146.ly"
    \include "../rh/gp-02-rh-85.ly"
    \include "../rh/gp-02-rh-141.ly"
    \include "../rh/gp-02-rh-238.ly"
    \include "../rh/gp-02-rh-119.ly"
    \include "../rh/gp-02-rh-113.ly"
    \include "../rh/gp-02-rh-20.ly"
    \include "../rh/gp-02-rh-233.ly"
    \include "../rh/gp-02-rh-103.ly"
    \include "../rh/gp-02-rh-205.ly"
    \include "../rh/gp-02-rh-116.ly"
    \include "../rh/gp-02-rh-123.ly"
    \include "../rh/gp-02-rh-213.ly"
    \include "../rh/gp-02-rh-170.ly"
    \include "../rh/gp-02-rh-95.ly"
    \include "../rh/gp-02-rh-152.ly"
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/gp-02-lh-40.ly"
    \include "../lh/gp-02-lh-148.ly"
    \include "../lh/gp-02-lh-132.ly"
    \include "../lh/gp-02-lh-200.ly"
    \include "../lh/gp-02-lh-204.ly"
    \include "../lh/gp-02-lh-97.ly"
    \include "../lh/gp-02-lh-106.ly"
    \include "../lh/gp-02-lh-176.ly"
    \include "../lh/gp-02-lh-146.ly"
    \include "../lh/gp-02-lh-85.ly"
    \include "../lh/gp-02-lh-141.ly"
    \include "../lh/gp-02-lh-238.ly"
    \include "../lh/gp-02-lh-119.ly"
    \include "../lh/gp-02-lh-113.ly"
    \include "../lh/gp-02-lh-20.ly"
    \include "../lh/gp-02-lh-233.ly"
    \include "../lh/gp-02-lh-103.ly"
    \include "../lh/gp-02-lh-205.ly"
    \include "../lh/gp-02-lh-116.ly"
    \include "../lh/gp-02-lh-123.ly"
    \include "../lh/gp-02-lh-213.ly"
    \include "../lh/gp-02-lh-170.ly"
    \include "../lh/gp-02-lh-95.ly"
    \include "../lh/gp-02-lh-152.ly"
    \bar":|."
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}