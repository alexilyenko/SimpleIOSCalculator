//
//  SettingsViewController.swift
//  SimpleCalculator
//
//  Created by Alex Ilyenko on 8/5/18.
//  Copyright © 2018 Alex Ilyenko. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var mySwitch: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()
        mySwitch.isOn = UserDefaults.standard.bool(forKey: "enableWaits")
    }

    @IBAction func toggleSwitch(_ sender: UISwitch) {
        UserDefaults.standard.set(sender.isOn, forKey: "enableWaits")
    }
}
