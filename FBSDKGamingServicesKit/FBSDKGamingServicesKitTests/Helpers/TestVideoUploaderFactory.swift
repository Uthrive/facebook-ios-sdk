/*
 * Copyright (c) Meta Platforms, Inc. and affiliates.
 * All rights reserved.
 *
 * This source code is licensed under the license found in the
 * LICENSE file in the root directory of this source tree.
 */

@testable import FBSDKGamingServicesKit
import Foundation

class TestVideoUploaderFactory: VideoUploaderCreating {

  var capturedVideoName: String?
  var capturedVideoSize: UInt?
  var capturedParameters = [String: Any]()
  var capturedDelegate: _VideoUploaderDelegate?
  var stubbedVideoUploader = TestVideoUploader()

  func create(
    videoName: String,
    videoSize: UInt,
    parameters: [String: Any],
    delegate: _VideoUploaderDelegate
  ) -> VideoUploading {
    capturedVideoName = videoName
    capturedVideoSize = videoSize
    capturedParameters = parameters
    capturedDelegate = delegate

    return stubbedVideoUploader
  }
}
