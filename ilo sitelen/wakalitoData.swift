//
//  wakalitoData.swift
//  wakalito
//
//  Copyright © 2020 kala tonyu. See LICENSE for license information.
//

import UIKit

struct wakalitoData {
    // String representation of each
    enum Key: String {
        case op_br = "["
        case vert = "|"
        case hor = "-"
        case pona = "ᴗ"
        case ike = "ᴖ"
        case dot = "•"

        case cl_br = "]"
        case poki = "⨆"
        case circle = "o"
        case box = "□"
        case down = "⌄"
        case up = "⌃"

        case colon = ":"
        case quote = "\""
        case luka = "ᕄ"
        case sound = "⟂"
        case la = "ɔ"

        case unknown = "?"

        func sitelen() -> UIImage {
            switch self {
            case .op_br: return UIImage(named: "op_br")!
            case .vert: return UIImage(named: "vert")!
            case .hor: return UIImage(named: "hor")!
            case .pona: return UIImage(named: "pona")!
            case .ike: return UIImage(named: "ike")!
            case .dot: return UIImage(named: "dot")!
            case .cl_br: return UIImage(named: "cl_br")!
            case .poki: return UIImage(named: "poki")!
            case .circle: return UIImage(named: "circle")!
            case .box: return UIImage(named: "box")!
            case .down: return UIImage(named: "down")!
            case .up: return UIImage(named: "up")!
            case .colon: return UIImage(named: "colon")!
            case .luka: return UIImage(named: "luka")!
            case .sound: return UIImage(named: "sound")!
            case .la: return UIImage(named: "la")!
            default: return UIImage()
            }
        }
    }

    // Letter to sitelen pona
    static let code: [[Key]: String] = [
        [.op_br]: "[",
        [.hor]: "⎯",
        [.cl_br]: "]",
        [.quote]: "\"",
        [.colon]: ":",
        [.dot]: ".",
        [.dot, .dot]: ",",
        [.vert, .vert, .dot]: "!",
        [.vert, .circle, .dot]: "a",
        [.vert, .dot, .dot]: "a",
        [.dot, .dot, .hor, .hor, .hor, .circle]: "akesi",
        [.circle, .hor, .hor, .hor, .dot, .dot]: "akesi",
        [.down, .up]: "ala",
        [.vert, .la, .hor]: "alasa",
        [.vert, .la, .hor, .up]: "alasa",
        [.la, .vert, .hor]: "alasa",
        [.la, .vert, .hor, .up]: "alasa",
        [.circle, .la]: "ale",
        [.dot, .poki, .dot]: "anpa",
        [.up, .down]: "ante",
        [.down, .vert]: "anu",
        [.hor, .up, .hor]: "awen",
        [.up, .up]: "e",
        [.vert, .hor, .vert]: "en",
        [.circle, .vert, .circle]: "esun",
        [.circle]: "ijo",
        [.ike]: "ike",
        [.box, .vert]: "ilo",
        [.vert, .box]: "ilo",
        [.poki, .dot, .dot]: "insa",
        [.dot, .dot, .poki, .dot, .dot]: "insa",
        [.luka, .luka, .luka]: "jaki",
        [.circle, .up]: "jan",
        [.circle, .box, .up, .hor]: "jelo",
        [.circle, .pona, .hor]: "jo",
        [.up, .circle]: "kala",
        [.ike, .pona]: "kala",
        [.pona, .hor, .sound]: "kalama",
        [.hor, .pona, .sound]: "kalama",
        [.sound, .hor, .pona]: "kalama",
        [.sound, .pona, .hor]: "kalama",
        [.hor, .hor, .up]: "kama",
        [.circle, .circle, .vert]: "kasi",
        [.vert, .vert, .down]: "ken",
        [.box, .vert, .luka]: "kepeken",
        [.vert, .box, .luka]: "kepeken",
        [.luka, .vert, .box]: "kepeken",
        [.luka, .box, .vert]: "kepeken",
        [.ike, .ike, .pona, .vert]: "kili",
        [.vert, .down, .up, .vert]: "kin",
        [.vert, .down, .up]: "kin",
        [.down, .up, .hor]: "kiwen",
        [.down, .vert, .vert, .hor]: "kiwen",
        [.ike, .circle, .pona]: "ko",
        [.pona, .circle, .ike]: "ko",
        [.down, .up, .down, .up]: "kon",
        [.la, .la, .la, .la]: "kon",
        [.up, .hor]: "kule",
        [.up, .hor, .hor, .hor]: "kule",
        [.circle, .circle, .circle]: "kulupu",
        [.la, .dot]: "kute",
        [.dot, .la]: "kute",
        [.la]: "la",
        [.hor, .hor, .circle]: "lape",
        [.circle, .circle, .vert, .up, .hor]: "laso",
        [.circle, .hor]: "lawa",
        [.box, .vert, .vert, .vert]: "len",
        [.vert, .vert, .vert, .box]: "len",
        [.down, .up, .vert]: "lete",
        [.up, .down, .hor]: "lete",
        [.up]: "li",
        [.down]: "lili",
        [.pona, .ike]: "linja",
        [.box]: "lipu",
        [.pona, .hor, .up, .hor]: "loje",
        [.hor, .pona, .up, .hor]: "loje",
        [.dot, .hor]: "lon",
        [.hor, .dot]: "lon",
        [.luka]: "luka",
        [.circle, .dot]: "lukin",
        [.down, .la, .dot]: "oko",
        [.pona, .vert, .vert]: "lupa",
        [.vert, .pona, .vert]: "lupa",
        [.vert, .vert, .pona]: "lupa",
        [.circle, .hor, .vert]: "ma",
        [.dot, .circle]: "mama",
        [.circle, .pona]: "mani",
        [.hor, .circle, .hor]: "mani",
        [.ike, .circle]: "meli",
        [.vert, .circle]: "mi",
        [.up, .circle, .up]: "mije",
        [.pona, .hor, .luka]: "moku",
        [.hor, .pona, .luka]: "moku",
        [.luka, .hor, .pona]: "moku",
        [.luka, .pona, .hor]: "moku",
        [.circle, .down, .up, .down, .up]: "moli",
        [.circle, .down, .up]: "moli",
        [.dot, .hor, .vert, .hor]: "monsi",
        [.dot, .op_br]: "monsi",
        [.circle, .circle, .dot, .circle]: "mu",
        [.circle, .dot, .circle, .circle]: "mu",
        [.la, .la]: "mun",
        [.circle, .pona, .circle]: "musi",
        [.vert, .vert, .vert]: "mute",
        [.box, .dot]: "namako",
        [.vert, .vert, .hor, .hor]: "nanpa",
        [.hor, .hor, .vert, .vert]: "nanpa",
        [.pona, .ike, .pona]: "nasa",
        [.ike, .pona, .ike]: "nasa",
        [.vert, .up]: "nasin",
        [.ike, .vert, .vert]: "nena",
        [.vert, .vert, .ike]: "nena",
        [.vert, .ike, .vert]: "nena",
        [.vert, .down]: "ni",
        [.vert, .hor, .vert, .hor]: "nimi",
        [.hor, .vert, .hor, .vert]: "nimi",
        [.vert, .la, .vert]: "noka",
        [.vert, .dot]: "o",
        [.ike, .ike, .down, .ike, .ike, .down]: "olin",
        [.down, .ike, .ike, .down, .ike, .ike]: "olin",
        [.hor, .circle]: "ona",
        [.poki, .hor]: "open",
        [.hor, .poki]: "open",
        [.box, .down, .up]: "pakala",
        [.circle, .luka]: "pali",
        [.luka, .circle]: "pali",
        [.ike, .vert, .vert, .pona]: "palisa",
        [.pona, .vert, .vert, .ike]: "palisa",
        [.down, .down, .down]: "pan",
        [.luka, .sound]: "pana",
        [.sound, .luka]: "pana",
        [.vert, .hor]: "pi",
        [.ike, .ike, .down]: "pilin",
        [.down, .ike, .ike]: "pilin",
        [.up, .hor, .down, .up]: "pimeja",
        [.down, .up, .up, .hor]: "pimeja",
        [.hor, .vert, .hor]: "pini",
        [.dot, .dot, .vert, .hor, .hor, .hor]: "pipi",
        [.vert, .hor, .hor, .hor, .dot, .dot]: "pipi",
        [.hor, .hor, .hor, .vert, .dot, .dot]: "pipi",
        [.poki, .dot]: "poka",
        [.poki]: "poki",
        [.pona]: "pona",
        [.box, .circle, .sound, .pona]: "pu",
        [.hor, .hor]: "sama",
        [.dot, .sound]: "seli",
        [.vert, .hor, .vert, .vert, .vert]: "selo",
        [.hor, .vert, .vert, .vert, .vert]: "selo",
        [.hor, .hor, .vert, .hor, .hor]: "selo",
        [.luka, .dot]: "seme",
        [.dot, .luka]: "seme",
        [.pona, .pona, .vert]: "sewi",
        [.vert, .hor, .vert, .vert]: "sijelo",
        [.hor, .vert, .vert, .vert]: "sijelo",
        [.circle, .circle]: "sike",
        [.sound]: "sin",
        [.circle, .vert]: "sina",
        [.hor, .vert, .hor, .dot]: "sinpin",
        [.cl_br, .dot]: "sinpin",
        [.box, .dot, .dot, .dot]: "sitelen",
        [.box, .dot, .dot]: "sitelen",
        [.box, .sound]: "sona",
        [.sound, .box]: "sona",
        [.hor, .la, .dot, .dot, .vert, .vert, .vert, .vert]: "soweli",
        [.la, .dot, .dot, .vert, .vert]: "soweli",
        [.down, .down]: "suli",
        [.vert, .down, .vert]: "suli",
        [.circle, .box]: "suno",
        [.hor, .vert, .vert]: "supa",
        [.vert, .vert, .hor]: "supa",
        [.up, .dot, .up]: "suwi",
        [.down, .ike]: "tan",
        [.ike, .down]: "tan",
        [.hor, .vert]: "taso",
        [.up, .hor, .hor]: "tawa",
        [.ike, .pona, .ike, .pona]: "telo",
        [.pona, .ike, .pona, .ike]: "telo",
        [.circle, .vert, .hor]: "tenpo",
        [.circle, .sound]: "toki",
        [.sound, .circle]: "toki",
        [.up, .poki]: "tomo",
        [.poki, .up]: "tomo",
        [.vert, .vert]: "tu",
        [.ike, .ike, .down, .circle]: "unpa",
        [.pona, .hor, .dot]: "uta",
        [.hor, .pona, .dot]: "uta",
        [.down, .up, .down]: "utala",
        [.down, .down, .up, .down]: "utala",
        [.up, .hor, .down]: "walo",
        [.vert]: "wan",
        [.up, .vert, .dot, .dot]: "waso",
        [.dot, .dot, .up, .vert]: "waso",
        [.vert, .circle, .vert]: "wawa",
        [.sound, .vert]: "weka",
        [.pona, .pona]: "wile",
        [.circle, .down, .vert]: "tonsi",
        [.up, .up, .up, .up]: "monsuta",
        [.down, .down, .down, .down]: "monsuta",
        [.circle, .vert, .vert, .vert, .ike, .up, .vert, .vert, .vert, .dot, .dot]: "kijetesantakalu",
        [.box, .box]: "leko",
        [.dot, .vert, .dot]: "kipisi",
        [.circle, .circle, .circle, .up]: "apeja",
        [.circle, .circle, .up, .circle]: "apeja",
        [.circle, .up, .circle, .circle]: "apeja",
        [.up, .circle, .circle, .circle]: "apeja",
    ]

    static let codesForDisplay = code.map { ($0.1, $0.0) }.sorted(by: { $0.0 < $1.0 })

    /// Converts an array of signals into the associated letter if it exists
    static func letter(fromSignals signals: [Key]) -> String? {
        return code.filter {
            $0.key == signals
        }.map {
            $0.value
        }.first
    }

    static func sitelenENasin(_ nasin: [wakalitoData.Key], height: CGFloat) -> NSAttributedString {
        let str = NSMutableAttributedString()
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
                sitelen.bounds = CGRect(x: 0, y: (height - im.size.height) / 2, width: im.size.width, height: im.size.height)
                str.append(NSAttributedString(attachment: sitelen))
                let weka = NSTextAttachment()
                weka.bounds = CGRect(x: 0, y: 0, width: 5, height: 0)
                str.append(NSAttributedString(attachment: weka))
            }
        }
        return str
    }
}

