//
//  ContentView.swift
//  PCPortal_Java
//
//  Created by Angelos Staboulis on 25/4/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView{
          
            JamesGossling().tabItem {
                Label("James Gossling", image:"james")
            }
            JavaBooks().tabItem {
                Label("Java Books", systemImage:"book")
            }
            History_Java().tabItem {
                Label("History Java", image: "history")
                
            }
            GameJava().tabItem {
                Label("Game Java", image:"game")
            }
            FindUs().tabItem {
                Label("Find Us", systemImage: "map")
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
