\include "paper_settings.ly"

\score{
 << 
    %Voice part
    \context Staff = "voice" \with { instrumentName = "Voice" }
    
    <<
    \set Staff.midiInstrument =#"voice oohs" {

   \key g \major \clef treble
    s1
    \include "./voice/gp-01-vc-8.ly"
    
    }  
    
    >>  
    
    %Piano part
    \context PianoStaff \with { instrumentName = "Piano"}
    <<
       \context Staff = "rh" {
         \key g \major \clef treble
         s1
         \include "./rh/gp-01-rh-8.ly"
         
        }
        
        \context Staff = "lh" {
        \key g \major \clef bass
        s1
        \include "./lh/gp-01-lh-8.ly"
          
        }
        
    >>
    

  
 >> 
\include "layout_settings.ly"
 
}
    