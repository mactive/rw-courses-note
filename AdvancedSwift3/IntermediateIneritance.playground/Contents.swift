//: Playground - noun: a place where people can play

import UIKit

struct Page {
    var words = 0
}

class Stroy {
    var title = ""
    var pages: [Page] = []
    
    func addPage(_ page:Page) {
        pages.append(page)
    }
}

class ShortStory: Stroy {
    var maxPageCount = 2
    
    override func addPage(_ page: Page) {
        if pages.count < maxPageCount {
            super.addPage(page)
        }
    }
}


var novel = Stroy()
novel.title = "novel"
novel.addPage(Page(words: 300))
novel.addPage(Page(words: 300))
novel.addPage(Page(words: 300))
novel.pages.count

var shortOne = ShortStory()
shortOne.title = "short novel"
shortOne.addPage(Page(words: 200))
shortOne.addPage(Page(words: 200))
shortOne.addPage(Page(words: 200))
shortOne.pages.count