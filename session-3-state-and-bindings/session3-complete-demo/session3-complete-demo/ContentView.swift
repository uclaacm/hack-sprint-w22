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
  
  let dyingRate = 25.0
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
            Image(systemName: "arrow.counterclockwise")
              .frame(width: 40, height: 40)
              .padding()
              .foregroundColor(Color("TextColor"))
              .background(Circle().fill(Color.white))
              .shadow(color: Color.gray, radius: 2, x: 2, y: 2)
              .overlay(
                Circle()
                  .strokeBorder(Color("TamColor"), lineWidth: 3)
              )
          }
          Spacer()
        }
        .padding(.horizontal)
        
        Text("Keep the tamagotchi alive!".uppercased())
          .kerning(2)
          .font(.headline)
          .padding()
        
        VStack(spacing: 30) {
          TamImageView(health: $game.health)
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
                game.health -= min(dyingRate, game.health)
              }
              if game.health == 0 {
                game.isRunning = false
              }
            }
          Button(action: {
            game.health += min(feedRate, 100.0 - game.health)
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
