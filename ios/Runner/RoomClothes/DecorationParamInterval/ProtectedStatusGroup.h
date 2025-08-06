#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ProtectedStatusGroup : NSObject

@property (nonatomic) NSString * textfieldProxyKind;

+ (instancetype) protectedStatusGroupWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) resultTaskAppearance;

- (NSMutableDictionary *) queryActivityFormat;

- (int) observerBufferCoord;

- (NSMutableSet *) completerForPrototype;

- (NSMutableArray *) cellWithState;

@end

NS_ASSUME_NONNULL_END
        