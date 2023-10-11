//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Abdelrahman Esmail on 11/10/2023.
//

import SwiftUI

struct CategoryHome: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView {
            List{
                modelData.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                ForEach(modelData.categories.keys.sorted(), id:\.self){key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
                .navigationTitle("Featured")
        }
    }
}

#Preview {
    CategoryHome()
        .environmentObject(ModelData())
}
