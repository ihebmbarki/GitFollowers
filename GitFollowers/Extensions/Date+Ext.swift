//
//  Date+Ext.swift
//  GitFollowers
//
//  Created by Iheb Mbarki on 29/7/2024.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateformatter = DateFormatter()
        dateformatter.dateFormat = "MMM yyyy"
        return dateformatter.string(from: self)
    }
}
