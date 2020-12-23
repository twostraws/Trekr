//
//  TrekrApp.swift
//  Trekr
//
//  Created by Paul Hudson on 22/12/2020.
//

import SwiftUI

@main
struct TrekrApp: App {
    @StateObject var locations = Locations()

    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView {
                    ContentView(location: locations.primary)
                }
                .tabItem {
                    Image(systemName: "airplane.circle.fill")
                    Text("Discover")
                }

                NavigationView {
                    WorldView()
                }
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Locations")
                }

                NavigationView {
                    TipsView()
                }
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Tips")
                }
            }
            .environmentObject(locations)
        }
    }
}
