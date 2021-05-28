//
//  ViewModel.swift
//  TestAppDemo
//
//  Created by Aleksandar Geyman on 28.05.21.
//

import Foundation

class ViewModel: ViewModelProtocol {
    private let repository = TextValueRepository()

    func sendTextToApi(text: String) {
        let model = TextValue(text: text)
        repository.sendTextToApi(valueToPass: model)
    }
}
