//
//  dogAppDemoApp.swift
//  dogAppDemo
//
//  Created by Thomas McGall on 2/6/22.
//

import SwiftUI
import Firebase

@main
struct dogAppDemoApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
