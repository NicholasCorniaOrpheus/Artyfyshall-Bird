\include "paper_settings.ly"

\score{
 << 
 \new ChoirStaff
 <<
    %Voice1 part
    \context Staff = "voiceone" \with { instrumentName = "Canto Primo" }
    
    <<
    \set Staff.midiInstrument =#"voice oohs" {
    \include "voice_option.ly"
\include "./vc1/gp-02-vc1-121.ly"
}

>>

%Voice2 part
    \context Staff = "voicetwo" \with { instrumentName = "Canto Secondo" }
    
    <<
    \set Staff.midiInstrument =#"voice oohs" {
    \include "voice_option.ly"  
\include "./vc2/gp-02-vc2-121.ly"
}  
    >>
    
    >>
    
    %Piano part
    \context PianoStaff \with { instrumentName = "Piano-Forte"}
    <<
       \context Staff = "rh" {
         \include "voice_option.ly"
\include "./rh/gp-02-rh-121.ly"
}
        
        \context Staff = "lh" {
         \include"bassline_option.ly"
\include "./lh/gp-02-lh-121.ly"
}
        
    >>
    

  
 >> 
\include "layout_settings.ly"
 
}