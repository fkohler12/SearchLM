//
//  DatabaseManager.swift
//  FinalProject
//
//  Created by Nicholas Wilson (student LM) on 3/18/24.
//

import FirebaseFirestore
import FirebaseFirestoreSwift

enum FetchMessagesError: Error {
    case snapshotError
}
final class DatabaseManager{
    static let shared = DatabaseManager()
    let messageRef = Firestore.firestore().collection("messages")
    let database = Firestore.firestore()
    func fetchMessages(completion: @escaping (Result<[Message], FetchMessagesError>) -> Void) {
      messageRef.order(by: "createdAt", descending: true).limit(to: 25)
        .addSnapshotListener { snapshot, error in
          guard let snapshot = snapshot, error == nil else {
            completion(.failure(.snapshotError))
            print("Couldnt retrieve")
            return
          }

          let docs = snapshot.documents
          var messages = [Message]()
          for doc in docs {
            let data = doc.data()
            let text = data["text"] as? String ?? "Error"
            let userUid = data["userUid"] as? String ?? "Error"
            let createdAt = data["createdAt"] as? Timestamp ?? Timestamp()
            let msg = Message(userUid: userUid, text: text, createdAt: createdAt.dateValue())
            messages.append(msg)
          }

          completion(.success(messages))
        }
    }
    func sendMessageToDatabase(message: Message, completion: @escaping (Bool) -> Void) {
        let data = [
            "text": message.text ?? "",
            "userUid": message.userUid ?? "",
            "createdAt": Timestamp(date: message.createdAt) ?? ""
        ] as [String : Any]
        let messageRef = Firestore.firestore().collection("messages").addDocument(data: data) { error in
            guard error == nil else{
                completion(false)
                return
            }
            completion(true)
        }

    }
}
