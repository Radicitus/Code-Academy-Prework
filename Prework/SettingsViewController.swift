//
//  SettingsViewController.swift
//  Prework
//
//  Created by Cameron Sherry on 3/9/21.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var darkModeSwitch: UISwitch!
    
    
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    //Enable/Disable dark mode
    @IBAction func toggleDarkMode(_ sender: Any) {
        let isDarkModeOn = defaults.bool(forKey: "isDarkModeOn")
        
        if isDarkModeOn {
            defaults.set(false, forKey: "isDarkModeOn")
        } else {
            defaults.set(true, forKey: "isDarkModeOn")
        }
        defaults.synchronize()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let isDarkModeOn = defaults.bool(forKey: "isDarkModeOn")
        
        if isDarkModeOn {
            overrideUserInterfaceStyle = .dark
            darkModeSwitch.setOn(true, animated: true)
        } else {
            overrideUserInterfaceStyle = .light
            darkModeSwitch.setOn(false, animated: true)
        }
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
