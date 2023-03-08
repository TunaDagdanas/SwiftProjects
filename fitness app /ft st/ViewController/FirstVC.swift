//
//  FirstVC.swift
//  ft st
//
//  Created by Tuna Dağdanaş on 4.08.2022.
//

import UIKit

class FirstVC: UIViewController {

    @IBOutlet weak var imgLogo: UIImageView!
    @IBOutlet weak var lblSignInTitle: UILabel!
    @IBOutlet weak var txtFieldUsername: UITextField!
    @IBOutlet weak var btnSignIn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        lblSignInTitle.textColor = UIColor.orange
        lblSignInTitle.layer.cornerRadius = 5
        btnSignIn.layer.cornerRadius = 5
        imgLogo.layer.cornerRadius = 15
        
    }

    @IBAction func btnSignInClicked(_ sender: UIButton) {
        print("\(txtFieldUsername.text)")
//        let alert = UIAlertController(title: "Alert", message: "Message", preferredStyle: .alert)
//        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
//            switch action.style{
//                case .default:
//                print("default")
//
//                case .cancel:
//                print("cancel")
//
//                case .destructive:
//                print("destructive")
//
//            }
//        }))
//        self.present(alert, animated: true, completion: nil)
    }
    
}

