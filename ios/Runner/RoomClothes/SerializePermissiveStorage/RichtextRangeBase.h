#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RichtextRangeBase : NSObject


- (void) continueLimitForProvider;

- (void) endNibInChannel: (NSMutableSet *)configurationAgainstPhase;

- (void) disconnectPositionedOutsideElement;

- (void) presentSingleView;

@end

NS_ASSUME_NONNULL_END
        