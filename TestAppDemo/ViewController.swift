//
//  ViewController.swift
//  TestAppDemo
//
//  Created by Aleksandar Geyman on 28.05.21.
//

import UIKit

// MVVM
// MVC
class ViewController: UIViewController {

    @IBOutlet private weak var customButton: UIButton!
    @IBOutlet private weak var customTextField: UITextField!
    @IBOutlet private weak var customLabel: UILabel! {
        didSet {
            customLabel.text = "Something to send to BE"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        test()
    }

    private func test() {

    }

    //    private func showRect() {
    //        let colorsArray: [Any] = [UIColor.red, UIColor.gray, UIColor.black, UIColor.purple, 10]
    //        let randomWidth = Int.random(in: 0...Int(view.frame.width))
    //        let randomHeight = Int.random(in: 0...Int(view.frame.height))
    //        let someView = UIView(frame: CGRect(x: randomWidth, y: randomHeight, width: randomWidth, height: randomHeight))
    //        guard let randomColor = colorsArray[Int.random(in: 0..<colorsArray.count)] as? UIColor else {
    //            print("IS not a color")
    //            return
    //        }
    //        someView.backgroundColor = randomColor
    //        view.addSubview(someView)
    //        view.bringSubviewToFront(someView)
    //    }

    @IBAction private func didTapOnButton(_ sender: Any) {
        if let textToPrint = customTextField.text {
            _ = PassedValue(text: textToPrint)
        }
    }
}

class MyNetworkingService {
    func sendTextToApi(valueToPass: PassedValue) {
        // doing sth
    }
}

// Model
struct PassedValue {
    let text: String
}
