//
//  TamImageView.swift
//  session3-complete-demo
//
//  Created by Eugene Lo on 1/22/22.
//

import SwiftUI

struct TamImageView: View {
  var health: Double
  
  var body: some View {
    Image(chooseImage())
  }
  
  func chooseImage() -> String {
    if health >= 50.0 {
      return "HappyTam"
    } else if health <= 0.0 {
      return "DeadTam"
    } else {
      return "SadTam"
    }
  }
}

struct TamImageView_Previews: PreviewProvider {
  static var previews: some View {
    TamImageView(health: 50.0)
  }
}
