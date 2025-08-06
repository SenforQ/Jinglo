#import "NavigationParticleArray.h"
#import "MultiPriorityObserver.h"
#import "MediocreRectGroup.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HoldReusableRow : NSObject


- (void) unmarshalAutoAllocator;

- (void) streamUnmarshalForStateless;

@end

NS_ASSUME_NONNULL_END
        