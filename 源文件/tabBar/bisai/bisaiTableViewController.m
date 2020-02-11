//
//  bisaiTableViewController.m
//  tabBar
//
//  Created by D05 on 2019/5/30.
//  Copyright © 2019年 D04. All rights reserved.
//

#import "bisaiTableViewController.h"
#import "Book.h"
#import "DetailController.h"

@interface bisaiTableViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property(nonatomic,strong)NSArray *books;


@end

@implementation bisaiTableViewController

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
        _books=[Book books];
    }
    return _books;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self performSegueWithIdentifier:@"detail" sender:self];
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    UIViewController *vc=segue.destinationViewController;
    NSLog(@"%@",[segue.destinationViewController class]);
    if([vc isKindOfClass:[DetailController class]]){
        DetailController *detailVc=(DetailController *)vc;
        NSIndexPath *Path=[self.tableView indexPathForSelectedRow];
        Book *book=self.books[Path.row];
        NSLog(@"%@",book.name);
        detailVc.book=book;
    }
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.books.count;
}



-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *ID=@"book";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:ID];
    if(cell==nil){
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    Book *book=self.books[indexPath.row];
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



/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
