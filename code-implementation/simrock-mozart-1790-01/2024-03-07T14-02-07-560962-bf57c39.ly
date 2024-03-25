  %! abjad.LilyPondFile._get_format_pieces()
\version "2.22.1"
  %! abjad.LilyPondFile._get_format_pieces()
\language "english"
#(set-global-staff-size 18)

\paper {
 top-system-spacing.basic-distance = #10
  system-system-spacing.basic-distance = #20
  last-bottom-spacing.basic-distance = #10
horizontal-shift = #7
top-margin = 1.5 \cm
bottom-margin = 1 \cm
left-margin = 1.8 \cm
right-margin = 1.8 \cm
%#(define fonts
 %   (set-global-fonts
    %#:roman "Humanistic"
%#:sans ""
   % )
  %)

}

\header {
    composer = \markup { Artyfyshall Byrd }
    title = \markup { Ein Musikalisches Wuerfelspiel }
    copyright = \markup{ "Orpheus Institute, Resounding Libraries" }
    tagline = \markup {" Who’s Afraid of the Artyfyshall Byrd?, 2023 "}
}

\midi{\tempo 2 = 120}

\layout{
  \context {
    \Score
    \override StaffGrouper.staff-staff-spacing.padding = #5
    \override StaffGrouper.staff-staff-spacing.basic-distance = #5
    \override StaffGrouper.staffgroup-staff-spacing.basic-distance = #5
\override StaffGrouper.staffgroup-staff-spacing.padding = #5
  \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/4)

  }
  \context { \Voice \override NoteHead.style = #'baroque }
   \context {
    \Staff
    \RemoveEmptyStaves
  }
  \context{
    \Voice
    \RemoveEmptyStaves
  }
  \context {      \Dynamics
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.basic-distance = #10
    }


}


\header { subtitle = \markup "[10-3-2-4-8-5-11-2-3-9-3-3-1-5-11-1]" }

% OPEN_BRACKETS:
\context Score = "Score"
<<
    % OPEN_BRACKETS:
    \context PianoStaff = "Piano_Staff"
    <<
        % OPEN_BRACKETS:
        \context Staff = "RH_Staff"
        {
            % OPEN_BRACKETS:
            \context Voice = "RH_Voice"
            {
                % BEFORE:
                % COMMANDS:
                \repeat volta 2
                % OPEN_BRACKETS:
                {
                    % OPEN_BRACKETS:
                    {
                        % OPENING:
                        % COMMANDS:
                        \time 3/8
                        g''8
                        % AFTER:
                        % MARKUP:
                        - \tweak staff-padding 10
                        - \tweak transparent ##t
                        ^ \markup A
                        c''8
                        e''8
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    {
                        g''8
                        e''8
                        c''8
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    {
                        b'8
                        d''8
                        g''8
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    {
                        c''8
                        e''8
                        g'8
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    {
                        a'8
                        a'16
                        d''16
                        fs''8
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    {
                        g''16
                        fs''16
                        g''16
                        d''16
                        b'16
                        g'16
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    {
                        a'8
                        d''16
                        c''16
                        b'16
                        a'16
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
                % BEFORE:
                % COMMANDS:
                \alternative
                % OPEN_BRACKETS:
                {
                    % OPEN_BRACKETS:
                    {
                        <g' b' d'' g''>4
                        r8
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    {
                        <g' b' d'' g''>4
                        r8
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
                % OPEN_BRACKETS:
                {
                    fs''8
                    a''8
                    fs''8
                % CLOSE_BRACKETS:
                }
                % OPEN_BRACKETS:
                {
                    g''16
                    b''16
                    g''8
                    d''8
                % CLOSE_BRACKETS:
                }
                % OPEN_BRACKETS:
                {
                    e''8
                    g''16
                    e''16
                    c''8
                % CLOSE_BRACKETS:
                }
                % OPEN_BRACKETS:
                {
                    <c'' e''>8
                    <b' d''>16
                    <g' b'>16
                    g'8
                % CLOSE_BRACKETS:
                }
                % OPEN_BRACKETS:
                {
                    e''8
                    c''8
                    g'8
                % CLOSE_BRACKETS:
                }
                % OPEN_BRACKETS:
                {
                    c'''16
                    b''16
                    c'''16
                    g''16
                    e''16
                    c''16
                % CLOSE_BRACKETS:
                }
                % OPEN_BRACKETS:
                {
                    a'8
                    f''16
                    d''16
                    a'16
                    b'16
                % CLOSE_BRACKETS:
                }
                % OPEN_BRACKETS:
                {
                    c''4
                    % AFTER:
                    % MARKUP:
                    - \tweak staff-padding 10
                    - \tweak transparent ##t
                    ^ \markup A
                    r8
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            }
        % CLOSE_BRACKETS:
        }
        % OPEN_BRACKETS:
        \context Staff = "LH_Staff"
        {
            % OPEN_BRACKETS:
            \context Voice = "LH_Voice"
            {
                % BEFORE:
                % COMMANDS:
                \repeat volta 2
                % OPEN_BRACKETS:
                {
                    % OPEN_BRACKETS:
                    {
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        <c e>4
                        r8
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    {
                        <c e>4
                        r8
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    {
                        g,4
                        r8
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    {
                        <e g>4
                        r8
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    {
                        <c fs>8
                        <c fs>8
                        <c a>8
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    {
                        <b, d>4
                        <b, g>8
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    {
                        c8
                        d8
                        d,8
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
                % BEFORE:
                % COMMANDS:
                \alternative
                % OPEN_BRACKETS:
                {
                    % OPEN_BRACKETS:
                    {
                        g,8
                        g16
                        f16
                        e16
                        d16
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    {
                        g,8
                        b16
                        g16
                        fs16
                        e16
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
                % OPEN_BRACKETS:
                {
                    <d a>8
                    <d fs>8
                    <c d>8
                % CLOSE_BRACKETS:
                }
                % OPEN_BRACKETS:
                {
                    <b, d>4
                    <b, g>8
                % CLOSE_BRACKETS:
                }
                % OPEN_BRACKETS:
                {
                    <c g>4
                    <c e>8
                % CLOSE_BRACKETS:
                }
                % OPEN_BRACKETS:
                {
                    g8
                    g,8
                    r8
                % CLOSE_BRACKETS:
                }
                % OPEN_BRACKETS:
                {
                    <c e>16
                    g16
                    <c e>16
                    g16
                    <c e>16
                    g16
                % CLOSE_BRACKETS:
                }
                % OPEN_BRACKETS:
                {
                    <c e>4
                    r8
                % CLOSE_BRACKETS:
                }
                % OPEN_BRACKETS:
                {
                    f4
                    g8
                % CLOSE_BRACKETS:
                }
                % OPEN_BRACKETS:
                {
                    c8
                    g,8
                    c,8
                    % AFTER:
                    % COMMANDS:
                    \bar "|."
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            }
        % CLOSE_BRACKETS:
        }
    % CLOSE_BRACKETS:
    >>
% CLOSE_BRACKETS:
>>