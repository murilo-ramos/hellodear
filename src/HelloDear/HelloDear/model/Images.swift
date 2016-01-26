//
//  Files.swift
//  HelloDear
//
//  Created by Murilo Costa on 1/26/16.
//  Copyright © 2016 Murilo. All rights reserved.
//

import Foundation

enum Images : Int {
    case MainImage01
    case MainImage02
    case MainImage03
    case MainImage04
    case MainImage05
    
    static func getImageName(value: Int) -> String {
        switch (value) {
            case Images.MainImage01.rawValue: return "main_image_01"
            case Images.MainImage02.rawValue: return "main_image_02"
            case Images.MainImage03.rawValue: return "main_image_03"
            case Images.MainImage04.rawValue: return "main_image_04"
            case Images.MainImage05.rawValue: return "main_image_05"
            default: return ""
        }
    }
}