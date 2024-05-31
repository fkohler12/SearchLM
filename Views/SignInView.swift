//
//  SignInView.swift
//  FinalProject
//
//  Created by Youssef Niazy (student LM) on 3/13/24.
//

import SwiftUI
import Firebase
import FirebaseAuth

struct SignInView: View {
        @EnvironmentObject var user: User
        @State private var showingAlert = false
        @State private var errorMessage = ""
    
        var body: some View {
            ZStack{
                Rectangle()
                    .foregroundColor(.maroon)
                    .edgesIgnoringSafeArea((.all))
                VStack{
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                    Spacer()
                    TextField("email address", text: $user.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    SecureField("password", text: $user.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    Spacer()
                    Button {
                        if(user.email.contains("students.lmsd.org")){
                            Auth.auth().createUser(withEmail: user.email, password: user.password){
                                user, error in
                                if let _ = user {
                                    self.user.loggedIn = true
                                    print("successfully signed up!!!")
                                }
                                else if let e = error{
                                    print(e.localizedDescription)
                                    self.errorMessage = e.localizedDescription
                                    self.showingAlert = true
                                }
                            }
                        }
                        else{
                            self.errorMessage = "Only students can use this app."
                            self.showingAlert = true
                        }
                    } label: {
                        Text("Sign Up")
                            .font(Constants.smallFont)
                            .padding(.horizontal, 100)
                            .padding(.vertical, 10)
                            .background(Color.white)
                            .cornerRadius(20)
                    }
                    Button {
                        Auth.auth().signIn(withEmail: user.email, password: user.password){ user, error in
                            if let _ = user {
                                self.user.loggedIn = true
                                print("succcessfully signed up!!!")
                            }
                            else if let e = error{
                                print(e.localizedDescription)
                                self.errorMessage = e.localizedDescription
                                self.showingAlert = true
                            }
    
                        }        } label: {
                            Text(" Log In ")
                                .font(Constants.smallFont)
                                .padding(.horizontal, 100)
                                .padding(.vertical, 10)
                                .background(Color.white)
                                .cornerRadius(20)
                        }
                        .alert(isPresented: $showingAlert) {  // Show alert when showingAlert is true
                            Alert(title: Text("Signup Failed"), message: Text(errorMessage), dismissButton: .default(Text("OK")))
                        }.padding()
                }
            }
        }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
            .environmentObject(User())
    }
}
