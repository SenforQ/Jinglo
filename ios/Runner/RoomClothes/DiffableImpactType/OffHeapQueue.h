#import "DownControllerTrigger.h"
#import "PromisePainterContainer.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface OffHeapQueue : NSObject


- (void) attachAsynchronousObserver;

- (void) inflateDisabledResult;

@end

NS_ASSUME_NONNULL_END
        