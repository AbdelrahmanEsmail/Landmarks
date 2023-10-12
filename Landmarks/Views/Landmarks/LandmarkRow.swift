//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Abdelrahman Esmail on 08/10/2023.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    var body: some View {
        HStack{
            landmark.image
                .resizable()
                .frame(width: 50,height: 50)
                .cornerRadius(5)
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .bold()
                Text(landmark.park)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
        }
        .padding(.vertical, 4)
    }
}

#Preview("Turtle Rock") {
    let landmarks = ModelData().landmarks
    return Group{
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
    .previewLayout(.fixed(width: 300, height: 70))
}
