\include "../paper_settings.ly" 
\header { piece = \markup "[6-1-1-1-7-1-8-2-6-1-1-3-2-5-3-7]" }

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
    \include "../uv/lm-uv-1-6.ly"
    \include "../uv/lm-uv-2-1.ly"
    \include "../uv/lm-uv-3-1.ly"
    \include "../uv/lm-uv-4-1.ly"
    \include "../uv/lm-uv-5-7.ly"
    \include "../uv/lm-uv-6-1.ly"
    \include "../uv/lm-uv-7-8.ly"
    \include "../uv/lm-uv-8-2.ly"
    \include "../uv/lm-uv-9-6.ly"
    \include "../uv/lm-uv-10-1.ly"
    \include "../uv/lm-uv-11-1.ly"
    \include "../uv/lm-uv-12-3.ly"
    \include "../uv/lm-uv-13-2.ly"
    \include "../uv/lm-uv-14-5.ly"
    \include "../uv/lm-uv-15-3.ly"
    \include "../uv/lm-uv-16-7.ly"
    \bar"||"
    }
    >>
    %Lower voice part
    \context Staff = "lower" \with { instrumentName = "Basse" }
    <<
    \set Staff.midiInstrument =#"cello" {
    \include "../bassline_option.ly"
    \include "../lv/lm-lv-1-6.ly"
    \include "../lv/lm-lv-2-1.ly"
    \include "../lv/lm-lv-3-1.ly"
    \include "../lv/lm-lv-4-1.ly"
    \include "../lv/lm-lv-5-7.ly"
    \include "../lv/lm-lv-6-1.ly"
    \include "../lv/lm-lv-7-8.ly"
    \include "../lv/lm-lv-8-2.ly"
    \include "../lv/lm-lv-9-6.ly"
    \include "../lv/lm-lv-10-1.ly"
    \include "../lv/lm-lv-11-1.ly"
    \include "../lv/lm-lv-12-3.ly"
    \include "../lv/lm-lv-13-2.ly"
    \include "../lv/lm-lv-14-5.ly"
    \include "../lv/lm-lv-15-3.ly"
    \include "../lv/lm-lv-16-7.ly"
    \bar"||"
    }
    >>
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}