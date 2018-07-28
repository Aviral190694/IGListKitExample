//
//  ViewController.swift
//  IGlistObjcToSwift
//
//  Created by Aviral Aggarwal on 28/07/18.
//  Copyright © 2018 Aviral Aggarwal. All rights reserved.
//

import UIKit
import IGListKit

class ViewController: UIViewController {
  
  lazy var adapter: ListAdapter = {
    return ListAdapter(updater: ListAdapterUpdater(), viewController: self, workingRangeSize: 1)
  }()
  
  let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
  let data = [Post(username: "userA", comments: ["Luminous triangle",
                                                 "Awesome",
                                                 "Super clean",
                                                 "Stunning shot"]),
              Post(username: "userB", comments: ["The simplicity here is superb",
                                                 "thanks!",
                                                 "That's always so kind of you!",
                                                 "I think you might like this"]),
              Post(username: "userC", comments: ["So good"]),
              Post(username: "userD", comments: ["hope she might like it.",
                                                 "I love it."]),]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    collectionView.backgroundColor = UIColor(white: 0.95, alpha: 1)
    view.addSubview(collectionView)
    adapter.collectionView = collectionView
    adapter.dataSource = self
    
    // disable prefetching so cells are configured as they come on screen
    if #available(iOS 10.0, *) {
      collectionView.isPrefetchingEnabled = false
    }
  }
  
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    collectionView.frame = view.bounds
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
}

extension ViewController: ListAdapterDataSource {
  
  func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
    return data as [ListDiffable]
  }
  
  func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
    return PostSectionController()
  }
  
  func emptyView(for listAdapter: ListAdapter) -> UIView? {
    return nil
  }
  
}

