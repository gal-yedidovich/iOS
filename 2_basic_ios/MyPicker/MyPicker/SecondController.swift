import UIKit
class SecondController : UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{
    
    let stuff = ["Apple",
                 "Seven",
                 "Bar",
                 "Heart",
                 "Cherry",
                 "Grapes",
                 "Bananas",
                 "Diamond",
                 "Groot"];
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3;
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return stuff.count;
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return stuff[row];
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("\(component), \(row) : \(stuff[row])");
    }
}
