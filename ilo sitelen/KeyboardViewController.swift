//
//  KeyboardViewController.swift
//  wakalito
//
//  Copyright © 2020 kala tonyu. See LICENSE for license information.
//

import UIKit

class KeyboardViewController: UIInputViewController {
    
    @IBOutlet var deleteButton: KeyboardButton!
    @IBOutlet var nextKeyboardButton: KeyboardButton!
    @IBOutlet var returnButton: KeyboardButton!
    
    @IBOutlet var heightConstraint: NSLayoutConstraint!
    
    
    @IBOutlet var stackView: UIStackView!
    
    @IBOutlet var previewLabel: UILabel!
    
    var keyboardView: KeyboardViewController!
    var userLexicon: UILexicon?

    var signalCache: [wakalitoData.Key] = [] {
      didSet {
        let text = NSMutableAttributedString()
        if signalCache.count > 0 {
            text.append(wakalitoData.sitelenENasin(signalCache, height: 14))
            text.append(NSAttributedString(string: " = "))
            text.append(NSAttributedString(string: cacheLetter, attributes: [
                .font: UIFont(name: "linja-sike", size: 23)!
            ]))
        }
        previewLabel.attributedText = text
        print(text)
      }
    }
    
    var cacheLetter: String {
      return wakalitoData.letter(fromSignals: signalCache) ?? "?"
    }
    
    init() {
        super.init(nibName: "keyboardView", bundle: nil)
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    override func updateViewConstraints() {
        super.updateViewConstraints()

        // Add custom view sizing constraints here
    }
    
    override func awakeFromNib() {
      super.awakeFromNib()
      //setNextKeyboardVisible(false)
    }


    // MARK: viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(keyboardWillShow),
            name: UIResponder.keyboardWillShowNotification,
            object: nil
        )

        nextKeyboardButton.isHidden = !self.needsInputModeSwitchKey
        nextKeyboardButton.addTarget(self, action: #selector(handleInputModeList(from:with:)), for: .allTouchEvents)
    }
    
    @objc func keyboardWillShow(_ notification: Notification) {
        if let keyboardFrame: NSValue = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue {
            let keyboardRectangle = keyboardFrame.cgRectValue
            heightConstraint.constant = keyboardRectangle.height
            print("\(keyboardRectangle.height)")
            stackView.layoutIfNeeded()
        }
    }
    
    @objc func keyboardDidShow(notification: Notification) {
        print("??")
        if let infoKey  = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey],
            let rawFrame = (infoKey as AnyObject).cgRectValue {
            let keyboardFrame = view.convert(rawFrame, from: nil)
            let heightKeyboard = keyboardFrame.size.height
        
            //heightConstraint.constant = heightKeyboard
            stackView.layoutIfNeeded()
        }
    }
   
    //MARK: keyboardPressed
    
    @IBAction func opbrPressed(_ sender: Any) {
        addSignal(.op_br)
    }
    
    @IBAction func vertPressed(_ sender: Any) {
        addSignal(.vert)
    }
    
    @IBAction func horPressed(_ sender: Any) {
        addSignal(.hor)
    }

    @IBAction func ponaPressed(_ sender: Any) {
        addSignal(.pona)
    }
    
    @IBAction func ikePressed(_ sender: Any) {
        addSignal(.ike)
    }

    @IBAction func dotPressed(_ sender: Any) {
        addSignal(.dot)
    }
    
    @IBAction func clbrPressed(_ sender: Any) {
        addSignal(.cl_br)
    }
    
    @IBAction func pokiPressed(_ sender: Any) {
        addSignal(.poki)
    }
    
    @IBAction func circlePressed(_ sender: Any) {
        addSignal(.circle)
    }
    
    @IBAction func boxPressed(_ sender: Any) {
        addSignal(.box)
    }
    
    @IBAction func downPressed(_ sender: Any) {
        addSignal(.down)
    }
    
    @IBAction func upPressed(_ sender: Any) {
        addSignal(.up)
    }

    @IBAction func colonPressed(_ sender: Any) {
        addSignal(.colon)
    }
    
    @IBAction func commaPressed(_ sender: Any) {
        addSignal(.comma)
    }
    
    @IBAction func lukaPressed(_ sender: Any) {
        addSignal(.luka)
    }

    @IBAction func soundPressed(_ sender: Any) {
        addSignal(.sound)
    }
    
    @IBAction func laPressed(_ sender: Any) {
        addSignal(.la)
    }
    
    
    @IBAction func returnPressed(_ sender: Any) {
        (textDocumentProxy as UIKeyInput).insertText("\n")
    }

    func punctShouldHaveSpaceAfter(_ char: Character?) -> Bool {
        return [",", ":", ".", "?", "!"].contains(char)
    }

    @IBAction func spacePressed() {
        if signalCache.count > 0 {
            let char = cacheLetter.first
            let lastChar = textDocumentProxy.documentContextBeforeInput?.last
            if char?.isLetter ?? false && (lastChar?.isLetter ?? false || punctShouldHaveSpaceAfter(lastChar)) {
                textDocumentProxy.insertText(" ")
            }
            textDocumentProxy.insertText("\(cacheLetter)")
            // Clear our the signal cache
            signalCache = []
        } else {
            textDocumentProxy.insertText(" ")
        }
    }

    func lastChar() -> Character? {
        return textDocumentProxy.documentContextBeforeInput?.last
    }

    @IBAction func deletePressed(button: UIButton) {
        if signalCache.count > 0 {
            // Remove last signal
            signalCache.removeLast()
            return
        }
        // if the last char is a letter, delete as many letters as available, and then delete a space if there is one
        if lastChar()?.isLetter ?? false {
            while lastChar()?.isLetter ?? false {
                textDocumentProxy.deleteBackward()
            }
            if lastChar() == " " {
                textDocumentProxy.deleteBackward()
            }
            return
        }
        
        textDocumentProxy.deleteBackward()
    }
}

private extension KeyboardViewController {
    func addSignal(_ signal: wakalitoData.Key) {
      if signalCache.count == 0 {
        // Have an empty cache
        signalCache.append(signal)
        
        
      } else {
        // Building on existing letter
        signalCache.append(signal)
      }
    //print(signalCache)
    }
}

