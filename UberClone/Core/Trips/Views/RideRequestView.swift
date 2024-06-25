//
//  RideRequestView.swift
//  UberClone
//
//  Created by James McDougall on 6/25/24.
//

import SwiftUI

struct RideRequestView: View {
    var body: some View {
        VStack {
            Capsule()
                .foregroundStyle(Color(.systemGray5))
                .frame(width: 48, height: 6)
            
            HStack {
                VStack {
                    Circle()
                        .fill(Color(.systemGray3))
                        .frame(width: 8, height: 8)
                    
                    Rectangle()
                        .fill(Color(.systemGray3))
                        .frame(width: 1, height: 32)
                    
                    Rectangle()
                        .fill(Color(.black))
                        .frame(width: 8, height: 8)
                    
                }
                
                VStack(alignment: .leading, spacing: 24) {
                    HStack {
                        Text("Current Location")
                            .font(.system(size: 16))
                            .fontWeight(.semibold)
                            .foregroundStyle(.gray)
                        
                        Spacer()
                        
                        Text("1:30 PM")
                            .font(.system(size: 14))
                            .fontWeight(.semibold)
                            .foregroundStyle(.gray)
                        
                    }
                    .padding(.bottom, 10)
                    
                    HStack {
                        Text("Starbucks Coffee")
                            .font(.system(size: 16))
                            .fontWeight(.semibold)
                        
                        Spacer()
                        
                        Text("1:45 PM")
                            .font(.system(size: 14))
                            .fontWeight(.semibold)
                            .foregroundStyle(.gray)
                        
                    }
                }
                .padding(.leading, 8)
            }
            .padding()
            
            Divider()
            
            Text("SUGGESTED RIDES")
                .font(.subheadline)
                .fontWeight(.semibold)
                .padding()
                .foregroundStyle(.gray)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            ScrollView(.horizontal) {
                HStack(spacing: 12) {
                    ForEach(0..<3, id: \.self) { ride in
                        VStack(alignment: .leading) {
                            Image(systemName: "uber-x")
                        }
                    }
                }
            }
            
        }
    }
}

#Preview {
    RideRequestView()
}
