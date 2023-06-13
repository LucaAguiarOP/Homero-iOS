//
//  Test.swift
//  Homero(iOS)
//
//  Created by userext on 12/06/23.
//

import SwiftUI

struct Test: View {
    var body: some View {
        Rectangle()
            .foregroundStyle(.linearGradient(colors: [Color("Bluedark"), .blue],startPoint: .topTrailing, endPoint: .bottomTrailing))
//                        .fill(Color("Bluedark"))
            .frame(width:400, height: 300)
            .padding(.top,80)
            .overlay(
                Text("Sistema Homero")
                    .foregroundColor(.white)
                    .padding(.bottom,170)
                        )
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}
