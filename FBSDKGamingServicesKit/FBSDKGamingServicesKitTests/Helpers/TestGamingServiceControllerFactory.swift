/*
 * Copyright (c) Meta Platforms, Inc. and affiliates.
 * All rights reserved.
 *
 * This source code is licensed under the license found in the
 * LICENSE file in the root directory of this source tree.
 */

@testable import FBSDKGamingServicesKit
import Foundation

@objcMembers
final class TestGamingServiceController: GamingServiceControllerProtocol {
  var capturedArgument: String?

  func call(withArgument argument: String?) {
    capturedArgument = argument
  }
}

@objcMembers
class TestGamingServiceControllerFactory: NSObject, GamingServiceControllerCreating {
  var capturedServiceType: _GamingServiceType = .friendFinder
  var capturedCompletion: GamingServiceResultCompletion = { _, _, _ in }
  var capturedPendingResult: [String: Any]?
  var controller = TestGamingServiceController()

  func create(
    serviceType: _GamingServiceType,
    pendingResult: [String: Any]?,
    completion: @escaping GamingServiceResultCompletion
  ) -> GamingServiceControllerProtocol {
    capturedServiceType = serviceType
    capturedCompletion = completion
    capturedPendingResult = pendingResult

    return controller
  }
}
