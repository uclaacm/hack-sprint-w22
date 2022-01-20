//
//  ContentView.swift
//  session3-complete-demo
//
//  Created by Eugene Lo on 1/18/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Color("BackgroundColor")
                .ignoresSafeArea()
                .overlay(
                    VStack{
                        
                        HStack{
                            Image(systemName: "arrow.counterclockwise")
                                .frame(width: 20, height: 20)
                                .padding()
                                .background(Circle().fill(Color.white))
                                .shadow(color: Color.gray, radius: 2, x: 2, y: 2)
                                .overlay(
                                    Circle()
                                        .strokeBorder(Color("TamColor"), lineWidth: 3)
                                        .frame(width: 55, height: 55)
                                )

                            Spacer()
                        }
                        .padding(.horizontal)
                        
                        Spacer()
                        
                        Text("KEEP THE TAMAGOTCHI ALIVE!")
                            .tracking(2)
                            .font(.headline)
                            .lineSpacing(22)
                            .padding()
                        
                        Image("HappyTam")
                        
                        Text("Health")
                            .padding([.top, .leading, .trailing])
                        
                        ProgressView(value: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/)
                            .padding([.leading, .trailing], 50.0)
                            .padding(.bottom)
                            .accentColor(Color("TamColor"))
                        
                        Button{
                            //action
                        }label: {
                            Text("FEED")
                                .font(.title3)
                                .bold()
                                .tracking(2)
                                .foregroundColor(Color.white)
                        }
                        .padding()
                        .background(Color("TamColor"))
                        .cornerRadius(15.0)
                        
                        Spacer()
                    }
                )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
