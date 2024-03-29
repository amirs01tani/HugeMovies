//
//  AsyncImagePresenter.swift
//  Movies
//
//  Created by Amir on 3/27/24.
//

import SwiftUI

func makeImageView(imageURL: String, blurRadius: CGFloat = 4.0, width: CGFloat, height: CGFloat) -> some View {
    // we can use cache mechanism to enhance the network performance and reduce the network calls
    AsyncImage(url: URL(string: imageURL)) { phase in
        if let image = phase.image {
            // Display the loaded image
            image
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: width, height: height)
                .blur(radius: blurRadius)
        } else if phase.error != nil {
            // Display a placeholder when loading failed
            ZStack {
                Color.random().opacity(0.3)
                Image(systemName: "movieclapper")
                    .imageScale(.large)
            }
        } else {
            // Display a placeholder while loading
            ProgressView()
        }
    }
    .cornerRadius(15)
}
