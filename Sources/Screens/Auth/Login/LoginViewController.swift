//
//  LoginViewController.swift
//  spalahbook
//
//  Created by Michael on 7/12/18.
//  Copyright © 2018 Mission Edition. All rights reserved.
//

import UIKit

protocol LoginPresenterProtocol {
    func registrationClick()
    func login(email: String, password: String)
}

final class LoginViewController: UIViewController {
    @IBOutlet private  var greatingLabel: UILabel!
    @IBOutlet private var emailField: UITextField!
    @IBOutlet private var passwordField: UITextField!
    
    private var presenter: LoginPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        localizeUI()
        
        #if DEBUG
            emailField.text = "email"
            passwordField.text = "password"
        #endif
    }
    
    // MARK: - Attachments
    
    func attach(presenter: LoginPresenterProtocol) {
        self.presenter = presenter
    }
    
    func localizeUI() {
        greatingLabel.text = Text.authGreating()
    }
    
    // MARK: - IBActions
    
    @IBAction private func onLoginClick(_ sender: UIButton) {
        guard let email = emailField.text, let password = passwordField.text, !email.isEmpty, !password.isEmpty else {
            return
        }
        
        presenter?.login(email: email, password: password)
    }
    
    @IBAction private func onRegisterClick(_ sender: UIButton) {
        presenter?.registrationClick()
    }
}

// MARK: - LoginView

extension LoginViewController: LoginView {
    func handle(error: Error) {
        // should be alert or something
        print(error)
    }
}

// MARK: - UITextFieldDelegate

extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        switch textField {
        case emailField: passwordField.becomeFirstResponder()
        default: textField.resignFirstResponder()
        }
        
        return true
    }
}
