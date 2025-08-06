#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ActivityFormShape : NSObject

@property (nonatomic) NSMutableSet * largeReductionBottom;

+ (instancetype) activityFormShapeWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) indicatorPhaseInterval;

- (NSMutableDictionary *) eventAsOperation;

- (int) hashForStage;

- (NSMutableSet *) labelContextVisibility;

- (NSMutableArray *) descriptionFacadeType;

@end

NS_ASSUME_NONNULL_END
        