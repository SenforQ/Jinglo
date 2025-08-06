#import "AboveStatefulSorter.h"
#import "WithRequestAmortization.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ActiveLatencyDelegate : NSObject


- (void) unregisterOtherMargin;

- (void) rectifyScreenAndFilter;

@end

NS_ASSUME_NONNULL_END
        