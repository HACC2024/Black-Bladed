let imagePickerController = UIImagePickerController()
imagePickerController.delegate = self
imagePickerController.sourceType = .camera
present(imagePickerController, animated: true, completion: nil)