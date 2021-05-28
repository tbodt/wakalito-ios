//
//  ViewController.swift
//  keyboard
//
//  Copyright © 2020 kala tonyu. See LICENSE for license information.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    @IBOutlet weak var pokiLukin: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        if let placeholder = pokiLukin.placeholder {
            pokiLukin.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [
                .font: UIFont(name: "linja-sike", size: 20)!
            ])
        }
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if let keyboards = UserDefaults.standard.array(forKey: "AppleKeyboards") as? [String],
           !keyboards.contains("com.tbodt.nasin-Wakalito.ilo-sitelen") {
            if let lipuPiNasinPana = self.storyboard?.instantiateViewController(identifier: "nasin pana") {
                self.present(lipuPiNasinPana, animated: true, completion: nil)
            }
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        wakalitoData.codesForDisplay.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ijo", for: indexPath) as! NasinCell
        let (nimi, nasin) = wakalitoData.codesForDisplay[indexPath.row]
        cell.nimiLabel.text = nimi
        cell.nasinLabel.attributedText = wakalitoData.sitelenENasin(nasin, height: 24)
        return cell
    }
    
    @IBAction func lukaLonAnte(_ sender: Any) {
        self.view.endEditing(true)
    }
}

class NasinCell : UITableViewCell {
    @IBOutlet weak var nimiLabel: UILabel!
    @IBOutlet weak var nasinLabel: UILabel!
}

extension UIViewController {
    @IBAction
    func dismiss() {
        self.dismiss(animated: true, completion: nil)
    }
}
