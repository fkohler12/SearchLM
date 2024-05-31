//
//  SocialView.swift
//  SearchLM
//
//  Created by Felix Kohler (student LM) on 5/31/24.
//


//
import SwiftUI

struct SocialView: View {
    
    @State var viewNum = 1
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button {
                    viewNum = 1
                } label: {
                    Label("Chat", systemImage: (viewNum == 1) ? "message.fill" : "message")
                }
                Spacer()
                Button {
                    viewNum = 2
                } label: {
                    Label("Tutors", systemImage: (viewNum == 2) ? "book.fill" : "book")
                }
                Spacer()
            }.padding(.bottom, 25)
                
            if viewNum == 1 {
                ChatView()
                    .padding(.bottom, 15)
            }
            else {
                tutorView()
                    .padding(.bottom, 15)
            }
            
        }
    }
}

struct SocialView_Previews: PreviewProvider {
    static var previews: some View {
        SocialView()
    }
}
