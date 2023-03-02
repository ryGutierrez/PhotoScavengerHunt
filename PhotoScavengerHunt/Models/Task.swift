//
//  Task.swift
//  lab-task-squirrel
//
//  Created by Charlie Hieger on 11/15/22.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Favorite Hangout Spot",
                 description: "Where is your go to place to spend time with family, friends, or just yourself?"),
            Task(title: "Favorite Restaurant",
                 description: "Where is your first choice for a cooked meal?"),
            Task(title: "Favorite Hiking Spot",
                 description: "Where do you go to walk around and be one with nature?"),
            Task(title: "Favorite Cafe", description: "Where is your favorite place to get a cup of coffee?")
        ]
    }
}
