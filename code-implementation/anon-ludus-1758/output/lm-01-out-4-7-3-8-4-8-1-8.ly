\include "../paper_settings.ly" 
\header { piece = \markup "[4-7-3-8-4-8-1-8]" }

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
    \include "../uv/lm-01-uv-1-4.ly"
    \include "../uv/lm-01-uv-2-7.ly"
    \include "../uv/lm-01-uv-3-3.ly"
    \include "../uv/lm-01-uv-4-8.ly"
    \include "../uv/lm-01-uv-5-4.ly"
    \include "../uv/lm-01-uv-6-8.ly"
    \include "../uv/lm-01-uv-7-1.ly"
    \include "../uv/lm-01-uv-8-8.ly"
    \bar":|.|:"
    }
    >>
    %Lower voice part
    \context Staff = "lower" \with { instrumentName = "Basse" }
    <<
    \set Staff.midiInstrument =#"cello" {
    \include "../bassline_option.ly"
    \include "../lv/lm-01-lv-1-4.ly"
    \include "../lv/lm-01-lv-2-7.ly"
    \include "../lv/lm-01-lv-3-3.ly"
    \include "../lv/lm-01-lv-4-8.ly"
    \include "../lv/lm-01-lv-5-4.ly"
    \include "../lv/lm-01-lv-6-8.ly"
    \include "../lv/lm-01-lv-7-1.ly"
    \include "../lv/lm-01-lv-8-8.ly"
    \bar":|.|:"
    }
    >>
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}