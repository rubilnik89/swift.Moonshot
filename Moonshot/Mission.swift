//
//  Mission.swift
//  Moonshot
//
//  Created by Roman Zherebko on 03.06.2022.
//

import Foundation

struct Mission: Codable, Identifiable {
    struct CrewRole: Codable {
        let name: String
        let role: String
    }
    
    let id: Int
    let description: String
    let launchDate: Date?
    let crew: [CrewRole]
    
    var formattedLaunchDate: String {
        launchDate?.formatted(date: .abbreviated, time: .omitted) ?? "N/A"
    }
    
    var formattedLaunchDateMissionView: String {
        launchDate?.formatted(date: .complete, time: .omitted) ?? "N/A"
    }
    
    var displayName: String {
        "Apollo \(id)"
    }
    
    var image: String {
        "apollo\(id)"
    }
}
