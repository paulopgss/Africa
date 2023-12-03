//
//  CenterModifier.swift
//  Africa
//
//  Created by Paulo Sousa on 03/12/23.
//

import SwiftUI

struct CenterModifier: ViewModifier {
  func body(content: Content) -> some View {
    HStack {
      Spacer()
      content
      Spacer()
    }
  }
}
