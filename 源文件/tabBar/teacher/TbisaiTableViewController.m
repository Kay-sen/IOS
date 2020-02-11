//
//  bisaiTableViewController.m
//  tabBar
//
//  Created by D05 on 2019/5/30.
//  Copyright © 2019年 D04. All rights reserved.
//

#import "TbisaiTableViewController.h"
#import "Took.h"
#import "thvhViewController.h"

@interface TbisaiTableViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property(nonatomic,strong)NSArray *books;


@end

@implementation TbisaiTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tableView.rowHeight=90;
    self.tableView.dataSource=self;
    self.tableView.delegate=self;
    //self.navigationItem.title=@"图书列表";
}

-(NSArray *)books
{
    if(!_books){
        _books=[Took books];
    }
    return _books;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self performSegueWithIdentifier:@"tdetail" sender:self];
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    UIViewController *vc=segue.destinationViewController;
    NSLog(@"%@",[segue.destinationViewController class]);
    if([vc isKindOfClass:[thvhViewController class]]){
        thvhViewController *detailVc=(thvhViewController *)vc;
        NSIndexPath *Path=[self.tableView indexPathForSelectedRow];
        Took *book=self.books[Path.row];
        NSLog(@"%@",book.name);
        detailVc.book=book;
    }
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.books.count;
}



-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *ID=@"Tbook";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:ID];
    if(cell==nil){
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    Took *book=self.books[indexPath.row];
    cell.textLabel.text=book.name;
    cell.imageView.image=[UIImage imageNamed:book.icon];
    cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source



@end
