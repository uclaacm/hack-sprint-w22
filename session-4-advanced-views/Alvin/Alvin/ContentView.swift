//
//  ContentView.swift
//  Alvin
//
//  Created by James Wu on 1/23/22.
//

import SwiftUI

struct ContentView: View {
    
    //List containing chipmunks
    var chipmunkList: [Chipmunk] = [Chipmunk(name: "Alvin", description: ""), Chipmunk(name: "Simon", description: ""), Chipmunk(name: "Theodore", description:"")]
    
    var body: some View {
                
        //Create Navigation View
        NavigationView {
                        
            List(chipmunkList){Chipmunk in
                HStack{
                    //Image of chipmunk w/ modifiers
                    Image(Chipmunk.name)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 70.0)
                    
                    Spacer()
                    
                    //Text displayed
                    Text(Chipmunk.name).font(.headline)
                
                    Spacer()
                    
                } .padding() // for some chonk
            }
            //Be sure this is inside the NavigationView bracket!
            .navigationBarTitle("Chipmunk gang gang")
        }
    }
}

struct Chipmunk: Identifiable {
    let id = UUID()
    let name: String
    let description: String
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



