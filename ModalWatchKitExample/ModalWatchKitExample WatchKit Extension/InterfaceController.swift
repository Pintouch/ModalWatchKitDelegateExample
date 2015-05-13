//
//  InterfaceController.swift
//  ModalWatchKitExample WatchKit Extension
//
//  Created by Adrien Pinto on 13/05/2015.
//  Copyright (c) 2015 Comeet. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController, ModalItemChooserDelegate {

    @IBOutlet weak var itemSelected: WKInterfaceLabel!
    var item = "No Item"
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
     
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        itemSelected.setText(item)
        super.willActivate()
     
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func didSelectItem(itemSelected: String) {
        self.item = itemSelected
    }
   
    @IBAction func presentItemChooser() {

        self.presentControllerWithName("ModalInterfaceController", context: self)
    
    }
}
