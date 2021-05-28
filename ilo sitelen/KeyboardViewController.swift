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
        var text = ""
        if signalCache.count > 0 {
          text = signalCache.reduce("") {
            return $0 + $1.rawValue
          }
          text += " = \(cacheLetter)"
        }
        previewLabel.text = text
        print(text)
      }
    }
    
    var cacheLetter: String {
      return wakalitoData.letter(fromSignals: signalCache) ?? "?"
    }
    
    var currentWord: String? {
      var lastWord: String?
      if let stringBeforeCursor = textDocumentProxy.documentContextBeforeInput {
        stringBeforeCursor.enumerateSubstrings(in: stringBeforeCursor.startIndex...,
                                               options: .byWords)
        { word, _, _, _ in
          if let word = word {
            lastWord = word
          }
        }
      }
      return lastWord
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
    
    
    @IBAction func quotePressed(_ sender: Any) {
        addSignal(.quote)
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
    

    @IBAction func deletePressed(button: UIButton) {
           if signalCache.count > 0 {
             // Remove last signal
             signalCache.removeLast()
           } else {
                (textDocumentProxy as UIKeyInput).deleteBackward()
           }
         }

    
// MARK: spacePressed
    @IBAction func spacePressed() {
        if signalCache.count > 0 {
            if cacheLetter.first?.isPunctuation ?? false && textDocumentProxy.documentContextBeforeInput?.hasSuffix(" ") ?? false {
                textDocumentProxy.deleteBackward()
            }
            textDocumentProxy.insertText("\(cacheLetter) ")
            // Clear our the signal cache
            signalCache = []
        } else {
            textDocumentProxy.insertText(" ")
           }
         }

    
    override func textWillChange(_ textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }
   /*
    override func textDidChange(_ textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
        
        var textColor: UIColor
        let proxy = self.textDocumentProxy
        if proxy.keyboardAppearance == UIKeyboardAppearance.dark {
            textColor = UIColor.white
        } else {
            textColor = UIColor.black
        }
        self.nextKeyboardButton.setTitleColor(textColor, for: [])
    }*/
}

private extension KeyboardViewController {
  func attemptToReplaceCurrentWord() {
    guard let entries = userLexicon?.entries,
    let currentWord = currentWord?.lowercased() else {
        return
    }

    let replacementEntries = entries.filter {
      $0.userInput.lowercased() == currentWord
    }

    if let replacement = replacementEntries.first {
      for _ in 0..<currentWord.count {
        textDocumentProxy.deleteBackward()
      }

      textDocumentProxy.insertText(replacement.documentText)
    }
  }
    
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

