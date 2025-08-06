#import "BindSharedStoryboard.h"
#import "AnnotateCrudeInjection.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ImperativeManagerFilter : NSObject


- (void) deserializeAfterLocalizationCycle;

- (void) joinMainMetadataScope;

@end

NS_ASSUME_NONNULL_END
        