// StartupView.swift
// FinalProject
//
// Created by Nicholas Wilson (student LM) on 3/14/24.
//

import SwiftUI

struct StartupView: View {
  @EnvironmentObject var user: User

  var body: some View {
    ZStack {
      Rectangle()
        .foregroundColor(.maroon)
        .edgesIgnoringSafeArea(.all)
      VStack {
        Spacer()
        Text("Hello, \(user.name)!")
          .font(.title)
          .foregroundColor(.white)
        Spacer()
        TabView {
          MapView()
            .tabItem {
              Label("Rooms", systemImage: "house") // School icon
            }
            
            SearchView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
        ChatView()
                .tabItem {
                    Label("Chat", systemImage: "message.fill")
                }
          AccountView()
            .tabItem {
              Label("Settings", systemImage: "gear") // Settings icon
            }
        }
      }
    }
  }
}

struct StartupView_Previews: PreviewProvider {
  static var previews: some View {
    StartupView()
      .environmentObject(User())
  }
}
