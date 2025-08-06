#import "CancelDiffableButton.h"
#import "CleanPainterPolyfill.h"
#import "OldInterfaceSelector.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface InjectionTriggerDecorator : NSObject


- (void) cacheBaselineRect;

- (void) buildHierarchicalPreview;

@end

NS_ASSUME_NONNULL_END
        