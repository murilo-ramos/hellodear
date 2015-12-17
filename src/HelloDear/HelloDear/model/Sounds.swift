//
//  Sounds.swift
//  HelloDear
//
//  Created by Murilo Ramos on 12/13/15.
//  Copyright © 2015 Murilo. All rights reserved.
//

import Foundation



enum Sounds : Int {
    case SoBriga
    case GostaDeNada
    case Laura
    case MeuBem
    case Pezinho
    case TudoBem
    case VeioPorqueQuis
    
    static func getStringValue(value: Int) -> String {
        switch value {
            case Sounds.SoBriga.rawValue:
                return "briga"
            case Sounds.GostaDeNada.rawValue:
                return "gostadenada"
            case Sounds.Laura.rawValue:
                return "laura"
            case Sounds.MeuBem.rawValue:
                return "meubem"
            case Sounds.Pezinho.rawValue:
                return "pezinho"
            case Sounds.TudoBem.rawValue:
                return "tudobem"
            case Sounds.VeioPorqueQuis.rawValue:
                return "veioporquequis"
            default:
                return ""
        }
    }
    
}