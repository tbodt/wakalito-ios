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
        case circle = "○"
        case box = "▢"
        case down = "⌄"
        case up = "⌃"

        case colon = ":"
        case comma = ","
        case luka = "ᕄ"
        case sound = "‴"
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
            case .comma: return UIImage(named: "comma")!
            case .luka: return UIImage(named: "luka")!
            case .sound: return UIImage(named: "sound")!
            case .la: return UIImage(named: "la")!
            default: return UIImage()
            }
        }
    }

    // Letter to sitelen pona
    static let code: [[Key]: String] = [
        [.colon, .colon]: "-",
        [.comma, .comma]: "\"",
        [.op_br, .cl_br]: "/sp",
        [.dot]: ".",
        [.hor]: "__",
        [.dot, .dot, .dot]: "...",
        [.vert, .box, .down]: "mi sona ala",
        [.colon, .la]: ":)",
        [.colon, .cl_br]: ":)",
        [.colon, .pona]: ":)",
        [.colon, .op_br]: ":(",
        [.colon, .ike]: ":(",
        [.colon, .hor]: ":|",
        [.colon, .vert]: ":|",
        [.colon, .down]: ":v",
        [.vert, .circle, .dot]: "a",
        [.vert, .dot, .dot]: "a",
        [.vert, .dot, .vert, .dot]: "a a a ",
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
        [.pona, .vert, .ike]: "esun",
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
        [.pona, .hor, .sound]: "kalama",
        [.hor, .hor, .up]: "kama",
        [.circle, .circle, .vert]: "kasi",
        [.vert, .circle, .circle]: "kasi",
        [.circle, .vert, .circle]: "kasi",
        [.vert, .vert, .down]: "ken",
        [.box, .vert, .luka]: "kepeken",
        [.vert, .box, .luka]: "kepeken",
        [.luka, .vert, .box]: "kepeken",
        [.luka, .box, .vert]: "kepeken",
        [.box, .luka, .vert]: "kepeken",
        [.ike, .ike, .pona, .vert]: "kili",
        [.ike, .pona, .ike, .vert]: "kili",
        [.vert, .down, .up, .vert]: "kin",
        [.vert, .down, .up]: "kin",
        [.down, .up, .hor]: "kiwen",
        [.down, .vert, .vert, .hor]: "kiwen",
        [.ike, .circle, .pona]: "ko",
        [.pona, .circle, .ike]: "ko",
        [.down, .up, .down, .up]: "kon",
        [.la, .la, .la, .la]: "kon",
        [.up, .down, .up, .down]: "kon",
        [.up, .hor]: "kule",
        [.up, .hor, .hor, .hor]: "kule",
        [.circle, .circle, .circle]: "kulupu",
        [.la, .dot]: "kute",
        [.dot, .la]: "kute",
        [.la]: "la",
        [.hor, .hor, .circle]: "lape",
        [.circle, .circle, .vert, .up, .hor]: "laso",
        [.vert, .circle, .circle, .up, .hor]: "laso",
        [.vert, .circle, .circle, .hor, .up]: "laso",
        [.circle, .circle, .vert, .hor, .up]: "laso",
        [.up, .hor, .vert, .circle, .circle]: "laso",
        [.up, .hor, .circle, .vert, .circle]: "laso",
        [.circle, .hor]: "lawa",
        [.box, .vert, .vert, .vert]: "len",
        [.vert, .vert, .vert, .box]: "len",
        [.down, .hor, .up]: "lete",
        [.up, .down, .hor]: "lete",
        [.up]: "li",
        [.down]: "lili",
        [.pona, .ike]: "linja",
        [.ike, .pona]: "linja",
        [.box]: "lipu",
        [.pona, .hor, .up, .hor]: "loje",
        [.hor, .pona, .up, .hor]: "loje",
        [.up, .hor, .pona, .hor]: "loje",
        [.hor, .up, .pona, .hor]: "loje",
        [.up, .hor, .hor, .pona]: "loje",
        [.hor, .up, .hor, .pona]: "loje",
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
        [.circle, .ike]: "meli",
        [.vert, .circle]: "mi",
        [.up, .circle, .up]: "mije",
        [.pona, .hor, .luka]: "moku",
        [.hor, .pona, .luka]: "moku",
        [.luka, .hor, .pona]: "moku",
        [.luka, .pona, .hor]: "moku",
        [.circle, .down, .up, .down, .up]: "moli",
        [.circle, .up, .down, .up, .down]: "moli",
        [.circle, .down, .up]: "moli",
        [.dot, .hor, .vert, .hor]: "monsi",
        [.dot, .op_br]: "monsi",
        [.circle, .circle, .dot, .circle]: "mu",
        [.circle, .dot, .circle, .circle]: "mu",
        [.circle, .circle, .circle, .dot]: "mu",
        [.la, .la]: "mun",
        [.circle, .pona, .circle]: "musi",
        [.vert, .vert, .vert]: "mute",
        [.box, .dot]: "namako",
        [.dot, .box]: "namako",
        [.vert, .vert, .hor, .hor]: "nanpa",
        [.hor, .hor, .vert, .vert]: "nanpa",
        [.pona, .ike, .pona]: "nasa",
        [.ike, .pona, .ike]: "nasa",
        [.vert, .up]: "nasin",
        [.up, .vert]: "nasin",
        [.ike, .vert, .vert]: "nena",
        [.vert, .vert, .ike]: "nena",
        [.vert, .ike, .vert]: "nena",
        [.vert, .down]: "ni",
        [.vert, .hor, .vert, .hor]: "nimi",
        [.hor, .vert, .hor, .vert]: "nimi",
        [.vert, .la, .vert]: "noka",
        [.vert, .la, .hor, .vert]: "noka",
        [.vert, .dot]: "o",
        [.ike, .ike, .down, .ike, .ike, .down]: "olin",
        [.down, .ike, .ike, .down, .ike, .ike]: "olin",
        [.hor, .circle]: "ona",
        [.poki, .hor]: "open",
        [.hor, .poki]: "open",
        [.box, .down, .up]: "pakala",
        [.box, .up, .down]: "pakala",
        [.circle, .luka]: "pali",
        [.luka, .circle]: "pali",
        [.ike, .vert, .vert, .pona]: "palisa",
        [.pona, .vert, .vert, .ike]: "palisa",
        [.ike, .vert, .pona, .vert]: "palisa",
        [.pona, .vert, .ike, .vert]: "palisa",
        [.vert, .ike, .vert, .pona]: "palisa",
        [.vert, .pona, .vert, .ike]: "palisa",
        [.down, .down, .down]: "pan",
        [.luka, .sound]: "pana",
        [.sound, .luka]: "pana",
        [.vert, .hor]: "pi",
        [.ike, .ike, .down]: "pilin",
        [.down, .ike, .ike]: "pilin",
        [.ike, .ike, .pona]: "pilin",
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
        [.sound, .dot]: "seli",
        [.vert, .hor, .vert, .vert, .vert]: "selo",
        [.hor, .vert, .vert, .vert, .vert]: "selo",
        [.hor, .hor, .vert, .hor, .hor]: "selo",
        [.luka, .dot]: "seme",
        [.dot, .luka]: "seme",
        [.pona, .pona, .vert]: "sewi",
        [.vert, .pona, .pona, .vert]: "sewi",
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
        [.la, .vert, .vert, .vert, .vert, .dot, .dot]: "soweli",
        [.la, .dot, .dot, .vert, .vert, .vert, .vert]: "soweli",
        [.la, .vert, .vert, .dot, .dot]: "soweli",
        [.down, .down]: "suli",
        [.vert, .down, .vert]: "suli",
        [.circle, .box]: "suno",
        [.hor, .vert, .vert]: "supa",
        [.vert, .vert, .hor]: "supa",
        [.up, .dot, .up]: "suwi",
        [.up, .up, .dot]: "suwi",
        [.dot, .up, .up]: "suwi",
        [.down, .ike]: "tan",
        [.ike, .down]: "tan",
        [.hor, .vert]: "taso",
        [.up, .hor, .hor]: "tawa",
        [.ike, .pona, .ike, .pona]: "telo",
        [.pona, .ike, .pona, .ike]: "telo",
        [.circle, .vert, .hor]: "tenpo",
        [.circle, .sound]: "toki",
        [.up, .poki]: "tomo",
        [.poki, .up]: "tomo",
        [.vert, .vert]: "tu",
        [.ike, .ike, .down, .circle]: "unpa",
        [.ike, .ike, .pona, .circle]: "unpa",
        [.pona, .hor, .dot]: "uta",
        [.hor, .pona, .dot]: "uta",
        [.down, .up, .down]: "utala",
        [.down, .down, .up, .down]: "utala",
        [.up, .hor, .down]: "walo",
        [.hor, .up, .down]: "walo",
        [.vert]: "wan",
        [.up, .vert, .dot, .dot]: "waso",
        [.dot, .dot, .up, .vert]: "waso",
        [.vert, .circle, .vert]: "wawa",
        [.sound, .vert]: "weka",
        [.pona, .pona]: "wile",
        [.circle, .hor, .hor, .vert]: "tonsi",
        [.circle, .vert, .hor, .hor]: "tonsi",
        [.circle, .hor, .vert, .hor]: "tonsi",
        [.up, .up, .up, .up]: "monsuta",
        [.down, .down, .down, .down]: "monsuta",
        [.circle, .vert, .vert, .vert, .ike, .up, .vert, .vert, .vert, .dot, .dot]: "kijetesantakalu",
        [.box, .box]: "leko",
        [.dot, .vert, .dot]: "kipisi",
        [.circle, .circle, .circle, .up]: "apeja",
        [.circle, .circle, .up, .circle]: "apeja",
        [.circle, .up, .circle, .circle]: "apeja",
        [.up, .circle, .circle, .circle]: "apeja",
        [.ike, .pona, .ike, .pona, .vert]: "jasima",
        [.pona, .ike, .pona, .ike, .vert]: "jasima",
        [.vert, .pona, .ike, .pona, .ike]: "jasima",
        [.vert, .ike, .pona, .ike, .pona]: "jasima",
        [.circle, .down, .vert]: "oke",
        [.down, .vert, .circle]: "oke",
        [.vert, .ike]: "n",
        [.circle, .poki]: "soko",
        [.ike, .hor, .poki]: "soko",
        [.vert, .dot, .vert]: "meso",
        [.dot, .vert, .vert]: "meso",
        [.vert, .vert, .up]: "epiku",
        [.up, .vert, .vert]: "epiku",
        [.circle, .sound, .hor]: "kokosila",
        [.sound, .circle, .hor]: "kokosila",
        [.ike, .pona, .ike, .dot]: "lanpan",
        [.ike, .vert, .vert, .pona, .hor]: "misikeke",
        [.pona, .vert, .vert, .ike, .hor]: "misikeke",
        [.ike, .vert, .pona, .vert, .hor]: "misikeke",
        [.pona, .vert, .ike, .vert, .hor]: "misikeke",
        [.vert, .ike, .vert, .pona, .hor]: "misikeke",
        [.vert, .pona, .vert, .ike, .hor]: "misikeke",
        [.box, .down, .hor, .dot]: "ku",
        [.box, .down, .hor, .circle, .sound, .pona]: "ku",
        [.circle, .hor, .hor, .sound]: "isipin",
        [.sound, .circle, .hor, .hor]: "isipin",
        [.circle, .sound, .hor, .hor]: "isipin",
        [.circle, .hor, .vert, .up, .hor]: "kapesi",
        [.circle, .vert, .hor, .up, .hor]: "kapesi",
        [.circle, .hor, .vert, .hor, .up]: "kapesi",
        [.circle, .vert, .hor, .hor, .up]: "kapesi",
        [.up, .hor, .circle, .hor, .vert]: "kapesi",
        [.up, .hor, .circle, .vert, .hor]: "kapesi",
        [.hor, .up, .circle, .hor, .vert]: "kapesi",
        [.hor, .up, .circle, .vert, .hor]: "kapesi",
        [.up, .up, .up, .down, .down, .down]: "kiki",
        [.up, .up, .up, .up, .down, .down, .down, .down]: "kiki",
        [.vert, .hor, .vert, .pona, .ike, .vert, .dot, .dot, .dot]: "linluwi",
        [.vert, .hor, .vert, .dot, .dot, .dot, .pona, .ike, .vert]: "linluwi",
        [.vert, .hor, .vert, .vert, .pona, .ike, .dot, .dot, .dot]: "linluwi",
        [.vert, .hor, .vert, .vert, .dot, .dot, .dot, .pona, .ike]: "linluwi",
        [.up, .hor, .circle, .circle, .circle]: "mulapisu",
        [.hor, .up, .circle, .circle, .circle]: "mulapisu",
        [.circle, .circle, .circle, .up, .hor]: "mulapisu",
        [.circle, .circle, .circle, .hor, .up]: "mulapisu",
        [.vert, .hor, .hor]: "pake",
        [.hor, .hor, .vert]: "pake",
        [.vert, .hor, .la]: "Pingo",
        [.vert, .up, .down]: "powe",
        [.la, .la, .up, .hor]: "unu",
        [.la, .la, .hor, .up]: "unu",
        [.up, .hor, .la, .la]: "unu",
        [.hor, .up, .la, .la]: "unu",
        [.vert, .pona, .pona]: "wa",
    ]

    static let codesForDisplay = code.map { ($0.1, $0.0) }.sorted {
        if $0.0.first!.isPunctuation && !$1.0.first!.isPunctuation {
            return false
        }
        if !$0.0.first!.isPunctuation && $1.0.first!.isPunctuation {
            return true
        }
        return $0.0 < $1.0
    }

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
            let sitelen = NSTextAttachment()
            let im = key.sitelen()
            sitelen.image = im
            sitelen.bounds = CGRect(x: 0, y: (height - im.size.height) / 2, width: im.size.width, height: im.size.height)
            str.append(NSAttributedString(attachment: sitelen))
            let weka = NSTextAttachment()
            weka.bounds = CGRect(x: 0, y: 0, width: 6, height: 0)
            str.append(NSAttributedString(attachment: weka))
        }
        return str
    }
}

