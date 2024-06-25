//
//  LocationSearchActivationSearchView.swift
//  UberClone
//
//  Created by James McDougall on 6/25/24.
//

import SwiftUI

struct LocationSearchActivationSearchView: View {
    var body: some View {
        HStack {
            Rectangle()
                .fill(Color.black)
                .frame(width: 8, height: 8)
                .padding(.horizontal)
            
            Text("Where to?")
                .foregroundStyle(Color(.darkGray))
            
            Spacer()
        }
        .frame(width: UIScreen.screenWidth - 64, height: 50)
        .background(
            Rectangle()
                .fill(Color.white)
                .shadow(color: .black, radius: 6)
        )
    }
}

#Preview {
    LocationSearchActivationSearchView()
}
