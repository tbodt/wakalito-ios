//
//  ViewController.swift
//  keyboard
//
//  Copyright © 2020 kala tonyu. See LICENSE for license information.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
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
        cell.nimiLabel?.text = nimi
        cell.nasinLabel?.attributedText = nasinOSitelen(nasin)
        return cell
    }
    func nasinOSitelen(_ nasin: [wakalitoData.Key]) -> NSAttributedString {
        let str = NSMutableAttributedString()
        let height = 24
        let sinpin = NSTextAttachment()
        sinpin.bounds = CGRect(x: 0, y: 0, width: 0, height: height)
        str.append(NSAttributedString(attachment: sinpin))
        for key in nasin {
            if key == .quote {
                str.append(NSAttributedString(string: "\""))
            } else {
                let sitelen = NSTextAttachment()
                let im = key.sitelen()
                sitelen.image = im
                sitelen.bounds = CGRect(x: 0, y: (CGFloat(height) - im.size.height) / 2, width: im.size.width, height: im.size.height)
                str.append(NSAttributedString(attachment: sitelen))
                let weka = NSTextAttachment()
                weka.bounds = CGRect(x: 0, y: 0, width: 5, height: 0)
                str.append(NSAttributedString(attachment: weka))
            }
        }
        return str
    }
    
    @IBAction func lukaLonAnte(_ sender: Any) {
        self.view.endEditing(true)
    }
}

class NasinCell : UITableViewCell {
    @IBOutlet var nimiLabel: UILabel?
    @IBOutlet var nasinLabel: UILabel?
}

extension UIViewController {
    @IBAction
    func dismiss() {
        self.dismiss(animated: true, completion: nil)
    }
}
