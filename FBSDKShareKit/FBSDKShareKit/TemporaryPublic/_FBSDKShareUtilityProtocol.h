/*
 * Copyright (c) Meta Platforms, Inc. and affiliates.
 * All rights reserved.
 *
 * This source code is licensed under the license found in the
 * LICENSE file in the root directory of this source tree.
 */

NS_ASSUME_NONNULL_BEGIN

/**
 Internal Type exposed to facilitate transition to Swift.
 API Subject to change or removal without warning. Do not use.

 @warning INTERNAL - DO NOT USE
 */
typedef void (^ _FBSDKWebPhotoContentBlock)(BOOL, NSString *, NSDictionary<NSString *, id> *)
NS_SWIFT_NAME(_WebPhotoContentBlock);

/**
 Internal Type exposed to facilitate transition to Swift.
 API Subject to change or removal without warning. Do not use.

 @warning INTERNAL - DO NOT USE
 */
NS_SWIFT_NAME(_ShareUtilityProtocol)
@protocol _FBSDKShareUtility

+ (nullable NSDictionary<NSString *, id> *)feedShareDictionaryForContent:(id<FBSDKSharingContent>)content;

+ (void)buildAsyncWebPhotoContent:(FBSDKSharePhotoContent *)content
                completionHandler:(_FBSDKWebPhotoContentBlock)completion;

+ (void)buildWebShareContent:(id<FBSDKSharingContent>)content
                  methodName:(NSString *_Nonnull *_Nullable)methodNameRef
                  parameters:(NSDictionary<NSString *, id> *_Nonnull *_Nullable)parametersRef;

+ (nullable NSString *)hashtagStringFromHashtag:(nullable FBSDKHashtag *)hashtag;

+ (NSDictionary<NSString *, id> *)parametersForShareContent:(id<FBSDKSharingContent>)shareContent
                                              bridgeOptions:(FBSDKShareBridgeOptions)bridgeOptions
                                      shouldFailOnDataError:(BOOL)shouldFailOnDataError;

+ (void)testShareContent:(id<FBSDKSharingContent>)shareContent
           containsMedia:(nullable BOOL *)containsMediaRef
          containsPhotos:(BOOL *)containsPhotosRef
          containsVideos:(BOOL *)containsVideosRef;

+ (BOOL)shareMediaContentContainsPhotosAndVideos:(FBSDKShareMediaContent *)shareMediaContent;

+ (BOOL)validateShareContent:(id<FBSDKSharingContent>)shareContent
               bridgeOptions:(FBSDKShareBridgeOptions)bridgeOptions
                       error:(NSError *_Nullable *)errorRef;

@end

NS_ASSUME_NONNULL_END
