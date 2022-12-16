//
//  SecondViewController.swift
//  DataPassingUsingClosure
//
//  Created by Digvijay Nikam on 04/12/22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var firstNameTextfield: UITextField!
    
    @IBOutlet weak var lastnameTextfield: UITextField!
    
    @IBOutlet weak var courceNameTextfield: UITextField!
    
//MARK:- Closure declaration
    
    var dataOnSecondViewController : ((String,String,String) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

//MARK:- Button Navigation use to passData
    
    @IBAction func SVCBtn(_ sender: Any) {
        
        let firstName = self.firstNameTextfield.text
        let lastName = self.lastnameTextfield.text
        let courceName = self.courceNameTextfield.text
        
        guard let dataOnSecondViewController = dataOnSecondViewController else {
            print("No data Found")
            return
        }
        dataOnSecondViewController (firstName ?? "Abc",lastName ?? "Abc",courceName ?? "Abc")
        
        navigationController?.popViewController(animated: true)
    }
}
