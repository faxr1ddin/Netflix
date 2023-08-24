//
//  Extensions.swift
//  Netflix
//
//  Created by Faxriddin Mo'ydinxonov on 21/08/23.
//

import Foundation

extension String {
    
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
