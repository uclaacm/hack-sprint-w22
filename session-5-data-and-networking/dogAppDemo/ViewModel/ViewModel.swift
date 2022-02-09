//
//  ViewModel.swift
//  dogAppDemo
//
//  Created by Thomas McGall on 2/6/22.
//

import Foundation
import Firebase

class ViewModel: ObservableObject{
    @Published var list = [DogPic]()
    
    func getData(){
        let db = Firestore.firestore()
        
        db.collection("dogPictures").getDocuments { snapshot, error in
            if error == nil {
                if let snapshot = snapshot{
                    
                    DispatchQueue.main.async {
                        self.list = snapshot.documents.map{ d in
                            return DogPic(id: d.documentID, imgUrl: d["imgUrl"]as? String ?? "h")
                        }
                    }
                    
                    
                }
            }
            else{
                //handle
            }
        }
    }
    
    func addData(imgUrl: String){
        let db = Firestore.firestore()
        db.collection("dogPictures").addDocument(data: ["imgUrl":imgUrl]) { error in
            if error == nil{
                self.getData()
            }
            else{
                //handle error
            }
        }
    }
    
    func deleteData(dogPicToDelete: DogPic){
        let db = Firestore.firestore()
        db.collection("dogPictures").document(dogPicToDelete.id).delete { error in
            if error == nil{
                
                DispatchQueue.main.async {
                    self.list.removeAll{dogPic in
                        return dogPic.id == dogPicToDelete.id
                    }
                }
                
            }
            else{
                //handle error
            }
        }
    }
    
    
}
