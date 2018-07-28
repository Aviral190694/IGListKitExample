//
//  PostSectionController.swift
//  IGlistObjcToSwift
//
//  Created by Aviral Aggarwal on 28/07/18.
//  Copyright © 2018 Aviral Aggarwal. All rights reserved.
//

import UIKit
import IGListKit

class PostSectionController: ListSectionController {
  
  private var object: Post?
  private var cellsBeforeComments = 3
  
  override func numberOfItems() -> Int {
    let comments = object?.comments ?? []
    return cellsBeforeComments + comments.count
  }
  
  override func sizeForItem(at index: Int) -> CGSize {
    return CGSize(width: collectionContext!.containerSize.width, height: 55)
  }
  
  override func cellForItem(at index: Int) -> UICollectionViewCell {
//    guard let cell = collectionContext?.dequeueReusableCell(of: LabelCell.self, for: self, at: index) as? LabelCell else {
//      fatalError()
//    }
//    cell.text = object?.name
//    return cell
    let view = UICollectionViewCell()
    return view
  }
  
  override func didUpdate(to object: Any) {
    self.object = object as? Post
  }
  
  override func didSelectItem(at index: Int) {
//    if let identifier = object?.controllerIdentifier {
//      let storyboard = UIStoryboard(name: "Demo", bundle: nil)
//      let controller = storyboard.instantiateViewController(withIdentifier: identifier)
//      controller.title = object?.name
//      viewController?.navigationController?.pushViewController(controller, animated: true)
//    } else if let controller = object?.controllerClass.init() {
//      controller.title = object?.name
//      viewController?.navigationController?.pushViewController(controller, animated: true)
//    }
  }
}
