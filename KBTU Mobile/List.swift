//
//  List.swift
//  KBTU Mobile
//
//  Created by Абзал Арстанов on 3/12/21.
//

import UIKit

enum Info {
    case main, news, faculties, events, about
    
    var image: UIImage {
        switch self {
        case .main:
            return UIImage(named: "logo.png")!
        case .news:
            return UIImage(named: "news.png")!
        case .faculties:
            return UIImage(named: "faculties.png")!
        case .events:
            return UIImage(named: "events.png")!
        case .about:
            return UIImage(named: "about.png")!
        }
    }
}

class List {
    let name: String
    let description: String
    let iconName: String
    let img: Info
    
    init(name: String, description: String, iconName: String, img: Info) {
        self.name = name
        self.description = description
        self.iconName = iconName
        self.img = img
    }
    
    var icon: UIImage? {
        return UIImage(named: iconName)
    }
}
