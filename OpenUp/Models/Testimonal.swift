//
//  Testimonal.swift
//  OpenUp
//
//  Created by José Tony on 07/04/23.
//

import Foundation

struct TTestimonial: Identifiable {
  var id = UUID()
  let coverImagePath: String
  let createdAt: Date
  let title: String
  let category: String
  let time: String
  var downloaded: Bool = false
}

let listOfTodaysTestimonals = [
  TTestimonial(coverImagePath: "house", createdAt: Date.now, title: "Um dia de cada vez", category: "mood booster", time: "1min 56seg"),
  TTestimonial(coverImagePath: "house", createdAt: Date.now, title: "Eu sou ancioso", category: "introspectivo", time: "1min 56seg", downloaded: true),
  TTestimonial(coverImagePath: "house", createdAt: Date.now, title: "Como apreciar o belo da vida", category: "mood booster", time: "1min 56seg"),
]
