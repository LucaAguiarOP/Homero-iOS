//
//  HomeView.swift
//  Homero(iOS)
//
//  Created by userext on 07/06/23.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        VStack(spacing: 0){
            HStack{
                Text("Todos os cursos")
                    .foregroundColor(Color("Bluedark"))
                    .padding(.leading)
                    .font(.title)
                Spacer()
            }
            Divider()
                .frame(width: 365,height:4)
                .overlay(Color("Bluedark"))
            Spacer()
                
            
        }
    }
}

//struct MenuViewTab: View {
//    var body: some View {
//        TabView{
//            MenuView()
//                .tabItem
//                    Label("Home",systemImage: ")
//            ContaView()
//                .tabItem
//        }
//    }
//}
struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
