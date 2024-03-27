//
//  CustomTextViewBuilder.swift
//  Movies
//
//  Created by Amir on 3/27/24.
//

import SwiftUI

func makeTextWithBorderedBackground(title: String) -> some View {
    Text(title)
        .bold()
        .padding(4)
        .background(content: { RoundedRectangle(cornerRadius: 6).strokeBorder(.separator)
                .fill(.ultraThinMaterial)
        })
    
}
