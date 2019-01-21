//
//  WriteViewController.swift
//  StoryBoard
//
//  Created by swuad_14 on 2019. 1. 16..
//  Copyright © 2019년 swuad_14. All rights reserved.
//
//  1:1문의 -> 글쓰기 

import UIKit

class WriteViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchUpCancleButton(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
        
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
/* //
 //  SignUpViewController.swift
 //  StoryBoard
 //
 //  Created by swuad_14 on 2019. 1. 16..
 //  Copyright © 2019년 swuad_14. All rights reserved.
 //
 // 글쓰기 에서 글을 쓰면 웹에서도 올리게! json파일을 쏘아올린 은시리의 작은공
 import UIKit
 import Alamofire
 
 class InquireUpViewController: UIViewController {
 
 
 
 @IBOutlet weak var inquereTexts: UITextView! //text연결하자!!
 
 // 취소버튼
 //???
 @IBAction func touchUpCancleButton(_ sender: UIButton) {
 self.presentingViewController?.dismiss(animated: true, completion: nil)
 }
 
 
 @IBAction func WriteButtonClick(_ sender: UIButton) {//글쓰기 버튼 눌렀을때
 let valid_elements:[String:UITextView] = ["문의":self.inquereTexts]
 
 var empty_elements = Array<String>()
 for (title,elm) in valid_elements {
 if elm.text == "" {
 empty_elements.append(title)
 }
 }
 
 
 //이름
 guard let inquireText: String = self.inquereTexts.text, let textData: Data = inquireText.data(using: .utf8) else {
 return
 }
 var request: URLRequest
 
 do {
 request = try URLRequest(url: "http://kmj.codegrapher.io/inquire/reservation/", method: .post)
 
 } catch {
 print("request 생성 실패 " + error.localizedDescription)
 return
 }
 
 request.setValue("application/json", forHTTPHeaderField: "Content-Type")
 
 let textInfo:Post = Post(text: inquireText)
 
 let encoder: JSONEncoder = JSONEncoder()
 
 let jsonData: Data
 do {
 jsonData = try encoder.encode(textInfo)
 } catch {
 print("json 데이터 변환 실패" + error.localizedDescription)
 return
 }
 
 request.httpBody = jsonData
 
 Alamofire.request(request).responseData { (response) in
 
 switch response.result {
 case .success(let data):
 
 // data -> 구조체로 바꿔보기
 
 // 구조체 변경 성공하고, 사용자 정보 가져오기 성공하면 그 후에 얼럿 보여주기
 
 
 let alert = UIAlertController(title: "", message: " 글쓰기가 완료되었습니다 ^^", preferredStyle: .alert)
 let ok = UIAlertAction(title: "확인", style: .default) { (ok) in
 self.presentingViewController?.dismiss(animated: true, completion: nil)
 // 확인 누르면 처음 페이지로 돌아가기
 }
 alert.addAction(ok)
 self.present(alert, animated: true, completion: nil)
 return
 
 case .failure(let error):
 print("요청 실패 " + error.localizedDescription)
 return
 }
 
 
 
 }
 //
 //                Alamofire.upload(multipartFormData: { (multipartFormData) in
 //
 //                    multipartFormData.append(idData, withName: "username")
 //                    multipartFormData.append(pwData, withName: "password")
 //                    multipartFormData.append(numData, withName: "studentID")
 //                    multipartFormData.append(deptData, withName: "dept")
 //                    multipartFormData.append(nameData, withName: "name")
 //
 //                }, to: "http://kmj.codegrapher.io/accounts/register/",
 //                   encodingCompletion: { encodingResult in switch encodingResult { case .success(let upload, _, _):
 //                    upload.responseJSON { response in debugPrint(response)
 //                    }
 //
 //                   case .failure(let encodingError):
 //                    print(encodingError)
 //                    }
 //
 //                })
 
 }
 
 
 
 override func viewDidLoad() {
 super.viewDidLoad()
 //signbit.layer.cornerRadius = 7
 // signView.layer.borderWidth = 1
 // Do any additional setup after loading the view.
 }
 
 
 
 }
 
 
 
*/
