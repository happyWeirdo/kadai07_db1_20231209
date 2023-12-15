<?php

/**
 * 12月9日のphp授業内容
 * 1. index.phpのフォームの部分がおかしいので、ここを書き換えて、
 * insert.phpにPOSTでデータが飛ぶようにしてください。
 * 2. insert.phpで値を受け取ってください。
 * 3. 受け取ったデータをバインド変数に与えてください。
 * 4. index.phpフォームに書き込み、送信を行ってみて、実際にPhpMyAdminを確認してみてください！
 */

//1. POSTデータ取得
$book_name = $_POST['book_name'];
$book_url = $_POST['book_url'];
$book_comment = $_POST['book_comment'];

//2. DB接続します
try {
  //ID:'root', Password: xamppは 空白 ''  "xampp"
  $pdo = new PDO('mysql:dbname=kadai_db1;charset=utf8;host=localhost','root','');
} catch (PDOException $e) {
  exit('DBConnectError:'.$e->getMessage());
}

//３．データ登録SQL作成

// 1. SQL文を用意
$stmt = $pdo->prepare("
    INSERT INTO
        gs_bm_table(unique_id, book_name, book_url, book_comment, reg_datetime)
    VALUES (
        NULL, :book_name, :book_url, :book_comment, sysdate()
        )");

//  2. バインド変数を用意
// Integer 数値の場合 PDO::PARAM_INT
// String文字列の場合 PDO::PARAM_STR
// セキュリティ上の処理

$stmt->bindValue(':book_name', $book_name, PDO::PARAM_STR);
$stmt->bindValue(':book_url', $book_url, PDO::PARAM_STR);
$stmt->bindValue(':book_comment', $cbook_comment, PDO::PARAM_STR);

//  3. 実行
// 失敗するとfalse、成功するとtrueが出てくる
$status = $stmt->execute();

//４．データ登録処理後
if($status === false){
  //SQL実行時にエラーがある場合（エラーオブジェクト取得して表示）
  $error = $stmt->errorInfo();
  exit('ErrorMessage:'.$error[2]);
}else{
  //５．index.phpへリダイレクト(再度表示する)
  // 成功した場合
  // echo 'test';
  header('Location: index.php');

}
?>
