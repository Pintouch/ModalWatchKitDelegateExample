//
//  RowController.swift
//  ModalWatchKitExample
//
//  Created by Adrien Pinto on 13/05/2015.
//  Copyright (c) 2015 Comeet. All rights reserved.
//

import WatchKit

class TableRowController: NSObject{
    
    @IBOutlet weak var itemName: WKInterfaceLabel!
    
    func fillRow(itemName:String!){
        self.itemName.setText(itemName)
    }
    
    
    
}
