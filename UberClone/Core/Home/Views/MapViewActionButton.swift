//
//  MapViewActionButton.swift
//  UberClone
//
//  Created by James McDougall on 6/25/24.
//

import SwiftUI

struct MapViewActionButton: View {
    @Binding var mapState: MapViewState
    
    var body: some View {
        Button {
            withAnimation(.spring) {
                actionForMapState(mapState)
            }
        } label: {
            Image(systemName: imagenameForState(mapState))
                .font(.title2)
                .foregroundStyle(.black)
                .padding()
                .background(.white)
                .clipShape(Circle())
                .shadow(color: .black, radius: 6)
        }
        .frame(maxWidth: .infinity, alignment: .leading)

    }
    
    func actionForMapState( _ state: MapViewState) {
        switch state {
        case .noInput:
            print("No Input")
        case .searchingForLocation, .locationSelected:
            mapState = .noInput
        }
    }
    
    func imagenameForState(_ state: MapViewState) -> String {
        switch state {
        case .noInput:
            return "line.3.horizontal"
        case .searchingForLocation, .locationSelected:
            return "arrow.left"
        }
    }
}

#Preview {
    MapViewActionButton(mapState: .constant(.noInput))
}
