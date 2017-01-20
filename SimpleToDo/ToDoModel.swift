class Task{
    let name:String
    let repeatTimes:Int
    
    init(name:String, repeatTimes:Int){ //생성자
        self.name = name
        self.repeatTimes = repeatTimes
    }

    deinit{//소멸자
        
    }
}


//반복적처리
class TodoModel{
    var arrayTask:[Task] //
    
    init(){
        self.arrayTask = []
    }
    
    func addNewTask(newTask:Task){
        self.arrayTask.append(newTask) // += newTask //error해결
    }
    
    //아래있는 메소드들을 구현하시오.
    func addNewTask(name:String, repeatCount:Int){
        //self.arrayTask.append(Task(name: name, repeatTimes: repeatCount))
        //위와 같은 사항
        self.addNewTask(newTask: Task(name: name, repeatTimes: repeatCount))
    }
    
    
    func removeTask(taskToRemovw:Task){
        //self.arrayTask.rem
    }
    func removeTask(atIndex:Int){
        self.arrayTask.remove(at:atIndex)
    }
    func modifyTask(currentTask:Task){
        
    }
}

