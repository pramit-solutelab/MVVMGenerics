//
//  Bindable.swift
//  Created by pramit D on 02/01/23.


import Foundation

class Bindable<T> {
    var value: T? {
        didSet {
            observer?(value)
        }
    }
    var observer: ((T?) -> ())?
    func bind(observer: @escaping (T?) -> ()) {
        self.observer = observer
    }
    
}
