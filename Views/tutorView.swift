//
//  tutorView.swift
//  FinalProject
//
//  Created by Quinten Pearsall (student LM) on 5/10/24.
//

import SwiftUI

struct tutorView: View {
    
    
    @StateObject var t = Tutors()
    
    
    var body: some View {
        
            
            VStack {
                
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
    

struct Subjects : Identifiable {
    var id = UUID()
    var subjects : [String]
}

let subjects : [String] = ["Science", "Math", "English", "History"]

struct tutorView_Previews: PreviewProvider {
    static var previews: some View {
        tutorView()
    }
}
