//
//  AccountView.swift
//  FinalProject
//
//  Created by Nicholas Wilson (student LM) on 3/14/24.
//

import SwiftUI
import FirebaseStorage
import FirebaseAuth
import FirebaseDatabase
struct AccountView: View {
    //vars
    @EnvironmentObject var user: User
    
    var body: some View {
        //backgrounn n stuff
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
                //setting username
                TextField("New Username", text: $user.name)
                          .padding()
                          .background(Color.white.opacity(0.6))
                          .cornerRadius(10)
                          .onSubmit {
                              guard let uid = Auth.auth().currentUser?.uid else {return}
                              Database.database().reference().child("users/\(uid)/name").setValue(user.name)
                          }
                          .task{
                              print(user.name)
                          }
                //signout button
                Button {
                   let success = try? Auth.auth().signOut()
                    if let _ = success {
                        self.user.loggedIn = false
                    }
                    
                } label: {
                    Text("Sign out")
                        .foregroundColor(.black)
                        .font(Constants.smallFont)
                        .padding(.horizontal, 100)
                        .padding(.vertical, 10)
                        .background(Color.white)
                        .cornerRadius(20)
                    
                }
Spacer()
            }
        }
    }
}
struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
            .environmentObject(User())
    }
}
