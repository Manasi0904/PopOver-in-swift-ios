//
//  ViewController.swift
//  PopOver
//
//  Created by Kumari Mansi on 16/01/25.
//

import UIKit

class ViewController: UIViewController, UIPopoverControllerDelegate, UIPopoverPresentationControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func button(_ sender: Any) {
        self.performSegue(withIdentifier: "pop", sender: self)
    }
         func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
            if segue.identifier == "pop" {
                let dest = segue.destination
                if let pop = dest.popoverPresentationController {
                    pop.delegate = self
                }
            }
        }
        
        func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle {
            return .none
        }
        
    }
//}
