//
//  ViewController.swift
//  CoreDataStudy
//
//  Created by kimjitae on 2022/03/08.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    var container: NSPersistentContainer!
    
    @IBOutlet weak var taskTextField: UITextField!
    @IBOutlet weak var registerTextField: UITextField!
    @IBOutlet weak var contentTextField: UITextField!
    
    var tasks = [TaskList]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func registerBtn(_ sender: Any) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        self.container = appDelegate.persistentContainer
        
        guard let entity = NSEntityDescription.entity(forEntityName: "Task", in: self.container.viewContext) else { return }
        
        let person = NSManagedObject(entity: entity, insertInto: self.container.viewContext)
        
        person.setValue(taskTextField.text, forKey: "task")
        person.setValue(registerTextField.text, forKey: "person")
        person.setValue(contentTextField.text, forKey: "content")

        do {
            try self.container.viewContext.save()
        } catch {
            print(error.localizedDescription)
        }
        
        print(fetch())
    }
    
//    func fetchContact() {
//        do {
//            let contact = try self.container.viewContext.fetch(Task.fetchRequest())
//            print(contact)
//        } catch {
//            print(error.localizedDescription)
//        }
//    }
    
    func fetch() -> [NSManagedObject]{
        //1.AppDelegate 참조를 생성
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        //2.관리 객체 참조 만들기
        let context = appDelegate.persistentContainer.viewContext
        //3.ToDo 테이블에 작업을수행하기 위한 객체를 생성
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Task")
        //4.전체 데이터 가져오기
        let result = try! context.fetch(fetchRequest)
        
        return result
    }


}

