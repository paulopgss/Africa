//
//  CreditsView.swift
//  Africa
//
//  Created by Paulo Sousa on 03/12/23.
//

import SwiftUI


struct CreditsView: View {
  var body: some View {
    VStack {
      Image("compass")
        .resizable()
        .scaledToFit()
        .frame(width: 128, height: 128)
      
      Text("""
  Copyright © Robert Petras
  All right reserved
  Better Apps ♡ Less Code
  """)
        .font(.footnote)
        .multilineTextAlignment(.center)
    } //: VSTACK
    .padding()
    .opacity(0.4)
  }
}

// MARK: - PREVIEW
#Preview {
    CreditsView()
}
