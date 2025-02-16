//
//  HomeView.swift
//  UberClone
//
//  Created by James McDougall on 6/24/24.
//

import SwiftUI

struct HomeView: View {
    @State private var mapState = MapViewState.noInput
    
    var body: some View {
        ZStack(alignment: .top) {
            UberMapViewRepresentable(mapState: $mapState)
                .ignoresSafeArea()
            
            if mapState == .searchingForLocation {
                LocationSearchView(mapState: $mapState)
            } else if mapState == .noInput{
                LocationSearchActivationSearchView()
                    .padding(.top, 72 )
                    .onTapGesture {
                        withAnimation(.spring) {
                            mapState = .searchingForLocation
                        }
                    }
            }
            
            MapViewActionButton(mapState: $mapState)
                .padding(.leading)
                .padding(.top, 4)
        }
    }
}

#Preview {
    HomeView()
}
