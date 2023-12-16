<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <title>お気に入りの本登録</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <style>
        div {
            margin-left: 10px;
            font-size: 16px;
        }
    </style>
</head>

<body>

    <!-- Head[Start] -->
    <header>
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header"><a class="navbar-brand" href="select.php">お気に入りの本を登録しよう🤗</a></div>
            </div>
        </nav>
    </header>
    <!-- Head[End] -->

    <!-- Main[Start] -->
    <form method="post" action="insert.php">
        <div class="jumbotron">
            <fieldset>
                <legend>お気に入りの本ブックマークアプリ</legend>
                <label>ユーザーID：<input type="text" name="user_id"></label><br>
                <label>書籍名：<input type="text" name="book_name"></label><br>
                <label>書籍URL：<input type="text" name="book_url"></label><br>
                <label>書評コメント:<br><textArea name="book_comment" rows="8" cols="80"></textArea></label><br>
                <input type="submit" value="送信">
            </fieldset>
        </div>
    </form>
    <!-- Main[End] -->


</body>

</html>
