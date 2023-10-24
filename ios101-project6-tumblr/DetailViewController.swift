//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Gabriel Hübner on 10/23/23.
//
import Nuke
import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var captionLabel: UITextView!
    var post: Post!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
        captionLabel.text = post.caption.trimHTMLTags()
        if let photo = post.photos.first {
            let url = photo.originalSize.url
            Nuke.loadImage(with: url, into: postImage)
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
