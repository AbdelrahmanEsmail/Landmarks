//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Abdelrahman Esmail on 08/10/2023.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var showFavoriteOnly = false
    
    var filteredLandmarks:[Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoriteOnly || landmark.isFavorite)
        }
    }
    
    
    var body: some View {
        NavigationSplitView {
            List{
                Toggle(isOn: $showFavoriteOnly, label: {
                    Text("Favorites only")
                })
                
                ForEach (filteredLandmarks) { landmark in
                    NavigationLink{
                        LandmarkDetail(landmark: landmark)
                    }label: {
                        LandmarkRow(landmark: landmark)
                }
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
