//
//  Game.swift
//  session3-complete-demo
//
//  Created by Eugene Lo on 1/22/22.
//

import Foundation

struct Game {
  var health = 50.0
  var score = 0
  var isRunning = true
  
  mutating func restart() {
    health = 50.0
    score = 0
    isRunning = true
  }
}
