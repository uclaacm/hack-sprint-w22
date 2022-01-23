//
//  RestartImageView.swift
//  session3-complete-demo
//
//  Created by Eugene Lo on 1/22/22.
//

import SwiftUI

struct RestartImageView: View {
  var body: some View {
    Image(systemName: "arrow.counterclockwise")
      .frame(width: 40, height: 40)
      .padding()
      .foregroundColor(Color("TextColor"))
      .font(.title)
      .background(Circle().fill(Color.white))
      .shadow(color: Color.gray, radius: 2, x: 2, y: 2)
      .overlay(
        Circle()
          .strokeBorder(Color("TamColor"), lineWidth: 3)
      )
  }
}

struct RestartImageView_Previews: PreviewProvider {
  static var previews: some View {
    RestartImageView()
  }
}
