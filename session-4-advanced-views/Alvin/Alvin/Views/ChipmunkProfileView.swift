//
//  ChipmunkProfileView.swift
//  Alvin
//
//  Created by Nareh Agazaryan on 1/30/22.
//

import SwiftUI

struct ChipmunkProfileView: View {
    @Binding var chosenChipmunk: Chipmunk
    
    var body: some View {
        ScrollView {
            Text(chosenChipmunk.name)
                .font(.system(size: 50))
                .fontWeight(.bold)
            Image(chosenChipmunk.name)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 70.0)
            Text(chosenChipmunk.description)
                .padding()
        }
    }
}

struct ChipmunkProfileView_Previews: PreviewProvider {
    static var previews: some View {
        let previewChipmunk: Chipmunk = chipmunkList[1]
        ChipmunkProfileView(chosenChipmunk: .constant(previewChipmunk))
    }
}
