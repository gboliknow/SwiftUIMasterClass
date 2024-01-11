//
//  RemindaWidgetBundle.swift
//  RemindaWidget
//
//  Created by Gbolahan on 15/07/2023.
//

import WidgetKit
import SwiftUI

@main
struct RemindaWidgetBundle: WidgetBundle {
    var body: some Widget {
        RemindaWidget()
        RemindaWidgetLiveActivity()
    }
}
