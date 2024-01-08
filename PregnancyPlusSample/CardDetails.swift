//
//  CardDetails.swift
//  PregnancyPlusSample
//
//  Created by Manasa on 07/12/23.
//

import Foundation

struct CardDetails {
    let id: UUID
    var title: String
    var img: String
    
    init(id: UUID = UUID(), title: String, img: String) {
        self.id = id
        self.title = title
        self.img = img
    }
}


extension CardDetails {
    static let sampleData: [CardDetails] =
    [
        CardDetails(title: "Hospital Bag",
                   img: "anime"),
        CardDetails(title: "Shop",
                   img: "anime"),
        CardDetails(title: "Kick Counter",
                   img: "anime"),
        CardDetails(title: "Contractions",
                   img: "anime"),
        CardDetails(title: "Feedback",
                   img: "anime")
    ]
    
    static let MeData: [CardDetails] =
    [
        CardDetails(title: "Guides",
                   img: "Me"),
        CardDetails(title: "My Weight",
                   img: "Me"),
        CardDetails(title: "My Bump",
                   img: "Me"),
        CardDetails(title: "Birth Plan",
                   img: "Me"),
        CardDetails(title: "Appointments",
                   img: "Me"),
        CardDetails(title: "To Do",
                   img: "Me")
    ]
    static let BabyData: [CardDetails] =
    [
        CardDetails(title: "Daily",
                   img: "baby"),
        CardDetails(title: "Weekly",
                   img: "baby"),
        CardDetails(title: "Scans",
                   img: "baby"),
        CardDetails(title: "Size",
                   img: "baby"),
        CardDetails(title: "Timeline",
                   img: "baby"),
        CardDetails(title: "Baby Names",
                   img: "baby")
    ]
    
}
