//
//  ContentView.swift
//  ListDoctors
//
//  Created by Amina TomasMart on 17.04.2024.
//

import SwiftUI

struct MainTabView: View {
    @State var tabSelected = 1
    var body: some View {
        TabView(selection: $tabSelected) {
            HomeView()
                .tabItem {
                    Label("Главная", image: .house)
                }
                .tag(1)
            
            AppointmentsView()
                .tabItem {
                    Image("Calendar")
                    Text("Приемы")
                }
                .tag(2)
            
            СhatView()
                .badge(10)
                .tabItem {
                    Image(systemName: "message")
                    Text("Чат")
                }
                .tag(3)
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Профиль")
                }
                .tag(4)
        }
        .font(.headline)
        .accentColor(.color1)
    }
}

#Preview {
    MainTabView()
}
