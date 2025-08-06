#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ResponseCombinerCreator : NSObject

@property (nonatomic) int materialForParam;

+ (instancetype) responseCombinerCreatorWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) globalLocalizationOrigin;

- (NSMutableDictionary *) advancedColumnOpacity;

- (int) queueNumberDepth;

- (NSMutableSet *) tweenEnvironmentOffset;

- (NSMutableArray *) specifierSinceJob;

@end

NS_ASSUME_NONNULL_END
        