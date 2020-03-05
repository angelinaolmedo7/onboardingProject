//
//  DateExtensions.swift
//  onboardingProject
//
//  Created by Angelina Olmedo on 3/5/20.
//  Copyright © 2020 Angelina Olmedo. All rights reserved.
//

import Foundation

extension Date {
    var stringValue: String {
        if self.isToday {
            return "Today"
        }
        else if self.isYesterday {
            return "Yesterday"
        }
        return DateFormatter.localizedString(from: self, dateStyle: .medium, timeStyle: .none)
    }

    var isToday: Bool {
        let calendar = Calendar.current
        return calendar.isDateInToday(self)
    }

    var isYesterday: Bool {
        let calendar = Calendar.current
        return calendar.isDateInYesterday(self)
    }
}
