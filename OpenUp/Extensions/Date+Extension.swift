//
//  Date+Extension.swift
//  OpenUp
//
//  Created by José Tony on 07/04/23.
//

import Foundation

extension Date {
  func toLocalFormat() -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.setLocalizedDateFormatFromTemplate("d MMM, yyyy")
    
    return dateFormatter.string(from: self)
  }
}
