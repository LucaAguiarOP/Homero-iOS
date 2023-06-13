//
//  HomeView.swift
//  Homero(iOS)
//
//  Created by userext on 07/06/23.
//

import SwiftUI

struct MenuCursos: View {
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
                .frame(width: 400,height:1)
                .overlay(Color("Bluedark"))
            Spacer()
            
            
            
        }
    }
}

struct MenuCursosTab: View {
    var body: some View {
        
        NavigationStack {
            TabView {
                Group {
                    MenuView()
                        .tabItem{
                            Label("Meus cursos",systemImage:"graduationcap.fill")
                        }
                    ProfileVie()
                        .tabItem{
                            Label("Conta",systemImage:"person.crop.circle.fill")
                        }
                }
                
                .toolbarBackground(.visible, for: .tabBar)
                .toolbarBackground(Color("Bluedark"), for: .tabBar)
            }
        }
    }
}

struct MenuCurso_Previews: PreviewProvider {
    static var previews: some View {
        MenuCursos()
    }
}
