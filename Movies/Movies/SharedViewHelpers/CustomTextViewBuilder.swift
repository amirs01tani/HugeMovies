//
//  CustomTextViewBuilder.swift
//  Movies
//
//  Created by Amir on 3/27/24.
//

import SwiftUI

struct CustomTitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .bold()
            .padding(4)
            .background(content: { RoundedRectangle(cornerRadius: 6).strokeBorder(.separator)
                    .fill(.ultraThinMaterial)
            })
    }
}

extension Text {
    func customText() -> some View {
        self
        .modifier(CustomTitleModifier())
    }
}
