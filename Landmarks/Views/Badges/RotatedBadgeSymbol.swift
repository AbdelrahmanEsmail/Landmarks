//
//  RotatedBadgeSymbol.swift
//  Landmarks
//
//  Created by Abdelrahman Esmail on 11/10/2023.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    let angle: Angle
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle,anchor: .bottom)
    }
}

#Preview {
    RotatedBadgeSymbol(angle: Angle(degrees: 5))
}
