//
//  PagePage.swift
//  OpenUp
//
//  Created by José Tony on 16/04/23.
//

import SwiftUI

struct PagePage: View {
  private let tabBarWidth = UIScreen.main.bounds.width - 40
  private let tabBarItemWidth: CGFloat = (UIScreen.main.bounds.width - 40 - 20) / 3
  private let tabBarItemAddedWidth: CGFloat = 30
  
  @State private var selectedTab = 0
  
  func getTheOffset(selectedTabIndex: Int) -> CGFloat {
    if selectedTabIndex == tabs.count - 1 {
      return tabBarWidth - 6 * CGFloat(selectedTabIndex) - tabBarItemWidth - tabBarItemAddedWidth / 2
    }
    
    let subtrator = selectedTabIndex == 0 ? 4 : -(tabBarItemAddedWidth / 2)
    
    return subtrator + (CGFloat(selectedTabIndex) * tabBarItemWidth) + (tabBarItemAddedWidth / 2) * CGFloat(selectedTabIndex)
  }
  
  var body: some View {
    TabView(selection: $selectedTab) {
      ForEach(0..<tabs.count, id: \.self) { index in
        tabs[index].2
          .tag(index)
      }
    }
    .overlay(alignment: .bottom) {
      HStack {
        ZStack(alignment: .leading) {
          HStack(spacing: 10) {
            Text(" ")
              .fontWeight(.medium)
              .padding(.vertical, 13)
              .frame(width: tabBarItemWidth + tabBarItemAddedWidth)
              .background(Color.red)
              .cornerRadius(.infinity)
              .offset(x: getTheOffset(selectedTabIndex: selectedTab))
          }
          .padding(.bottom)
          .frame(width: tabBarWidth - 4, alignment: .leading)
          
          
          HStack(spacing: 10) {
            ForEach(0..<tabs.count, id: \.self) { index in
              HStack {
                if index == selectedTab {
                  Image(systemName: tabs[selectedTab].1)
                }
                
                Text(tabs[index].0)
              }
              .foregroundColor(selectedTab == index ? .white : .black)
              .fontWeight(selectedTab == index ? .bold : .medium)
              .padding(.vertical, 13)
              .frame(width: selectedTab == index ? tabBarItemWidth + tabBarItemAddedWidth : tabBarItemWidth - tabBarItemAddedWidth / 2)
              .onTapGesture {
                withAnimation(.spring()) {
                  selectedTab = index
                }
              }
              
            }
            
          }
          .frame(width: tabBarWidth, alignment: .leading)
          .padding(4)
          .background(Color.gray.opacity(0.2))
          .cornerRadius(.infinity)
          .padding(.bottom)
        }
      }
    }
  }
}

struct PagePage_Previews: PreviewProvider {
  static var previews: some View {
    PagePage()
  }
}



