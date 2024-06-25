//
//  HomeView.swift
//  UberClone
//
//  Created by James McDougall on 6/24/24.
//

import SwiftUI

struct HomeView: View {
    @State private var showLocationSearchView = false
    
    var body: some View {
        ZStack(alignment: .top) {
            UberMapViewRepresentable()
                .ignoresSafeArea()
            
            if showLocationSearchView {
                LocationSearchView(showLocationSearchView: $showLocationSearchView)
            } else {
                LocationSearchActivationSearchView()
                    .padding(.top, 72 )
                    .onTapGesture {
                        withAnimation(.spring) {
                            showLocationSearchView.toggle()
                        }
                    }
            }
            
            MapViewActionView(showLocationSearchView: $showLocationSearchView)
                .padding(.leading)
                .padding(.top, 4)
        }
    }
}

#Preview {
    HomeView()
}
