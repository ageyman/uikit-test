//
//  ViewController.swift
//  TestAppDemo
//
//  Created by Aleksandar Geyman on 28.05.21.
//

import UIKit

protocol ViewModelProtocol {
    func sendTextToApi(text: String)
}

class ViewController: UIViewController {

    private var viewModel: ViewModelProtocol?

    @IBOutlet private weak var customButton: UIButton!
    @IBOutlet private weak var customTextField: UITextField!
    @IBOutlet private weak var customLabel: UILabel! {
        didSet {
            customLabel.text = "Something to send to BE"
        }
    }


    @IBAction private func didTapOnButton(_ sender: Any) {
        if let typedText = customTextField.text {
            viewModel?.sendTextToApi(text: typedText)
        }
    }
}

protocol AuthUserViewModelProtocol {
    func logInUser(username: String, password: String)
    func registerUser()
    func forgotPassword()
}
