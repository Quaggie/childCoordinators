//
//  MainCoordinator.swift
//  ChildCoordinatorBasedCoordinator
//
//  Created by jonathan.p.bijos on 12/02/19.
//  Copyright © 2019 jonathan.p.bijos. All rights reserved.
//

import UIKit

final class MainCoordinator: NSObject, Coordinator {
  var childCoordinators: [Coordinator] = []
  var navigationController: UINavigationController

  init(navigationController: UINavigationController) {
    self.navigationController = navigationController
    super.init()
    navigationController.delegate = self
  }

  func start() {
    let vc = ViewController(coordinator: self)
    navigationController.pushViewController(vc, animated: false)
  }

  func goToDetailVC() {
    let detailCoordinator = DetailCoordinator(navigationController: navigationController)
    childCoordinators.append(detailCoordinator)
    detailCoordinator.start()
  }
}

extension MainCoordinator: UINavigationControllerDelegate {
  func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
    guard let fromViewController = navigationController.transitionCoordinator?.viewController(forKey: .from) else {
      return
    }
    if navigationController.viewControllers.contains(fromViewController) {
      return
    }
    if let viewController = fromViewController as? DetailViewController {
      childDidFinish(viewController.coordinator)
    }
  }
}
