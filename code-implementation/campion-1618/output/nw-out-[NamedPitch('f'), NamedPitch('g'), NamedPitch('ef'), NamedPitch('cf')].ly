  %! abjad.LilyPondFile._get_format_pieces()
\version "2.22.1"
  %! abjad.LilyPondFile._get_format_pieces()
\language "english"
  %! abjad.LilyPondFile._get_format_pieces()
\score
  %! abjad.LilyPondFile._get_format_pieces()
{
    % OPEN_BRACKETS:
    \new Score
    <<
        % OPEN_BRACKETS:
        \context Staff = "cantus"
        {
            % OPEN_BRACKETS:
            \context Voice = "cantus"
            {
                % BEFORE:
                % COMMANDS:
                \key c \major
                % OPENING:
                % COMMANDS:
                \clef "treble"
                \time 2/1
                a'1
                g'1
                g'1
                fs'1
            % CLOSE_BRACKETS:
            }
        % CLOSE_BRACKETS:
        }
        % OPEN_BRACKETS:
        \context Staff = "altus"
        {
            % OPEN_BRACKETS:
            \context Voice = "altus"
            {
                % BEFORE:
                % COMMANDS:
                \key c \major
                % OPENING:
                % COMMANDS:
                \clef "treble_8"
                \time 2/1
                f'1
                d'1
                ef'1
                ef'1
            % CLOSE_BRACKETS:
            }
        % CLOSE_BRACKETS:
        }
        % OPEN_BRACKETS:
        \context Staff = "tenor"
        {
            % OPEN_BRACKETS:
            \context Voice = "tenor"
            {
                % BEFORE:
                % COMMANDS:
                \key c \major
                % OPENING:
                % COMMANDS:
                \clef "treble_8"
                \time 2/1
                c'1
                bf1
                bf1
                c'1
            % CLOSE_BRACKETS:
            }
        % CLOSE_BRACKETS:
        }
        % OPEN_BRACKETS:
        \context Staff = "bassus"
        {
            % OPEN_BRACKETS:
            \context Voice = "bassus"
            {
                % BEFORE:
                % COMMANDS:
                \key c \major
                % OPENING:
                % COMMANDS:
                \clef "bass"
                \time 2/1
                f1
                g1
                ef1
                cf1
            % CLOSE_BRACKETS:
            }
        % CLOSE_BRACKETS:
        }
    % CLOSE_BRACKETS:
    >>
  %! abjad.LilyPondFile._get_format_pieces()
}