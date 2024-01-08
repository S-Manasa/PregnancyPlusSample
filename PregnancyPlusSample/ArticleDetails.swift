//
//  ArticleDetails.swift
//  PregnancyPlusSample
//
//  Created by Manasa on 05/01/24.
//

import Foundation

struct ArticleDetails {
    let id: UUID
    var title: String
    var img: String
    var content: String
    
    init(id: UUID = UUID(), title: String, img: String, content: String) {
        self.id = id
        self.title = title
        self.img = img
        self.content = content
    }
}


extension ArticleDetails: Identifiable,Hashable {
    static let articleData: [ArticleDetails] =
    [
        ArticleDetails(title: "Pregnancy Article Details",
                       img: "article",
                       content: """
An unborn baby spends around 38 weeks in the womb, but the average length of pregnancy (gestation) is counted as 40 weeks.

This is because pregnancy is counted from the first day of the woman’s last period, not the date of conception, which generally occurs 2 weeks later.

Pregnancy is roughly divided into 3 stages known as trimesters of about 3 months each :

first trimester – conception to 12 weeks
second trimester – 13 to 27 weeks
third trimester – 28 to 40 weeks.
Length of pregnancy can vary between women – babies are considered 'full term' if they are born anywhere between 37-42 weeks.
"""),
    ArticleDetails(title: "Pregnancy Article Details",
                   img: "article",
                   content: """
An unborn baby spends around 38 weeks in the womb, but the average length of pregnancy (gestation) is counted as 40 weeks.

This is because pregnancy is counted from the first day of the woman’s last period, not the date of conception, which generally occurs 2 weeks later.

Pregnancy is roughly divided into 3 stages known as trimesters of about 3 months each :

first trimester – conception to 12 weeks
second trimester – 13 to 27 weeks
third trimester – 28 to 40 weeks.
Length of pregnancy can vary between women – babies are considered 'full term' if they are born anywhere between 37-42 weeks.
"""),
        ArticleDetails(title: "Pregnancy Article Details",
                       img: "article",
                       content: """
    An unborn baby spends around 38 weeks in the womb, but the average length of pregnancy (gestation) is counted as 40 weeks.

    This is because pregnancy is counted from the first day of the woman’s last period, not the date of conception, which generally occurs 2 weeks later.

    Pregnancy is roughly divided into 3 stages known as trimesters of about 3 months each :

    first trimester – conception to 12 weeks
    second trimester – 13 to 27 weeks
    third trimester – 28 to 40 weeks.
    Length of pregnancy can vary between women – babies are considered 'full term' if they are born anywhere between 37-42 weeks.
    """),
        ArticleDetails(title: "Pregnancy Article Details",
                       img: "article",
                       content: """
    An unborn baby spends around 38 weeks in the womb, but the average length of pregnancy (gestation) is counted as 40 weeks.

    This is because pregnancy is counted from the first day of the woman’s last period, not the date of conception, which generally occurs 2 weeks later.

    Pregnancy is roughly divided into 3 stages known as trimesters of about 3 months each :

    first trimester – conception to 12 weeks
    second trimester – 13 to 27 weeks
    third trimester – 28 to 40 weeks.
    Length of pregnancy can vary between women – babies are considered 'full term' if they are born anywhere between 37-42 weeks.
    """)
    
]
}
    
