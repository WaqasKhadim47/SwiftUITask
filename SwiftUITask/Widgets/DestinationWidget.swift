//
//  DestinationWidget.swift
//  SwiftUITask
//
//  Created by Waqas Khadim on 23/04/2024.
//

import Foundation
import SwiftUI

struct DestinationWidget: View {
    var title: String
    var subTitle: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.system(size: 12))
            Text(subTitle)
                .fontWeight(.bold)
        }
        .frame(minWidth: 0, maxWidth: .infinity,  alignment: .topLeading)
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(.gray, lineWidth: 0.4)
        )
    }
}
