enum Status {
    case completed
    case pending
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
    
    func printAll() {
        for item in toDoList {
            print("Task Title: \(item.taskTitle), the day \(item.day) at \(item.time) status: \(item.taskStatus)")
        }
    }
    func deleteItem(index: Int) {
        toDoList.remove(at: index)
    }
    func updateItem(item: taskItem , index : Int) {
        toDoList[index] = item
    }
}

var t1 = ToDo (toDoList: taskItem.init(taskTitle: "home work", day: "sunday", time: "4:00pm", taskStatus: .completed))
t1.addItem(item: taskItem.init(taskTitle: "go to gym", day: "monday", time: "6:00pm", taskStatus: .pending))
t1.updateItem(item: taskItem.init(taskTitle: "go to gym", day: "monday", time: "8:00pm", taskStatus: .pending), index: 1)
t1.deleteItem(index: 0)
t1.printAll()


