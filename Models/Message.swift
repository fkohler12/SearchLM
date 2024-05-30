//
//  Message.swift
//  FinalProject
//
//  Created by Nicholas Wilson (student LM) on 3/15/24.
//

import Foundation
import FirebaseAuth
struct Message: Decodable, Identifiable {
    let id = UUID()
    let userUid: String
    let text: String
    let createdAt: Date
    func isFromCurrentUser() -> Bool {
        guard let currUser = Auth.auth().currentUser else{
            return false
        }
        if currUser.uid == userUid {
            return true
        }
        else{return false}
    }
}
