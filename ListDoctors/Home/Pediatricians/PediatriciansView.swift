//
//  PediatriciansView.swift
//  ListDoctors
//
//  Created by Amina TomasMart on 18.04.2024.
//

import SwiftUI

struct PediatriciansView: View {
    @Environment(\.dismiss) var dismiss
    @StateObject var model = DoctorsModel()
    @State var segmentIndex = 0
    @State var text = ""
    var sorting = ["По цене", "По стажу", "По рейтингу"]
    init() {
        UISegmentedControl.appearance().backgroundColor = .white
        UISegmentedControl.appearance().selectedSegmentTintColor = .color1
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor : UIColor.white], for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor : UIColor.gray], for: .normal)
    }
    var body: some View {
        ZStack {
            Color.fon.ignoresSafeArea(edges: .top)
            VStack(spacing: 20) {
                
                VStack(spacing: 20) {
                    SearchView(text: $text)
                    Picker(selection: $segmentIndex, label: Text("")) {
                        ForEach(0..<sorting.count) {
                            Text(self.sorting[$0]).tag($0)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .cornerRadius(8)
                }
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVStack(spacing: 20) {
                        ForEach(model.data, id: \.id) { users in
                            CardDoctor(users: users)
                        }
                    }
                }
            }
            .padding()
        }
        .navigationBarTitle("Педиатры", displayMode: .inline)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: Button(action: {
            dismiss()
        }, label: {
            Image(.arrow)
        }))
    }
}

#Preview {
    PediatriciansView()
}
