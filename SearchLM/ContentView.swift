//
//  ContentView.swift
//  FinalProject
//
//  Created by Youssef Niazy (student LM) on 3/8/24.
//

import SwiftUI

struct ContentView: View {
    //vars
    @EnvironmentObject var user: User
    var body: some View {
        //first view, contains all the tabs inside it so you are able to navigate
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
