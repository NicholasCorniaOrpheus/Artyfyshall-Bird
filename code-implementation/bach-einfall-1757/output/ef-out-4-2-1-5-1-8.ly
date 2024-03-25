\include "../paper_settings.ly" 
\header { piece = \markup "[4-2-1-5-1-8]" }

  %! abjad.LilyPondFile._get_format_pieces()
\score
  %! abjad.LilyPondFile._get_format_pieces()
{
    <<
    \new ChoirStaff
    <<
    %Upper voice part
    \context Staff = "upper" \with { instrumentName = "Discant" }
    <<
    \set Staff.midiInstrument =#"violin" {
    \include "../voice_option.ly"
    \include "../uv/ef-uv-1-4.ly"
    \include "../uv/ef-uv-2-2.ly"
    \include "../uv/ef-uv-3-1.ly"
    \include "../uv/ef-uv-4-5.ly"
    \include "../uv/ef-uv-5-1.ly"
    \include "../uv/ef-uv-6-8.ly"
    \bar"||"
    }
    >>
    %Lower voice part
    \context Staff = "lower" \with { instrumentName = "Bass" }
    <<
    \set Staff.midiInstrument =#"cello" {
    \include "../bassline_option.ly"
    \include "../lv/ef-lv-1-4.ly"
    \include "../lv/ef-lv-2-2.ly"
    \include "../lv/ef-lv-3-1.ly"
    \include "../lv/ef-lv-4-5.ly"
    \include "../lv/ef-lv-5-1.ly"
    \include "../lv/ef-lv-6-8.ly"
    \bar"||"
    }
    >>
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}