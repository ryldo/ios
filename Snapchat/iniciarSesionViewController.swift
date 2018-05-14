//
//  ViewController.swift
//  Snapchat
//
//  Created by Ryldo Quispe on 14/05/18.
//  Copyright © 2018 Ryldo Quispe. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class iniciarSesionViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
 
    @IBOutlet weak var iniciarSesionTapped: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    
    @IBAction func iniciarSesionTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            
            print("intentado iniciar sesion")
            
            if error != nil{
                
                print("Se presdento  el  siguiente error: \(error)")
                
            }else{
                
                print("Inicio  de Sesion  Exitoso")
                
            }
            
        }
        
    }
    }
    
   


