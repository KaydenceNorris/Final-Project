//
//  DeveloperEnum.swift
//  Final Project
//
//  Created by Jacob Angel on 5/12/26.
//

enum Dev: CaseIterable, Hashable{// Its an enum
    case kaydence
    case claude
    case jacob
    
    var name: String{
        switch self{
        case .kaydence:
            return "Kaydence"// look at theese computed values!
        case .claude:
            return "Claude"
        case .jacob:
            return "Jacob"
        }
    }
    var work: String {
        switch self {
        case .kaydence:
            return "Might have done something, who knows"
        case .claude:
            return "Did everything"
        case .jacob:
            return "Provided a mac :("
        }
    }
    var bugs: String {
            switch self {
            case .kaydence:
                return "A lot"
            case .claude:
                return "A lot more"
            case .jacob:
                return "None"
            }
        }
    var needsCaffeine: Bool {
        switch self {
        case .kaydence:
            return true
        case .claude:
            return false
        case .jacob:
            return true
        }
    }
}
