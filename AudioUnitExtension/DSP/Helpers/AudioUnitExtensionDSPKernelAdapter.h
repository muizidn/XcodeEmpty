//
//  AudioUnitExtensionDSPKernelAdapter.h
//  AudioUnitExtension
//
//  Created by Muis on 29/06/20.
//  Copyright © 2020 Muis. All rights reserved.
//

#import <AudioToolbox/AudioToolbox.h>

@class AudioUnitViewController;

NS_ASSUME_NONNULL_BEGIN

@interface AudioUnitExtensionDSPKernelAdapter : NSObject

@property (nonatomic) AUAudioFrameCount maximumFramesToRender;
@property (nonatomic, readonly) AUAudioUnitBus *inputBus;
@property (nonatomic, readonly) AUAudioUnitBus *outputBus;

- (void)setParameter:(AUParameter *)parameter value:(AUValue)value;
- (AUValue)valueForParameter:(AUParameter *)parameter;

- (void)allocateRenderResources;
- (void)deallocateRenderResources;
- (AUInternalRenderBlock)internalRenderBlock;

@end

NS_ASSUME_NONNULL_END
