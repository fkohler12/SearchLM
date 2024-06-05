//
//  tutorView.swift
//  FinalProject
//
//  Created by Quinten Pearsall (student LM) on 5/10/24.
//

import SwiftUI

struct tutorView: View {
    
    //vars
    @StateObject var t = Tutors()
    
    
    var body: some View {
        
            
            VStack {
                //math tutors
                List{
                    Section(header : Text("Math")) {
                        
                        ForEach(t.tutors, id : \.self) { tutor in
                            if tutor.subject == .math {
                                VStack{
                                    HStack{
                                        Text(tutor.name)
                                        
                                        Text("Grade 11")
                                    }
                                        Text(tutor.subSubject)
                                        Text(tutor.email)
                                        
                                    
                                }
                                
                            }
                            
                            
                            
                        }
                        
                    }
                    //science tutors
                    Section(header : Text("Science")) {
                        ForEach(t.tutors, id : \.self) { tutor in
                            if tutor.subject == .science {
                                VStack{
                                    HStack{
                                        Text(tutor.name)
                                        
                                        Text("Grade 11")
                                    }
                                        Text(tutor.subSubject)
                                        Text(tutor.email)
                                        
                                    
                                }
                                
                            }
                            
                            
                            
                            
                            
                        }
                        
                    }
                    //history tutors
                    Section(header : Text("History")) {
                        ForEach(t.tutors, id : \.self) { tutor in
                            if tutor.subject == .history {
                                VStack{
                                    HStack{
                                        Text(tutor.name)
                                        
                                        Text("Grade 11")
                                    }
                                        Text(tutor.subSubject)
                                        Text(tutor.email)
                                        
                                    
                                }
                            }
                            
                            
                            
                        }
                        
                    }
                    //english tutors
                    Section(header : Text("English")) {
                        ForEach(t.tutors, id : \.self) { tutor in
                            if tutor.subject == .english {
                                VStack{
                                    HStack{
                                        Text(tutor.name)
                                        
                                        Text("Grade 11")
                                    }
                                        Text(tutor.subSubject)
                                        Text(tutor.email)
                                        
                                    
                                }
                            }
                            
                            
                            
                        }
                        
                    }
                    .listStyle(InsetGroupedListStyle())
                    
                    
                }
            }
        }
    }
    


//pointless, not using. Would use if had more time to make view more complicated
//struct Subjects : Identifiable {
//    var id = UUID()
//    var subjects : [String]
//}


//list of subjects
let subjects : [String] = ["Science", "Math", "English", "History"]

struct tutorView_Previews: PreviewProvider {
    static var previews: some View {
        tutorView()
    }
}
