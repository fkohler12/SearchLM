import Foundation
import SwiftUI
import Firebase
import FirebaseStorage
import FirebaseAuth
import FirebaseDatabase

class User: ObservableObject{
    @Published var email: String
    @Published var password: String
    @Published var name: String = ""
    @Published var image: UIImage = UIImage(named: "user") ?? UIImage()
    @Published var loggedIn: Bool = false
    @Published var uid: String = ""
    
    
    init(email: String = "", password: String = ""){
        self.email = email
        self.password = password
        guard let uid = Auth.auth().currentUser?.uid else{return}
        self.uid = uid
        self.loggedIn = false
        Task{
            guard let name = try? await Database.database().reference().child("users/\(uid)/name").getData() else {return}
            self.name = name.value as? String ?? ""
//            guard let i = try? await Database.database().reference().child("users/\(uid)/imagepath").getData() else {return}
//            let url = i.value as? String ?? ""
//            Storage.storage().reference(forURL: url).getData(maxSize: 1 * 2048 * 2048) { data, error in
//                guard let imageData = data else {return}
//                guard let image = UIImage(data: imageData) else {return}
//                self.image = image
//
            }
            
//            self.image = UIImage(named: "logo") ?? UIImage()
        }
        
    }

