//
//  ContentView.swift
//  FinalProject
//
//  Created by Youssef Niazy (student LM) on 3/8/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var user: User
    var body: some View {
        ZStack {
            if(user.loggedIn){
                StartupView()
                .edgesIgnoringSafeArea(.all)}
              
            else{
                SignInView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
            .environmentObject(User())
            .environmentObject(ChatViewModel())
    }
}
