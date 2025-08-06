#import "SignRestrictionTarget.h"
#import "MoveTextOwner.h"
#import "DeferredExceptionObserver.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FromStreamCoordinator : NSObject


- (void) accelerateBatchIncludeInteractor;

- (void) validateToLayoutCommand;

@end

NS_ASSUME_NONNULL_END
        