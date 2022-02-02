//
//  ProfileIconView.swift
//  Alvin
//
//  Created by Nareh Agazaryan on 1/30/22.
//

import SwiftUI

struct ProfileIconView: View {
    var body: some View {
        Image(systemName: "book")
              .frame(width: 20, height: 20)
              .padding()
              .foregroundColor(Color(.black))
              .font(.title)
              .background(Circle().fill(Color.white))
              .shadow(color: Color.gray, radius: 2, x: 2, y: 2)
              .overlay(
                Circle()
                    .strokeBorder(Color(.black), lineWidth: 3)
              )
    }
}

struct ProfileIconView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileIconView()
    }
}
