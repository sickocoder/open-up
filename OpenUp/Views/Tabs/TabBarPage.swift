//
//  TabBarPage.swift
//  OpenUp
//
//  Created by José Tony on 16/04/23.
//

import SwiftUI

let tabs = [
  ("Home", "house", AnyView(HomeScreen())),
  ("Search", "magnifyingglass", AnyView(Text("Search").font(.largeTitle))),
  ("Profile", "person", AnyView(Text("Person").font(.largeTitle)))
]

struct TabBarPage: View {
  @State private var selectedTab = 0

    var body: some View {
      ZStack {
        if selectedTab == 0 {
          tabs[0].2
        } else if selectedTab == 1 {
          tabs[1].2
        } else {
          tabs[2].2
        }
        
        VStack(spacing: 0) {
          ForEach(0..<tabs.count) { index in
            Button(action: {
              selectedTab = index
            }, label: {
              VStack {
                Image(systemName: tabs[index].1)
                Text(tabs[index].0)
              }
              .foregroundColor(selectedTab == index ? .accentColor : .gray)
            })
            .frame(maxWidth: .infinity)
          }
        }

      }
    }
}

struct TabBarPage_Previews: PreviewProvider {
    static var previews: some View {
        TabBarPage()
    }
}
