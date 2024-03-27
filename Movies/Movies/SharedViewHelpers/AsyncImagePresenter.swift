//
//  AsyncImagePresenter.swift
//  Movies
//
//  Created by Amir on 3/27/24.
//

import SwiftUI

func imageView(imageURL: String, blurRadius: CGFloat = 4.0, height: CGFloat) -> some View {
    // we can use cache mechanism to enhance the network performance and reduce the network calls
    AsyncImage(url: URL(string: imageURL)) { image in
        image.resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: .infinity, height: height)
            .blur(radius: blurRadius)
    } placeholder: {
        ProgressView()
    }
    .cornerRadius(15)
    .padding(.horizontal, -20)
}
