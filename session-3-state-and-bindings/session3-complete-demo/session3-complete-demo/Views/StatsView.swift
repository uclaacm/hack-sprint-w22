//
//  StatsView.swift
//  session3-complete-demo
//
//  Created by Eugene Lo on 1/22/22.
//

import SwiftUI
import Combine

struct StatsView: View {
  @Binding var game: Game
  var timer: Publishers.Autoconnect<Timer.TimerPublisher>
  var dyingRate: Double
  
  var body: some View {
    VStack {
      VStack(alignment: .leading) {
        Text("Score: \(game.score)")
          .bold()
          .font(.title2)
          .onReceive(timer) { _ in
            if game.isRunning {
              game.score += 100
            }
          }
        Text("Health: \(Int(game.health))")
          .bold()
          .font(.title2)
      }
      ProgressView(value: game.health / 100.0)
        .padding([.leading, .trailing], 50.0)
        .accentColor(Color("TamColor"))
        .onReceive(timer) { _ in
          if game.isRunning {
            game.health = max(game.health - dyingRate, 0.0)
          }
          if game.health == 0.0 {
            game.isRunning = false
          }
        }
    }
  }
}

struct StatsView_Previews: PreviewProvider {
  static var previews: some View {
    StatsView(game: .constant(Game()), timer: Timer.publish(every: 1, on: .main, in: .common).autoconnect(), dyingRate: 5.0)
  }
}
