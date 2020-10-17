//
//  ViewController.swift
//  10_16_Gesture
//
//  Created by Grazi Berti on 16/10/20.
//

import UIKit

enum Gonder{
    case action
    case comedy
    case thriller
    
    var title: String{
        get {
            switch self {
            case .action:
                return "AÇÃO"
            case .comedy:
                return "COMÉDIA"
            case .thriller:
                return "TERROR"
            default:
                return ""
            }
        }
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        tap.numberOfTapsRequired = 2
        view?.addGestureRecognizer(tap)
        
        let gonder = Gonder.action
        
        print(gonder.title)
        
    }

    @objc func handleTap() {
        print("Tap")
    }
    
    @objc func swipeUp() {
        print("Swipe")
    }
}

