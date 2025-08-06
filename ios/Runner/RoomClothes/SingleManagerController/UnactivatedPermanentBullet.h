#import "RestartBaselineError.h"
#import "AggregateCharacterContainer.h"
#import "TransitionProviderContainer.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UnactivatedPermanentBullet : NSObject


- (void) dispatchImmediateGrain;

- (void) composeBelowListenerFunction;

@end

NS_ASSUME_NONNULL_END
        