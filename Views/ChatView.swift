//
//  ChatView.swift
//  FinalProject
//
//  Created by Nicholas Wilson (student LM) on 3/15/24.
//

import SwiftUI

struct ChatView: View {
    @EnvironmentObject var user: User

    @StateObject var chatViewModel = ChatViewModel()
    @State var text = ""
    var body: some View {
        VStack {
            ScrollView(showsIndicators: false) {
                VStack(spacing: 8) {
                    ForEach(chatViewModel.messages.reversed()) { message in
                        MessageView(message: message)
                    }
                }
            }
            HStack {
                TextField("Hello there", text: $text, axis: .vertical)
                    .padding()
                
                
                Button {
                    if text.count > 2{
                        chatViewModel.sendMessage(text: text) { success in
                            if success{
                                
                            }
                            else{
                                print("error sending message")
                            }
                        }
                        text = ""
                    }
                }
                label: {
                    Text("Send")
                        .padding()
                        .foregroundColor(.white)
                        .background(.mint)
                        .cornerRadius(50)
                        .padding(.trailing)
                }
            }.background(Color(uiColor: .systemGray5))
            

        }      }
    
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
            .environmentObject(User())
    }
}
//chatview
