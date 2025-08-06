#import "ManagerIntegrityDecorator.h"
#import "BelowCycleAnimation.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface IgnoredBorderCreator : NSObject


- (void) skipCaptureFromOption;

- (void) restartCurveLoop;

@end

NS_ASSUME_NONNULL_END
        