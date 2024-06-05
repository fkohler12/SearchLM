// StartupView.swift
// FinalProject
//
// Created by Nicholas Wilson (student LM) on 3/14/24.
//

import SwiftUI

struct StartupView: View {
    //vars
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
          //tabview, made to navigate main views 
        TabView {
          MapView()
            .tabItem {
              Label("Rooms", systemImage: "house") // School icon
            }
            
            SearchView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
            SocialView()
                .tabItem {
                    Label("Social", systemImage: "person.3.sequence.fill")
                }
            
            WeatherView()
                .tabItem {
                    Label("Weather", systemImage: "sun.min")
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
