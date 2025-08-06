#import "DynamicSizedboxCollection.h"
    
@interface DynamicSizedboxCollection ()

@end

@implementation DynamicSizedboxCollection

- (void) overMusicStorage: (NSMutableDictionary *)nextTransitionTop
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSInteger routeOutsideLevel = nextTransitionTop.count;
		UITableView *seamlessLocalizationCount = [[UITableView alloc] init];
		[seamlessLocalizationCount setDelegate:self];
		[seamlessLocalizationCount setDataSource:self];
		[seamlessLocalizationCount setSeparatorStyle:UITableViewCellSeparatorStyleSingleLine];
		[seamlessLocalizationCount setRowHeight:48];
		NSString *titleStructureType = @"CellIdentifier";
		[seamlessLocalizationCount registerClass:[UITableViewCell class] forCellReuseIdentifier:titleStructureType];
		UIRefreshControl *gramActivityBottom = [[UIRefreshControl alloc] init];
		[gramActivityBottom addTarget:self action:@selector(refreshData:) forControlEvents:UIControlEventValueChanged];
		[seamlessLocalizationCount setRefreshControl:gramActivityBottom];
		if (routeOutsideLevel > 1) {
			// 当字典元素较多时，添加分页控件
			UIPageControl *pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
			pageControl.numberOfPages = routeOutsideLevel / 10 + 1;
			pageControl.currentPage = 0;
			[pageControl addTarget:self action:@selector(pageChanged:) forControlEvents:UIControlEventValueChanged];
		}
		//NSLog(@"Business18 gen_dic with count: %d%@", routeOutsideLevel);
	});
}


@end
        