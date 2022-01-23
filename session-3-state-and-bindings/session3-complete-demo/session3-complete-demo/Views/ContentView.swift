//
//  ContentView.swift
//  session3-complete-demo
//
//  Created by Eugene Lo on 1/18/22.
//

import SwiftUI

struct ContentView: View {
  
  @State private var game = Game()
  @State private var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
  
  let dyingRate = 20.0
  let feedRate = 5.0
  
  var body: some View {
    ZStack {
      Color("BackgroundColor")
        .ignoresSafeArea()
      VStack(spacing: 20) {
        HStack {
          Button(action: {
            game.restart()
            self.timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
          }) {
            RestartImageView()
          }
          Spacer()
        }
        .padding(.horizontal)
        
        Text("Keep the tamagotchi alive!".uppercased())
          .tracking(2)
          .font(.headline)
          .padding()
        
        VStack(alignment: .center, spacing: 30) {
          TamImageView(health: game.health)
          StatsView(game: $game, timer: timer, dyingRate: dyingRate)
          FeedButton(game: $game, feedRate: feedRate)
        }
        Spacer()
      }
    }
  }
  
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
