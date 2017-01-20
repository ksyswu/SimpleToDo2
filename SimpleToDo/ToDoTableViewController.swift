import UIKit //투두테이블뷰는 테이블뷰를 관리하는것
//투부모델뷰는 징검 다리역할임 유아잉테이블뷰와 투두모델을 중간에서 연결하는것 스파게티코드를 막기위해 투두모델의 내용을 가져와 유아이테이블뷰에서 셀로 보여줌 mvc기법임

class ToDoTalbeViewController : UITableViewController { //상속 child : parent
    var modelTodo = TodoModel() //모델의 인스턴스 생성
   
    override func viewDidLoad(){ //함수에 메소드가 있기에 재정의하기위해
        super.viewDidLoad()//뷰가 메모리에 올라왔어, 만들어짐
        
        //만들어진후 Task를 만들어 넣음, 초기화작업
        self.modelTodo.addNewTask(name:"첫작업", repeatCount:1)
        self.modelTodo.addNewTask(newTask: Task(name:"산책", repeatTimes:1))
        
        print("해야 할 일 : \(self.modelTodo.arrayTask.count)") //2개가있음을 확인
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int{
        return 1 //섹션의 개수
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int)-> Int {
        return self.modelTodo.arrayTask.count //섹션의 개수에 따른 모델배열에 있는 개수들을 셀로가져오는것
    }
    
    
    //배열에 있는 한글값이 나오도록 하는것
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->UITableViewCell {
        
        
        let task = self.modelTodo.arrayTask[indexPath.row] ///인덱스가 0일때와 1일때
        let cell = UITableViewCell(style: .value1/*UITableViewCellStyle.value1*/ /*subtitle*/, reuseIdentifier: nil)
        //13개씪 호출 화면에 보여지는 개수씩
        
        cell.textLabel?.text = task.name
        cell.detailTextLabel?.text = " \(task.repeatTimes) 회 남음"
        return cell;
    }
    
    /*
     
     override func numberOfSections(in tableView: UITableView) -> Int{
     return 10 //섹션
     }
     override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int)-> Int {
     return 5 //로우
     }
     
     
     //배열대로 row 가 나옴
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->UITableViewCell {
        
     
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil) //13개씪 호출 화면에 보여지는 개수씩
       
        /*
        if let label = cell.textLabel{
            label.text = "row: \(indexPath.row) section: \(indexPath.section)"
        }
        */
        
        cell.textLabel?.text = "row: \(indexPath.row) section: \(indexPath.section)" //?는 옵셔널 따라서 위에대로하는 것이 원칙
        return cell;
    }
    */
    
}

//테이블뷰는 섹션, 로우, 셀 이렇게 3가지로 나누어져 있음 그룹을 나타내는 섹셕 로우는 섹션에 있는 셀의 모음 셀은 화면에 보여지는것
