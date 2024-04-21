//
//  HomeView.swift
//  ListDoctors
//
//  Created by Amina TomasMart on 18.04.2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.fon.ignoresSafeArea(edges: .top)
                ScrollView {
                    HStack {
                        NavigationLink {
                            PediatriciansView()
                        } label: {
                            Text("Педиатры")
                                .bold()
                                .padding()
                                .foregroundStyle(.color1)
                                .background(.white)
                                .cornerRadius(8)
                            Spacer()
                        }
                    }
                    .padding()
                }
            }
            .navigationBarTitle("Список специалистов", displayMode: .inline)
        }
    }
}

#Preview {
    HomeView()
}
