//
//  Coordinator.swift
//  ChildCoordinatorBasedCoordinator
//
//  Created by jonathan.p.bijos on 12/02/19.
//  Copyright © 2019 jonathan.p.bijos. All rights reserved.
//

import UIKit

protocol Coordinator: AnyObject {
  var childCoordinators: [Coordinator] { get set }
  var navigationController: UINavigationController { get set }
  func start()
}

extension Coordinator {
  func childDidFinish(_ child: Coordinator?) {
    for (index, coordinator) in childCoordinators.enumerated() {
      if coordinator === child {
        childCoordinators.remove(at: index)
        break
      }
    }
  }
}
