//
//  InsetFactView.swift
//  Africa
//
//  Created by Paulo Sousa on 02/12/23.
//

import SwiftUI

struct InsetFactView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    let animal: Animal
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }
    }
}

struct InsetFactView_Preview: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        NavigationView {
            InsetFactView(animal: animals[0])
        }
        .previewDevice("iPhone 15 Pro")
    }
}
