//
//  MainView.swift
//  AppPages
//
//  Created by Claudia De Luca on 13/11/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            
            RecentsView()
                .tabItem {
                    Label("Recents", systemImage: "clock.fill")
                }
            
            SharedView()
                .tabItem {
                    Label("Shared", systemImage: "folder.badge.person.crop.fill")
                }
            
            BrowseView()
                .tabItem {
                    Label("Browse", systemImage: "folder.fill")
                }
        }
    }
}

#Preview {
    MainView()
}
