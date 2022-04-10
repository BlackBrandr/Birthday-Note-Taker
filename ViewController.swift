//
//  ViewController.swift
//  BirthDayNoteTaker
//
//  Created by Burak Karataş on 5.10.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nametxtfield: UITextField!
    @IBOutlet weak var birthdaytxtfield: UITextField!
    @IBOutlet weak var namelbl: UILabel!
    @IBOutlet weak var birthdaylbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        // Casting - as? vs as! force casting
        // Any
        
        if let newName = storedName as? String {
            namelbl.text = "Name : \(newName)"
        }
        
        if let newBirhtday = storedBirthday as? String {
            birthdaylbl.text = "Birthday : \(newBirhtday)"
        }
        
    }
    
    @IBAction func save(_ sender: Any) {
        UserDefaults.standard.set(nametxtfield.text!, forKey: "name")
        UserDefaults.standard.set(birthdaytxtfield.text!, forKey: "birthday")
        
        namelbl.text = "Name : \(nametxtfield.text!)"
        birthdaylbl.text = "Birthday : \(birthdaytxtfield.text!)"
    }

    @IBAction func DELETE(_ sender: Any) {
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        // "" vs nil
        
        if (storedName as? String) != nil {
            
            UserDefaults.standard.removeObject(forKey: "name")
            namelbl.text = "Name : "
            
        }
        
        if (storedBirthday as? String) != nil {
            
            UserDefaults.standard.removeObject(forKey: "birthday")
            namelbl.text = "Birthday : "
        }
    }
    
}

