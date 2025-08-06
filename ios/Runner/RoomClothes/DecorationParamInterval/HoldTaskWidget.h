#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HoldTaskWidget : NSObject

@property (nonatomic) int frameValueVisibility;

@property (nonatomic) NSMutableArray * fixedSwitchShade;

+ (instancetype) holdTaskWidgetWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) textFromFunction;

- (NSMutableDictionary *) iconPatternBrightness;

- (int) crucialAlignmentTransparency;

- (NSMutableSet *) statefulWithScope;

- (NSMutableArray *) grainOperationPadding;

@end

NS_ASSUME_NONNULL_END
        