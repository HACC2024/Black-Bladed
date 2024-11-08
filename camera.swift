// Create a button in your storyboard or view file
// @IBOutlet weak var captureButton: UIButton!

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    @IBOutlet weak var captureButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        captureButton.addTarget(self, action: #selector(captureImage), for: .touchUpInside)
    }

    @objc func captureImage() {
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        imagePickerController.sourceType = .camera
        present(imagePickerController, animated: true, completion: nil)
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true, completion: nil)
        if let image = info[.originalImage] as? UIImage {
            // Do something with the captured image
        }
    }
}
