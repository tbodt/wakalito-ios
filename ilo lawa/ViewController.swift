//
//  ViewController.swift
//  keyboard
//
//  Copyright © 2020 kala tonyu. See LICENSE for license information.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if let keyboards = UserDefaults.standard.array(forKey: "AppleKeyboards") as? [String],
           !keyboards.contains("com.tbodt.nasin-Wakalito.ilo-sitelen") {
            if let lipuPiNasinPana = self.storyboard?.instantiateViewController(identifier: "nasin pana") {
                self.present(lipuPiNasinPana, animated: true, completion: nil)
            }
        }
    }
}

extension UIViewController {
    @IBAction
    func dismiss() {
        self.dismiss(animated: true, completion: nil)
    }
}
