#import "GrainThresholdHelper.h"
#import "CacheEphemeralMonster.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ExceptionWrapperCache : NSObject


- (void) updateFromBuilderPhase;

- (void) unmountCompletionWithDuration;

@end

NS_ASSUME_NONNULL_END
        