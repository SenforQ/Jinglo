#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FetchSymbolSensor : NSObject

@property (nonatomic) NSString * particleOrStage;

@property (nonatomic) NSMutableSet * statePerValue;

@property (nonatomic) int tabviewCycleCenter;

+ (instancetype) fetchSymbolSensorWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) requestAndValue;

- (NSMutableDictionary *) factoryMediatorTag;

- (int) configurationViaStructure;

- (NSMutableSet *) ignoredAlphaFormat;

- (NSMutableArray *) finalViewIndex;

@end

NS_ASSUME_NONNULL_END
        