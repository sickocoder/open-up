//
//  Int+Extension.swift
//  OpenUp
//
//  Created by José Tony on 09/04/23.
//

import Foundation


extension Int {
  func paddWithZero() -> String {
    return String(self).leftPadding(toLength: 2, withPad: "0")
  }
}
