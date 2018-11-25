//
//  ViewController.m
//  TestBtn
//
//  Created by xuyou on 2018/7/30.
//  Copyright © 2018年 xuyou. All rights reserved.
//

#import "ViewController.h"
#import "TestCell.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (strong,nonatomic) UITableView *testTableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.testTableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.testTableView.delegate = self;
    self.testTableView.dataSource = self;
    [self.testTableView registerNib:[UINib nibWithNibName:@"TestCell.h" bundle:nil] forCellReuseIdentifier:@"testCell"];
    [self.view addSubview:self.testTableView];
}

//生成数据
- (void)creatData{
    for (NSInteger i = 0; i<50; i++) {
        
    }
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return  50;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TestCell *cell = [tableView dequeueReusableCellWithIdentifier:@"testCell" forIndexPath:indexPath];
    cell.dianzhanBtn setTitle:[NSString ] forState:<#(UIControlState)#>
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
