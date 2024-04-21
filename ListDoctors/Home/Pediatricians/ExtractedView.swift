//
//  ExtractedView.swift
//  ListDoctors
//
//  Created by Amina TomasMart on 21.04.2024.
//

import SwiftUI

struct ExtractedView: View {
    @Binding var text: String
    var body: some View {
        HStack {
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(.search)
            })
            TextField("Поиск", text: $text)
        }
        .padding()
        .background(.white)
        .cornerRadius(8)
    }
}
