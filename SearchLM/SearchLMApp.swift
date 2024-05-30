//
//  FinalProjectApp.swift
//  FinalProject
//
//  Created by Youssef Niazy (student LM) on 3/8/24.
//

import SwiftUI
import FirebaseCore
import Firebase

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}

@main
struct SearchLM: App {
    // register app delegate for Firebase setup
    @StateObject var user: User = User()
//    @StateObject var chemistryRooms: ChemRooms = ChemRooms()
//    @StateObject var firstFloorRooms: FirstFloorRooms = FirstFloorRooms()
//    @StateObject var secondFloorRooms: SecondFloorRooms = SecondFloorRooms()
//    @StateObject var thirdFloorRooms: ThirdFloorRooms = ThirdFloorRooms()
//    @StateObject var groundFloorRooms: GroundFloorRooms = GroundFloorRooms()


    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                ZStack {
                    ContentView()
                        .environmentObject(user)
//                        .environmentObject(chemistryRooms)
//                        .environmentObject(firstFloorRooms)
//                        .environmentObject(secondFloorRooms)
//                        .environmentObject(thirdFloorRooms)
//                        .environmentObject(groundFloorRooms)
                }
            }
        }
    }
}
