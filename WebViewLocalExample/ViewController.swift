import UIKit

class ViewController: UIViewController, UIWebViewDelegate {
    
    var webView: UIWebView = UIWebView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // デリゲートを指定する
        self.webView.delegate = self;
        
//        // 全画面表示にする
//        self.webView.frame = self.view.bounds
        
        // サブビューを追加する
        self.view.addSubview(self.webView)
        
        // index.htmlのパスを取得する
        let path = Bundle.main.path(forResource: "index", ofType: "html")!
        let url = NSURL(string: path)!
        
        // リクエストを生成する
        let urlRequest = NSURLRequest(url : url as URL)
        
        // 指定したページを読み込む
        self.webView.loadRequest(urlRequest as URLRequest)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnWebView(_ sender: Any) {
        // 全画面表示にする
        self.webView.frame = self.view.bounds
    }
}
