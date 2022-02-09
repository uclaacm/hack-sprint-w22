//
//  ContentView.swift
//  dog
//
//  Created by Eric Yang on 2/4/22.
//

import SwiftUI

struct ContentView: View {
  @ObservedObject var dogPicVM = DogPicViewModel()
  
  var body: some View {
    VStack{
      Text("Photo Album")
        .font(.headline)
        .padding()
      Button("Add Photo", action: {self.dogPicVM.getDog()})
        .padding()
      List(self.dogPicVM.dogImageList, id: \.self){dog in
        AsyncImage(url: URL(string: dog)){ image in
          image
            .resizable()
            .scaledToFill()
            .frame(maxWidth: .infinity)
            .clipped()
        } placeholder: {
          ProgressView()
        }
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
