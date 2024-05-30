//
//  chatViewModel.swift
//  FinalProject
//
//  Created by Nicholas Wilson (student LM) on 3/15/24.
//

import SwiftUI
import FirebaseStorage
import FirebaseAuth
import FirebaseDatabase



class ChatViewModel: ObservableObject {
    @Published var messages = [Message]()

    init() {
        fetchMessages()
      }
    func fetchMessages() {
      DatabaseManager.shared.fetchMessages { result in
        switch result {
        case .success(let messages):
          self.messages = messages
        case .failure(let error):
          print("Error fetching messages:", error) // Handle errors gracefully
        }
      }
    }

//      func fetchMessages() {
//        DatabaseManager.shared.fetchMessages { [weak self] result in
//          switch result {
//          case .success(let msgs):
//              print(msgs)
//            self?.messages = msgs // Update the published array
//          case .failure(let error):
//            print(error) // Handle errors gracefully, e.g., display an error message to the user
//          }
//        }
//      }
    func sendMessage(text: String, completion: @escaping (Bool) -> Void){
        guard let user = Auth.auth().currentUser else{
            return
        }
        print(user.uid)
        let msg = Message(userUid: user.uid, text: text, createdAt: Date())
        DatabaseManager.shared.sendMessageToDatabase(message: msg) { success in
            if success{
                self.messages.append(msg)
                completion(true)
            }
            else{
                
            }
        }
        
    }
}
