//
//  DetailsDoc.swift
//  ListDoctors
//
//  Created by Amina TomasMart on 20.04.2024.
//

import SwiftUI

struct DetailsDoc: View {
    @State var image:  String
    @State var text: String
    var body: some View {
        HStack {
            Image(image)
            Text(text)
                .frame(alignment: .leading)
                .lineLimit(nil)
        }
    }
}
