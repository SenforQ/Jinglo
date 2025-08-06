#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MobileTableResource : NSObject

@property (nonatomic) NSMutableDictionary * reducerForPhase;

+ (instancetype) mobileTableResourceWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) localizationBesideShape;

- (NSMutableDictionary *) missionModeHue;

- (int) compositionalTransitionLocation;

- (NSMutableSet *) requiredLocalizationState;

- (NSMutableArray *) baselineUntilStructure;

@end

NS_ASSUME_NONNULL_END
        