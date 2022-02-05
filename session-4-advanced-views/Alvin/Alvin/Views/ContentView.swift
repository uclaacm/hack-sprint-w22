//
//  ContentView.swift
//  Alvin
//
//  Created by James Wu on 1/23/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(chipmunkList) { Chipmunk in
                HStack{
                    NavigationLink(
                        destination: ChipmunkProfileView(chosenChipmunk: .constant(Chipmunk)),
                        label: {
                            Image(Chipmunk.name)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 55.0)
                            Spacer()
                            Text(Chipmunk.name)
                                .font(.system(size: 15))
                            Spacer()
                    })
                } .padding()
            }
            .navigationBarTitle("The Chipmunks")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
