//
//  TamImageView.swift
//  session3-complete-demo
//
//  Created by Eugene Lo on 1/22/22.
//

import SwiftUI

struct TamImageView: View {
  @Binding var health: Double
  var imageToDisplay: String {
    if health >= 50.0 {
      return "HappyTam"
    } else if health <= 0.0 {
      return "DeadTam"
    } else {
      return "SadTam"
    }
  }
  
  var body: some View {
    Image(imageToDisplay)
  }
}

struct TamImageView_Previews: PreviewProvider {
  static var previews: some View {
    TamImageView(health: .constant(50.0))
  }
}
