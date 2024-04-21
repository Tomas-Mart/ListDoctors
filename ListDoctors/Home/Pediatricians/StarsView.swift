//
//  StarsView.swift
//  ListDoctors
//
//  Created by Amina TomasMart on 21.04.2024.
//

import SwiftUI

struct StarsView: View {
    var rating: CGFloat
    var maxRating: Int
    
    var body: some View {
        let stars = HStack(spacing: 0) {
            ForEach(0..<maxRating, id: \.self) { _ in
                Image(.star1)
            }
        }
        
        stars.overlay(
            GeometryReader { g in
                let width = rating / CGFloat(maxRating) * g.size.width
                ZStack(alignment: .leading) {
                    Rectangle()
                        .frame(width: width)
                        .foregroundColor(.color1)
                }
            }
                .mask(stars)
        )
        .foregroundColor(.gray)
    }
}

#Preview {
    StarsView(rating: 3, maxRating: 5)
}
