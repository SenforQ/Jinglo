#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface StatefulImmutableInstruction : NSObject

@property (nonatomic) int sessionOperationKind;

@property (nonatomic) NSMutableArray * layoutActivityScale;

@property (nonatomic) NSMutableDictionary * unactivatedTweenSpacing;

+ (instancetype) statefulImmutableInstructionWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) taskOutsideAdapter;

- (NSMutableDictionary *) controllerVariableBound;

- (int) statefulQueueOpacity;

- (NSMutableSet *) globalStampFlags;

- (NSMutableArray *) channelEnvironmentDelay;

@end

NS_ASSUME_NONNULL_END
        