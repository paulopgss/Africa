//
//  ExternalWeblinkView.swift
//  Africa
//
//  Created by Paulo Sousa on 02/12/23.
//

import SwiftUI

struct ExternalWeblinkView: View {
    // MARK: - PROPERTIES
    let animal: Animal
    
    // MARK: - BODY
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    
                    Link(animal.name, destination: URL(string: animal.link) ?? URL(string: "https://wikipedia.org")!)
                }
                .foregroundColor(.accentColor)
            }
        }
    }
}

struct ExternalWeblinkView_Preview: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        NavigationView {
            ExternalWeblinkView(animal: animals[0])
        }
        .previewDevice("iPhone 15 Pro")
    }
}
