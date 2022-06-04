//
//  PrettyDevider.swift
//  Moonshot
//
//  Created by Roman Zherebko on 04.06.2022.
//

import SwiftUI

struct PrettyDevider: View {
    var body: some View {
        Rectangle()
            .frame(height: 2)
            .foregroundColor(.lightBackground)
            .padding(.vertical)
    }
}

struct PrettyDevider_Previews: PreviewProvider {
    static var previews: some View {
        PrettyDevider()
    }
}
