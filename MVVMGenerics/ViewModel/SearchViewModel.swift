//  SearchViewModel.swift
//  MVVMGenerics
//  Created by pramit D on 02/01/23.
//

import Foundation

class AppsSearchViewModel {
    var appResults = Bindable<[Result]>()
    var isSearching = Bindable<Bool>()
    var timer: Timer?
    
    func performSearch(_ searchText: String) {
        timer?.invalidate()
        isSearching.value = true
            Service.shared.fetchApps(searchText: searchText) { [weak self] (res, err) in
                self?.appResults.value = res?.results ?? []
                self?.isSearching.value = false
            }
    }
}
