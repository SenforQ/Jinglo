#import "CurveCombinerCreator.h"
#import "UnlockCardState.h"
#import "AdaptiveScaleGrid.h"
#import "SerializeBehaviorDelegate.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DelegateStageName : NSObject


- (void) releaseNotificationExceptReducer;

- (void) onBehaviorStore;

@end

NS_ASSUME_NONNULL_END
        