//
//  CoordinatorView.swift
//  Movies
//
//  Created by Amir on 3/27/24.
//

import SwiftUI

struct CoordinatorView: View {
    @State var coordinator = AppCoordinator()
    var body: some View {
        NavigationStack(path: $coordinator.path) {
            coordinator.build(page: .root)
                .navigationDestination(for: Page.self) { page in
                    coordinator.build(page: page)
            }
        }
    }
}


#Preview {
    CoordinatorView()
}
