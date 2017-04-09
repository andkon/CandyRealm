//
//  Cookie.swift
//  CandyRealm
//
//  Created by Andrew Konoff on 4/8/17.
//  Copyright © 2017 Andrew Konoff. All rights reserved.
//

import SpriteKit
import RealmSwift

enum CookieType: Int {
    case unknown = 0, croissant, cupcake, danish, donut, macaroon, sugarCookie
}

class Cookie: Object {
    dynamic var column: Int = 0
    dynamic var row: Int = 0
    dynamic var sprite: SKSpriteNode?
    
    private dynamic var rawType = -1
    public var cookieType: CookieType {
        get {
            return CookieType(rawValue: rawType)!
        }
        set {
            rawType = newValue.rawValue
        }
    }

    convenience init(column: Int, row: Int, cookieType: CookieType) {
        self.init()
        self.column = column
        self.row = row
        self.cookieType = cookieType
    }
    
    override public static func ignoredProperties()-> [String] {
        return ["sprite", "cookieType"]
    }
}
