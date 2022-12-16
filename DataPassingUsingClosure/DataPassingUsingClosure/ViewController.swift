//
//  ViewController.swift
//  DataPassingUsingClosure
//
//  Created by Digvijay Nikam on 04/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNamelabel: UILabel!
    
    @IBOutlet weak var lastNameLabel: UILabel!
    
    @IBOutlet weak var courceNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
//MARK:- Button Navigation use To Retrive Data From secondViewController
    
    @IBAction func btnClick(_ sender: Any) {
        var secondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        secondVC.dataOnSecondViewController = {(firstName, lastName, courceName) in
            
            self.firstNamelabel.text = firstName
            self.lastNameLabel.text = lastName
            self.courceNameLabel.text = courceName
        }
        navigationController?.pushViewController(secondVC, animated: true)
    }
}

