\include "paper_settings.ly"

\score{
 << 
   \new StaffGroup
   <<
    %Violin1
    \context Staff = "violin1" \with { instrumentName = "Viol. 1" }
    
    <<
    \set Staff.midiInstrument =#"violin" {

    \include "voice_option.ly"
    \relative c''{
    \include "./violin1/pm-01-vln1-1.ly"
    }
    }  
    
    >> 
    %Violin2
    \context Staff = "violin2" \with { instrumentName = "Viol. 2" }
    
    <<
    \set Staff.midiInstrument =#"violin" {
    \relative c''{
    \include "voice_option.ly"
    \include "./violin2/pm-01-vln2-1.ly"
    }
    }  
    
    >> 
   >>
    
    %Harpsichord
    \context PianoStaff \with { instrumentName = "Clav."}
    <<
      
       \context Staff = "rh" {
         \set Staff.midiInstrument =#"harpsichord"
         %aggregation of violin1 and 2
         \include "voice_option.ly"
          \relative c''{
         \include "./rh/pm-01-rh-1.ly"
          }
        }
        
        \context Staff = "lh" {
         \set Staff.midiInstrument =#"harpsichord"
          \relative c{
        \include "bassline_option.ly"
        \include "./lh/pm-01-lh-1.ly"
          }
        }
        
    >>
    

  
 >> 
\include "layout_settings.ly"
 
}
   