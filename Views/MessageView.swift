//
//  MessageView.swift
//  FinalProject
//
//  Created by Nicholas Wilson (student LM) on 3/15/24.
//

import SwiftUI


struct MessageView: View {
    //vars
    @EnvironmentObject var user: User

    var message: Message
    
    var body: some View {
        //deciding on which side of the screen to display our message on
        if message.isFromCurrentUser(){
            HStack{
                
                HStack {
                    Text(message.text)
                        .padding()
                }
                .frame(maxWidth: 260, alignment: .topLeading)
                .background(Color(uiColor: .systemBlue))
                .cornerRadius(20)
                Image(systemName: "person")
                    .frame(maxHeight: 32, alignment: .top)
                    .padding(.bottom, 16)
                    .padding(.leading, 4)
            }
            .frame(maxWidth: 360, alignment: .trailing)
        }
        else{
            HStack{
                Image(systemName: "person")
                    .frame(maxHeight: 32, alignment: .top)
                    .padding(.bottom, 16)
                    .padding(.trailing, 4)
                HStack {
                    Text(message.text)
                        .padding()
                }
                .frame(maxWidth: 260, alignment: .leading)
                .background(Color(uiColor: .lightGray))
                .cornerRadius(20)
            }
            .frame(maxWidth: 360, alignment: .leading)
        }
        
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        //defaults
        MessageView(message: Message(userUid: "12345", text: "Hello", createdAt: Date()))
            .environmentObject(User())
    }
}
