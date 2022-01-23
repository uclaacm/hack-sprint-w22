//
//  FeedButton.swift
//  session3-complete-demo
//
//  Created by Eugene Lo on 1/22/22.
//

import SwiftUI

struct FeedButton: View {
  @Binding var game: Game
  let feedRate: Double
  
  var body: some View {
    Button(action: {
      game.health = min(game.health + feedRate, 100.0)
    }) {
      Text("Feed".uppercased())
        .font(.title3)
        .bold()
        .tracking(2)
        .foregroundColor(Color.white)
    }
    .padding()
    .background(Color("TamColor"))
    .cornerRadius(15.0)
    .opacity(game.isRunning ? 1.0 : 0.5)
    .disabled(!game.isRunning)
  }
}

struct FeedButton_Previews: PreviewProvider {
    static var previews: some View {
      FeedButton(game: .constant(Game()), feedRate: 5.0)
    }
}
