//
//  MessageDialog.swift
//  HelloDear
//
//  Created by Murilo Ramos on 12/13/15.
//  Copyright © 2015 Murilo. All rights reserved.
//

import UIKit

class MessageDialog {
    
    let controller:UIViewController
    
    init (controller: UIViewController) {
        self.controller = controller
    }
    
    func showInfoDialog(message: String) {
        let alertController = UIAlertController(title: "Attention", message: message, preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Cancel, handler: nil))
        self.controller.presentViewController(alertController, animated: true, completion: nil)
    }
    
}
