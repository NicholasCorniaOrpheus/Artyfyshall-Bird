# Libraries
import abjad as abjad
import random as random

# Measures

measure_1_choices = [
    ("c4 r8", "e''8 c''8 g'8"),
    ("<c e>4 r8", "g'8 c''8 e''8"),
    ("<c e>4 r8", "g''8 ( e''8 c''8 )"),
    ("<c e>4 r8", "c''16 b'16 c''16 e''16 g'16 c''16"),
    ("<c e>4 r8", "c'''16 b''16 c'''16 g''16 e''16 c''16"),
    ("c4 r8", "e''16 d''16 e''16 g''16 c'''16 g''16"),
    ("<c e>4 r8", "g''8 f''16 e''16 d''16 c''16"),
    ("<c e>4 r8", "e''16 c''16 g''16 e''16 c'''16 g''16"),
    ("<c e>16 g16 <c e>16 g16 <c e>16 g16", "c''8 g'8 e''8"),
    ("<c e>4 r8", "g''8 c''8 e''8"),
    ("c8 c8 c8", "<e' c''>8 <e' c''>8 <e' c''>8"),
]
measure_2_choices = [
    ("c4 r8", "e''8 c''8 g'8"),
    ("<c e>4 r8", "g'8 c''8 e''8"),
    ("<c e>4 r8", "g''8 e''8 c''8"),
    ("<e g>4 r8", "c''16 g'16 c''16 e''16 g'16 c''16"),
    ("<c e>4 r8", "c'''16 b''16 c'''16 g''16 e''16 c''16"),
    ("c4 r8", "e''16 d''16 e''16 g''16 c'''16 g''16"),
    ("<c e>4 r8", "g''8 f''16 e''16 d''16 c''16"),
    ("<c e>4 r8", "c''16 g'16 e''16 c''16 g''16 e''16"),
    ("<c e>4 r8", "c''8 g'8 e''8"),
    ("<c e>4 <c g>8", "g''8 c''8 e''8"),
    ("c8 c8 c8", "<e' c''>8 <e' c''>8 <e' c''>8"),
]
measure_3_choices = [
    ("<b, g>4 g,8", "d''16 e''16 f''16 d''16 c''16 b'16"),
    ("g,4 r8", "b'8 d''8 g''8"),
    ("g,4 r8", "b'8 d''16 b'16 a'16 g'16"),
    ("<g b>4 r8", "f''8 d''8 b'8"),
    ("<b, d>4 r8", "g''16 fs''16 g''16 d''16 b'16 g'16"),
    ("<g b>4 r8", "f''16 e''16 f''16 d''16 c''16 b'16"),
    ("<g, g>4 <b, g>8", "b'16 c''16 d''16 e''16 f''16 d''16"),
    ("g8 g8 g8", "<b' d''>8 <b' d''>8 <b' d''>8"),
    ("g,4 r8", "b'16 c''16 d''16 b'16 a'16 g'16"),
    ("b,4 r8", "d''8 ( b'8 g'8 )"),
    ("g4 r8", "b'16 a'16 b'16 c''16 d''16 b'16"),
]
measure_4_choices = [
    ("<c e>4 r8", "c''16 b'16 c''16 e''16 g'8"),
    ("c4 r8", "e''16 c''16 b'16 c''16 g'8"),
    ("<e g>4 r8", "c''8 ( g'8 e'8 )"),
    ("<e g>4 r8", "c''8 e''8 g'8"),
    ("<e g>4 r8", "c''16 b'16 c''16 g'16 e'16 c'16"),
    ("<c e>4 r8", "c''8 c''16 d''16 e''8"),
    ("c4 r8", "<c'' e''>8 <c'' e''>16 <d'' f''>16 <e'' g''>8"),
    ("<e g>4 r8", "c''8 e''16 c''16 g'8"),
    ("<e g>4 r8", "c''16 g'16 e''16 c''16 g''8"),
    ("<e g>4 r8", "c''8 e''16 c''16 g''8"),
    ("<e g>4 r8", "c''16 e''16 c''16 g'16 e'8"),
]
measure_5_choices = [
    ("c4 r8", "fs''8 a''16 fs''16 d''16 fs''16"),
    ("c8 c8 c8", "<fs' d''>8 <d'' fs''>8 <fs'' a''>8"),
    ("c4 r8", "d''16 a'16 fs''16 d''16 a''16 fs''16"),
    ("c8 c8 c8", "<fs' d''>8 <fs' d''>8 <fs' d''>8"),
    ("c4 r8", "d''8 a'8 ^\\turn fs''8"),
    ("c4 r8", "d''16 cs''16 d''16 fs''16 a''16 fs''16"),
    ("<c a>4 <c a>8", "fs''8 a''8 d''8"),
    ("<c fs>8 <c fs>8 <c a>8", "a'8 a'16 d''16 fs''8"),
    ("c8 c8 c8", "<d'' fs''>8 <d'' fs''>8 <d'' fs''>8"),
    ("<c d>8 <c d>8 <c d>8", "fs''8 fs''16 d''16 a''8"),
    ("<c a>4 r8", "fs''16 d''16 a'16 a''16 fs''16 d''16"),
]
measure_6_choices = [
    ("<b, d>8 <b, d>8 <b, d>8", "g''16 fs''16 g''16 b''16 d''8"),
    ("<b, d>4 r8", "g''8 b''16 g''16 d''16 b'16"),
    ("<b, d>4 r8", "g''8 b''8 d''8"),
    ("<b, g>4 r8", "a'8 fs'16 g'16 b'16 g''16"),
    ("<b, d>4 <b, g>8", "g''16 fs''16 g''16 d''16 b'16 g'16"),
    ("b,4 r8", "g''8 b''16 g''16 d''16 g''16"),
    ("<b, g>4 r8", "d''8 g''16 d''16 b'16 d''16"),
    ("<b, g>4 r8", "d''8 d''16 g''16 b''8"),
    ("<b, d>8 <b, d>8 <b, g>8", "a''16 g''16 fs''16 g''16 d''8"),
    ("<b, d>4 r8", "g''8 g''16 d''16 b''8"),
    ("<b, d>4 r8", "g''16 b''16 g''16 d''16 b'8"),
]
measure_7_choices = [
    ("c8 d8 d,8", "e''16 c''16 b'16 a'16 g'16 fs'16"),
    ("c8 d8 d,8", "a'16 e''16 <b' d''>16 <a' c''>16 <g' b'>16 <fs' a'>16"),
    (
        "c8 d8 d,8",
        "<b' d''>16 ( <a' c''>16 ) <a' c''>16 ( <g' b'>16 ) <g' b'>16 ( <fs' a'>16 )",
    ),
    ("c8 d8 d,8", "e''16 g''16 d''16 c''16 b'16 a'16"),
    ("c8 d8 d,8", "a'16 e''16 d''16 g''16 fs''16 a''16"),
    ("c8 d8 d,8", "e''16 a''16 g''16 b''16 fs''16 a''16"),
    ("c8 d8 d,8", "c''16 e''16 g''16 d''16 a'16 fs''16"),
    ("c8 d8 d,8", "e''16 g''16 d''16 g''16 a'16 fs''16"),
    ("c8 d8 d,8", "e''16 c''16 b'16 g'16 a'16 fs'16"),
    ("c8 d8 d,8", "e''16 c'''16 b''16 g''16 a''16 fs''16"),
    ("c8 d8 d,8", "a'8 d''16 c''16 b'16 a'16"),
]
measure_8_choices = [
    ("g,8 g16 f16 e16 d16", "<g' b' d'' g''>4 r8"),
    ("g,8 b16 g16 fs16 e16", "<g' b' d'' g''>4 r8"),
]
measure_9_choices = [
    ("d4 c8", "fs''8 a''16 fs''16 d''16 fs''16"),
    ("<d fs>4 r8", "d''16 a'16 d''16 fs''16 a''16 fs''16"),
    ("<d a>8 <d fs>8 <c d>8", "fs''8 a''8 fs''8"),
    ("<c a>4 <c a>8", "fs''16 a''16 d'''16 a''16 fs''16 a''16"),
    ("d4 c8", "d'16 fs'16 a'16 d''16 fs''16 a''16"),
    ("d,16 d16 cs16 d16 c16 d16", "<a' d'' fs''>8 fs''4 ^\\trill"),
    ("<d fs>4 <c fs>8", "a''8 ( fs''8 d''8 )"),
    ("<d fs>4 <c fs>8", "d'''8 a''16 fs''16 d''16 a'16"),
    ("<d fs>4 r8", "d''16 a'16 d''8 fs''8"),
    ("<c a>4 <c a>8", "fs''16 d''16 a'8 fs''8"),
    ("<d fs>4 <c a>8", "a'8 d''8 fs''8"),
]
measure_10_choices = [
    ("<b, g>4 r8", "g''8 b''16 g''16 d''8"),
    ("b,16 d16 g16 d16 b,16 g,16", "g''8 g'8 g'8"),
    ("b,4 r8", "g''16 b''16 g''16 b''16 d''8"),
    ("<b, d>4 <b, d>8", "a''16 g''16 b''16 g''16 d''16 g''16"),
    ("<b, d>4 <b, d>8", "g''8 d''16 b'16 g'8"),
    ("<b, d>4 <b, d>8", "g''16 b''16 d'''16 b''16 g''8"),
    ("<b, d>4 r8", "g''16 b''16 g''16 d''16 b'16 g'16"),
    ("<b, d>4 <b, d>8", "g''16 d''16 g''16 b''16 g''16 d''16"),
    ("<b, d>4 <b, g>8", "g''16 b''16 g''8 d''8"),
    ("g,16 b,16 g8 b,8", "g''8 d''4 ^\\trill"),
    ("b,4 r8", "g''8 b''16 d'''16 d''8"),
]
measure_11_choices = [
    ("c16 e16 g16 e16 c'16 c16", "<c'' e''>8 <c'' e''>8 <c'' e''>8"),
    ("e4 e16 c16", "c''16 g'16 c''16 e''16 g''16 <c'' e''>16"),
    ("<c g>4 <c e>8", "e''8 g''16 e''16 c''8"),
    ("<c g>4 r8", "e''16 c''16 e''16 g''16 c'''16 g''16"),
    ("<c g>4 <c g>8", "e''16 g''16 c'''16 g''16 e''16 c''16"),
    ("c16 b,16 c16 d16 e16 fs16", "<g' c'' e''>8 e''4 ^\\trill"),
    ("<c e>16 g16 <c e>16 g16 <c e>16 g16", "e''8 c''8 g'8"),
    ("<c g>4 <c e>8", "e''8 c''16 e''16 g''16 c'''16"),
    ("<c g>4 <c e>8", "e''16 c''16 e''8 g''8"),
    ("<c g>4 <c g>8", "e''16 c''16 g'8 e''8"),
    ("<c g>4 <c e>8", "e''8 ( g''8 c'''8 )"),
]
measure_12_choices = [
    ("g4 g,8", "<c'' e''>8 <b' d''>8 r8"),
    ("<g, g>4 g8", "d''16 b'16 g'8 r8"),
    ("g8 g,8 r8", "<c'' e''>8 <b' d''>16 <g' b'>16 g'8"),
    ("g4 r8", "e''16 c''16 d''16 b'16 g'8"),
    ("g8 g,8 r8", "g''16 e''16 d''16 b'16 g'8"),
    ("g4 g,8", "b'16 d''16 g''16 d''16 b'8"),
    ("g8 g,8 r8", "e''16 c''16 b'16 d''16 g''8"),
    ("<g b>4 r8", "d''16 b''16 g''16 d''16 b'8"),
    ("<b, g>4 <b, d>8", "d''16 b'16 g'8 g''8"),
    ("g16 fs16 g16 d16 b,16 g,16", "d''8 g'4"),
    ("g16 fs16 g16 d16 b,16 g,16", "d''8 g'4"),
]
measure_13_choices = [
    ("<c e>16 g16 <c e>16 g16 <c e>16 g16", "e''8 c''8 g'8"),
    ("<c e>16 g16 <c e>16 g16 <c e>16 g16", "g'8 c''8 e''8"),
    ("<c e>16 g16 <c e>16 g16 <c e>16 g16", "g''8 e''8 c''8"),
    ("<c e>4 <e g>8", "c''16 b'16 c''16 e''16 g'16 c''16"),
    ("<c e>4 <c g>8", "c'''16 b''16 c'''16 g''16 e''16 c''16"),
    ("<c g>4 <c e>8", "e''16 d''16 e''16 g''16 c'''16 g''16"),
    ("<c e>4 r8", "g''8 f''16 e''16 d''16 c''16"),
    ("<c e>4 r8", "c''16 g'16 e''16 c''16 g''16 e''16"),
    ("<c e>16 g16 <c e>16 g16 <c e>16 g16", "c''8 g'8 e''8"),
    ("<c e>16 g16 <c e>16 g16 <c e>16 g16", "g''8 c''8 e''8"),
    ("c8 c8 c8", "<e' c''>8 <e' c''>8 <e' c''>8"),
]
measure_14_choices = [
    ("<c e>16 g16 <c e>16 g16 <c e>16 g16", "e''8 ( c''8 g'8 )"),
    ("<c e>4 <c g>8", "g'8 ( c''8 e''8 )"),
    ("<c e>16 g16 <c e>16 g16 <c e>16 g16", "g''8 e''8 c''8"),
    ("<c e>4 <c e>8", "c''16 b'16 c''16 e''16 g'16 c''16"),
    ("<c e>4 r8", "c'''16 b''16 c'''16 g''16 e''16 c''16"),
    ("<c g>4 <c e>8", "e''16 d''16 e''16 g''16 c'''16 g''16"),
    ("<c e>4 <e g>8", "g''8 f''16 e''16 d''16 c''16"),
    ("<c e>4 r8", "c''16 g'16 e''16 c''16 g''16 e''16"),
    ("<c e>16 g16 <c e>16 g16 <c e>16 g16", "c''8 g'8 e''8"),
    ("<c e>16 g16 <c e>16 g16 <c e>16 g16", "g''8 c''8 e''8"),
    ("c8 c8 c8", "<e' c''>8 <e' c''>8 <e' c''>8"),
]
measure_15_choices = [
    ("<f a>4 <g d'>8", "d''16 f''16 d''16 f''16 b'16 d''16"),
    ("f4 g8", "d''16 f''16 a''16 f''16 d''16 b'16"),
    ("f4 g8", "d''16 f''16 a'16 d''16 b'16 d''16"),
    ("f4 g8", "d''16 ( cs''16 ) d''16 f''16 g'16 b'16"),
    ("f8 d8 g8", "f''8 d''8 g''8"),
    ("f16 e16 d16 e16 f16 g16", "f''16 e''16 d''16 e''16 f''16 g''16"),
    ("f16 e16 d8 g8", "f''16 e''16 d''8 g''8"),
    ("f4 g8", "f''16 e''16 d''16 c''16 b'16 d''16"),
    ("f4 g8", "f''16 d''16 a'8 b'8"),
    ("f4 g8", "f''16 a''16 a'8 b'16 d''16"),
    ("f4 g8", "a'8 f''16 d''16 a'16 b'16"),
]
measure_16_choices = [
    ("c8 g,8 c,8", "c''4 r8"),
    ("c4 c,8", "c''8 c'8 r8"),
]

def make_corpus():
    measure_choice_lists = [
        measure_1_choices,
        measure_2_choices,
        measure_3_choices,
        measure_4_choices,
        measure_5_choices,
        measure_6_choices,
        measure_7_choices,
        measure_8_choices,
        measure_9_choices,
        measure_10_choices,
        measure_11_choices,
        measure_12_choices,
        measure_13_choices,
        measure_14_choices,
        measure_15_choices,
        measure_16_choices,
    ]
    choices = []
    for measure_choice_list in measure_choice_lists:
        dictionaries = []
        for bass_string, treble_string in measure_choice_list:
            dictionary = {"bass": bass_string, "treble": treble_string}
            dictionaries.append(dictionary)
        choices.append(dictionaries)
    return choices

def choose_measures(choices):
    assert len(choices) == len(corpus)
    measure_number = 1
    measures = []
    for choice, measure_possibilities in zip(choices, corpus):
        if measure_number != 8:
            measure = measure_possibilities[choice - 1]
            measures.append(measure)
        else:
            measures.extend(measure_possibilities)
        measure_number += 1
    return measures

def make_measure(dictionary):
    treble = abjad.Container(dictionary["treble"])
    bass = abjad.Container(dictionary["bass"])
    return treble, bass

def make_empty_score():
    rh_voice = abjad.Voice(name="RH_Voice")
    rh_staff = abjad.Staff([rh_voice], name="RH_Staff")
    lh_voice = abjad.Voice(name="LH_Voice")
    lh_staff = abjad.Staff([lh_voice], name="LH_Staff")
    staff_group = abjad.StaffGroup(
        [rh_staff, lh_staff],
        lilypond_type="PianoStaff",
        name="Piano_Staff",
    )
    score = abjad.Score([staff_group], name="Score")
    return score

def make_score(choices):
    score = make_empty_score()
    treble_volta_container = abjad.Container()
    literal = abjad.LilyPondLiteral(r"\repeat volta 2")
    abjad.attach(literal, treble_volta_container)
    score["RH_Voice"].append(treble_volta_container)
    bass_volta_container = abjad.Container()
    literal = abjad.LilyPondLiteral(r"\repeat volta 2")
    abjad.attach(literal, bass_volta_container)
    score["LH_Voice"].append(bass_volta_container)
    treble_alternative_ending_container = abjad.Container()
    literal = abjad.LilyPondLiteral(r"\alternative")
    abjad.attach(literal, treble_alternative_ending_container)
    score["RH_Voice"].append(treble_alternative_ending_container)
    bass_alternative_ending_container = abjad.Container()
    literal = abjad.LilyPondLiteral(r"\alternative")
    abjad.attach(literal, bass_alternative_ending_container)
    score["LH_Voice"].append(bass_alternative_ending_container)
    measures = choose_measures(choices)
    for measure in measures[:7]:
        treble, bass = make_measure(measure)
        treble_volta_container.append(treble)
        bass_volta_container.append(bass)
    for measure in measures[7:9]:
        treble, bass = make_measure(measure)
        treble_alternative_ending_container.append(treble)
        bass_alternative_ending_container.append(bass)
    for measure in measures[9:]:
        treble, bass = make_measure(measure)
        score["RH_Voice"].append(treble)
        score["LH_Voice"].append(bass)
    time_signature = abjad.TimeSignature((3, 8))
    leaf = abjad.select.leaf(score["RH_Voice"], 0)
    abjad.attach(time_signature, leaf)
    bar_line = abjad.BarLine("|.")
    leaf = abjad.select.leaf(score["LH_Voice"], -1)
    abjad.attach(bar_line, leaf)
    leaf = abjad.select.leaf(score["LH_Voice"], 0)
    clef = abjad.Clef("bass")
    abjad.attach(clef, leaf)
    leaves = abjad.select.leaves(score["RH_Voice"])
    groups = abjad.select.group_by_measure(leaves)
    strut = abjad.Markup(r"\markup A")
    bundle = abjad.bundle(
        strut,
        r"- \tweak staff-padding 10",
        r"- \tweak transparent ##t",
    )
    abjad.attach(bundle, groups[0][0], direction=abjad.UP)
    strut = abjad.Markup(r"\markup A")
    bundle = abjad.bundle(
        strut,
        r"- \tweak staff-padding 10",
        r"- \tweak transparent ##t",
    )
    abjad.attach(bundle, groups[-1][0], direction=abjad.UP)
    return score

def make_subtitle(choices):
    string = [str(_) for _ in choices]
    string = "-".join(string)
    string = f"[{string}]"
    string = r'\header { subtitle = \markup "' + string + '" }'
    string += "\n"
    return string


# Preamble
preamble = r"""#(set-global-staff-size 18)

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

"""





# Generation random measures
corpus = make_corpus()
counts = [len(_) for _ in corpus]
x=random.choice(range(1,1000))
random.seed(x)
choices = [random.randint(1, _) for _ in counts]

# Generation of the score
score = make_score(choices)
subtitle = make_subtitle(choices)
lilypond_file = abjad.LilyPondFile([preamble, subtitle, score])
abjad.show(lilypond_file, output_directory="./simrock-mozart-output/", name="output")

