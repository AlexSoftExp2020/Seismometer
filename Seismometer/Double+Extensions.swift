//
//  Double+Extensions.swift
//  Seismometer
//
//  Created by Oleksii on 25.01.2025.
//

import Foundation

extension Double {
    func describeAsFixedLengthString(integerDigits: Int = 2, fractionDigits: Int = 2) -> String {
        self.formatted(
            .number.sign(strategy: .always()).precision(
                .integerAndFractionLength(integer: integerDigits, fraction: fractionDigits)
            )
        )
    }
}
