//
//  keyboardButton.swift
//  wakalito
//
//  Copyright © 2020 kala tonyu. See LICENSE for license information.
//

import UIKit

@IBDesignable
class KeyboardButton: UIButton {
    @IBInspectable
  var defaultBackgroundColor: UIColor = .white
    @IBInspectable
  var highlightBackgroundColor: UIColor = .lightGray

  override init(frame: CGRect) {
    super.init(frame: frame)
    commonInit()
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    commonInit()
  }

  override func layoutSubviews() {
    super.layoutSubviews()
    backgroundColor = isHighlighted ? highlightBackgroundColor : defaultBackgroundColor
  }
}

// MARK: - Private Methods
private extension KeyboardButton {
  func commonInit() {
    layer.cornerRadius = 5.0
    layer.masksToBounds = false
    layer.shadowOffset = CGSize(width: 0, height: 1.0)
    layer.shadowRadius = 0.0
    layer.shadowOpacity = 0.35
  }
}
