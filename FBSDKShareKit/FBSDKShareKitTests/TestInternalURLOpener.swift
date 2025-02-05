/*
 * Copyright (c) Meta Platforms, Inc. and affiliates.
 * All rights reserved.
 *
 * This source code is licensed under the license found in the
 * LICENSE file in the root directory of this source tree.
 */

import Foundation

@objcMembers
final class TestInternalURLOpener: NSObject, _ShareInternalURLOpening {
  var canOpenURL = false
  var computeCanOpenURL: ((URL) -> Bool)?

  func canOpen(_ url: URL) -> Bool {
    computeCanOpenURL?(url) ?? canOpenURL
  }
}
