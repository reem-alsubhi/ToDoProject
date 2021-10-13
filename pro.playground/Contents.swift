enum Status {
    case completed
    case pending
}

enum Order {
    case none
    case byName
    case byCompleted
    case byNotCompleted
}


struct taskItem {
    var taskTitle: String
    var day : String
    var time : String
    var taskStatus: Status
}
class ToDo {
    var toDoList: [taskItem]
    init(toDoList : taskItem) {
        self.toDoList = [toDoList]
    }
    func addItem(item: taskItem) {
        toDoList.append(item)
       
    }
    func printByStatus(status: Status) {
        
        let filteredArray = self.toDoList.filter { $0.taskStatus == status }
        
        for item in filteredArray {
            print("Taks: \(item.taskTitle), status: \(item.taskStatus)")
        }
    }
    
    func printAll() {
        
        for item in toDoList {
            print (" Title \(item.taskTitle) ,  Day \(item.day) ,   Time \(item.time) ,  Taskstatus \(item.taskStatus)")
        }
    }
    
    
    //func deleteItem(index: Int) {
       // toDoList.remove(at: index)
           // print("deleted")
        
        
   // }

    func updateItem(item: taskItem , index : Int) {
        toDoList[index] = item
            print("updated")
        }
    func remove(index : Int){
        toDoList.remove(at: index)
    }
       
    
    
    
}
var t1 = ToDo (toDoList: taskItem.init(taskTitle: "home work", day: "sunday", time: "4:00pm", taskStatus: .completed))
t1.addItem(item: taskItem.init(taskTitle: "go to gym", day: "monday", time: "6:00pm", taskStatus: .completed))
t1.addItem(item: taskItem.init(taskTitle: "i sleep early", day: "monday", time: "10:00pm", taskStatus: .completed))
t1.addItem(item: taskItem.init(taskTitle: "morining exercicses", day: "fraidy", time: "8:00am", taskStatus: .completed))
t1.remove(index: 1)
t1.updateItem(item: taskItem.init(taskTitle: "visit family", day: "monday", time: "8:00pm", taskStatus: .pending), index: 0)
t1.printAll()



//t1.deleteItem(index: 1)
//t1.deleteItem(index: 0)
//t1.printAll(order: .byCompleted)
//t1.printAll(order:.byName)
t1.printByStatus(status: .completed)

