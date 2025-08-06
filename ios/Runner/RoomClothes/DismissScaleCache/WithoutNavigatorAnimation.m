#import "WithoutNavigatorAnimation.h"
    
@interface WithoutNavigatorAnimation ()

@end

@implementation WithoutNavigatorAnimation

- (void) belowSineFragments: (NSMutableDictionary *)batchTempleOffset
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSInteger autoBorderState = batchTempleOffset.count;
		UITableView *builderAdapterSize = [[UITableView alloc] init];
		[builderAdapterSize setDelegate:self];
		[builderAdapterSize setDataSource:self];
		[builderAdapterSize setSeparatorStyle:UITableViewCellSeparatorStyleSingleLine];
		[builderAdapterSize setRowHeight:41];
		NSString *injectionPhaseDuration = @"CellIdentifier";
		[builderAdapterSize registerClass:[UITableViewCell class] forCellReuseIdentifier:injectionPhaseDuration];
		UIRefreshControl *usageExceptInterpreter = [[UIRefreshControl alloc] init];
		[usageExceptInterpreter addTarget:self action:@selector(refreshData:) forControlEvents:UIControlEventValueChanged];
		[builderAdapterSize setRefreshControl:usageExceptInterpreter];
		if (autoBorderState > 10) {
			// 当字典元素较多时，添加分页控件
			UIPageControl *pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
			pageControl.numberOfPages = autoBorderState / 10 + 1;
			pageControl.currentPage = 0;
			[pageControl addTarget:self action:@selector(pageChanged:) forControlEvents:UIControlEventValueChanged];
		}
		//NSLog(@"Business18 gen_dic with count: %d%@", autoBorderState);
	});
}


@end
        