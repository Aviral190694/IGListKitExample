//
//  Post.swift
//  IGlistObjcToSwift
//
//  Created by Aviral Aggarwal on 28/07/18.
//  Copyright © 2018 Aviral Aggarwal. All rights reserved.
//

import Foundation
import IGListKit

class Post: NSObject{
  
  var username: String
  var comments: [String]
  
  init(username: String, comments: [String]) {
    self.username = username
    self.comments = comments
  }
}

extension Post: ListDiffable {
  
  func diffIdentifier() -> NSObjectProtocol {
    return self
  }
  
  func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
    return isEqual(object)
  }
  
}
