#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TransitionAsyncView : NSObject


- (void) measureFirstSize;

- (void) didFlexibleBuilderProcess;

- (void) resumeExpandedAndCoordinator: (NSMutableDictionary *)opaqueRowCoord;

@end

NS_ASSUME_NONNULL_END
        