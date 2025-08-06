#import "ScrollableDelicateConstraint.h"
    
@interface ScrollableDelicateConstraint ()

@end

@implementation ScrollableDelicateConstraint

- (void) compareFixedLabel
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSMutableSet *usecaseBufferTag = [NSMutableSet set];
		for (int i = 5; i != 0; --i) {
			[usecaseBufferTag addObject:[NSString stringWithFormat:@"resourceLevelVelocity%d", i]];
		}
		NSInteger zonePatternSize =  [usecaseBufferTag count];
		//NSLog(@"sets= bussiness9 gen_set %@", bussiness9);
	});
}


@end
        