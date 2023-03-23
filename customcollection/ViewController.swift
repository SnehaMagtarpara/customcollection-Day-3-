import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
   
    
    @IBOutlet weak var cv: UICollectionView!
    
    var image = [UIImage(named:"1"),UIImage(named:"2"),UIImage(named:"3"),UIImage(named:"4"),UIImage(named:"5"),UIImage(named:"6"),UIImage(named:"7")]
    
    var selectcell = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
}
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCollectionViewCell
    
        cell.img.image = image[indexPath.row]
        
        if selectcell == indexPath.row
        {
            cell.radioButton.image = UIImage(systemName: "circle.fill")
        }
        else
        {
            cell.radioButton.image = UIImage(systemName: "circle")
        }
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        selectcell = indexPath.row
        cv.reloadData()
    }
    
    

}
