//
//  ViewController.swift
//  IOS-Swift-ReadySlideInMenu
//
//  Created by Pooya on 2018-11-24.
//  Copyright © 2018 Sooni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menuSelectionView: UILabel!
    let slideInHandler = SooninSlideInHandler()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slideInHandler.selectionDelegate = self
        
    }

    @IBAction func slideInMenuAction(_ sender: UIBarButtonItem) {
        
        var myMenuSetting : [Setting] = []
        myMenuSetting.append(Setting(name: "New", imageName: "Addicon32x32"))
        myMenuSetting.append(Setting(name: "Help", imageName: "Helpicon32x32"))
        myMenuSetting.append(Setting(name: "Send", imageName: "Send32x32"))
        myMenuSetting.append(Setting(name: "Save", imageName: "Save32x32"))
        myMenuSetting.append(Setting(name: "Settings", imageName: "Settings32x32"))
        myMenuSetting.append(Setting(name: "Lock", imageName: "Lock32x32"))
        myMenuSetting.append(Setting(name: "Cancel", imageName: "Cancel32x32"))
        
        slideInHandler.settings = myMenuSetting
        slideInHandler.menuBackColor = UIColor.white

        slideInHandler.showSlideInMenu(menuSide: .Left)
        
    }
    
}

extension ViewController: SelectionDelegate {
    func didTapSelect(menuSelection: String, description: String) {
        print("Selection: \(menuSelection)")
        menuSelectionView.text = description
        //TODO: triger action for selection
    }
    
}

