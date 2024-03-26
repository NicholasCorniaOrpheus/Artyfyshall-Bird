\include "../paper_settings.ly" 
\header { piece = \markup "[3-5-1-6-8-6-3-3-2-5-5-3-1-8-3-4]" }

  %! abjad.LilyPondFile._get_format_pieces()
\score
  %! abjad.LilyPondFile._get_format_pieces()
{
    <<
    \new ChoirStaff
    <<
    %Upper voice part
    \context Staff = "upper" \with { instrumentName = "Dessus" }
    <<
    \set Staff.midiInstrument =#"violin" {
    \include "../voice_option.ly"
    \include "../uv/lm-uv-1-3.ly"
    \include "../uv/lm-uv-2-5.ly"
    \include "../uv/lm-uv-3-1.ly"
    \include "../uv/lm-uv-4-6.ly"
    \include "../uv/lm-uv-5-8.ly"
    \include "../uv/lm-uv-6-6.ly"
    \include "../uv/lm-uv-7-3.ly"
    \include "../uv/lm-uv-8-3.ly"
    \include "../uv/lm-uv-9-2.ly"
    \include "../uv/lm-uv-10-5.ly"
    \include "../uv/lm-uv-11-5.ly"
    \include "../uv/lm-uv-12-3.ly"
    \include "../uv/lm-uv-13-1.ly"
    \include "../uv/lm-uv-14-8.ly"
    \include "../uv/lm-uv-15-3.ly"
    \include "../uv/lm-uv-16-4.ly"
    \bar"||"
    }
    >>
    %Lower voice part
    \context Staff = "lower" \with { instrumentName = "Basse" }
    <<
    \set Staff.midiInstrument =#"cello" {
    \include "../bassline_option.ly"
    \include "../lv/lm-lv-1-3.ly"
    \include "../lv/lm-lv-2-5.ly"
    \include "../lv/lm-lv-3-1.ly"
    \include "../lv/lm-lv-4-6.ly"
    \include "../lv/lm-lv-5-8.ly"
    \include "../lv/lm-lv-6-6.ly"
    \include "../lv/lm-lv-7-3.ly"
    \include "../lv/lm-lv-8-3.ly"
    \include "../lv/lm-lv-9-2.ly"
    \include "../lv/lm-lv-10-5.ly"
    \include "../lv/lm-lv-11-5.ly"
    \include "../lv/lm-lv-12-3.ly"
    \include "../lv/lm-lv-13-1.ly"
    \include "../lv/lm-lv-14-8.ly"
    \include "../lv/lm-lv-15-3.ly"
    \include "../lv/lm-lv-16-4.ly"
    \bar"||"
    }
    >>
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}