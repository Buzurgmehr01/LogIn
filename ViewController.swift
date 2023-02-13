//
//  ViewController.swift
//  login
//
//  Created by Temp on 15/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    @IBOutlet var logInButton: UIButton!
    let userName = "admin"
    let password = "12345"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordTextField.isSecureTextEntry = true
        userNameTextField.clearsOnBeginEditing = false
        passwordTextField.clearsOnBeginEditing = false
        logInButton.layer.cornerRadius = 10

    }


    @IBAction func LogIn(_ sender: Any) {
        if userNameTextField.text != userName || passwordTextField.text != password{
            let showAlert = UIAlertController(title: "EROR", message: "User Name or Password is not correct", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default)
            showAlert.addAction(okAction)
            
            present(showAlert, animated: true, completion: nil)
        } else if userNameTextField.text == userName && passwordTextField.text == password{
            let vc = storyboard?.instantiateViewController(withIdentifier: "WelcomeVC")
            self.navigationController?.pushViewController(vc!, animated: true)
        }
    }
    
    
    
    @IBAction func ForgotUserName(_ sender: Any) {
        let showAlert = UIAlertController(title: "Please try to keep it", message: "Your User Name is <\(userName)>", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        showAlert.addAction(okAction)
        
        present(showAlert, animated: true, completion: nil)
    }
    
    
    @IBAction func ForgotPassword(_ sender: Any) {
        let alert = UIAlertController(title: "Please try to keep it", message: "Your Password is <\(password)>", preferredStyle: .alert)
        let Action = UIAlertAction(title: "OK", style: .default)
        alert.addAction(Action)
        
        present(alert, animated: true, completion: nil)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first as? UITouch{
            view.endEditing(true)
        }
    }
}
