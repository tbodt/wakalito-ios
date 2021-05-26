//
//  colorScheme.swift
//  wakalito
//
//  Copyright © 2020 kala tonyu. See LICENSE for license information.
//

import UIKit

enum keyboardColorScheme {
  case dark
  case light
}

struct keyboardColors {
  let buttonTextColor: UIColor
  let buttonBackgroundColor: UIColor
  let buttonHighlightColor: UIColor
  let backgroundColor: UIColor
  let previewTextColor: UIColor
  let previewBackgroundColor: UIColor

  init(colorScheme: keyboardColorScheme) {
    switch colorScheme {
    case .light:
      buttonTextColor = .black
      buttonBackgroundColor = .white
      buttonHighlightColor = UIColor(red: 174/255, green: 179/255, blue: 190/255, alpha: 1.0)
      backgroundColor = UIColor(red: 210/255, green: 213/255, blue: 219/255, alpha: 1.0)
      previewTextColor = .white
      previewBackgroundColor = UIColor(red: 210/255, green: 213/255, blue: 219/255, alpha: 1.0)
    case .dark:
      buttonTextColor = .white
      buttonBackgroundColor = UIColor(red: 88/255, green: 88/255, blue: 88/255, alpha: 1.0)
      buttonHighlightColor = UIColor(red: 55/255, green: 55/255, blue: 55/255, alpha: 1.0)
      backgroundColor = UIColor(red: 32/255, green: 32/255, blue: 32/255, alpha: 1.0)
      previewTextColor = .white
      previewBackgroundColor = UIColor(red: 32/255, green: 32/255, blue: 32/255, alpha: 1.0)
    }
  }
}
