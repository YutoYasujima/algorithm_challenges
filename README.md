## README.mdについて
- VSCodeエディタを使用している場合は、ビュワーで見ていただけるとキレイに見れます。
[v]キーは単独で押下してください。
  - Windows/Linux：[Ctrl] + [k] => [v]
  - macOS：[Command] + [k] => [v]

## 環境構築
 - 「Dockerfile」のあるディレクトリまで移動し、下記のコマンドを実行してください。
 ```
 docker compose build
 ```

## 解答方法
 - 「algorithm_challenges」ディレクトリに各問題があります。
 - 「question.rb」に記載されている問題を読み、解答を記入してください。

## テスト実行
 - テストを実行することで「question.rb」に記入した解答の結果を確認できます。「failures」と「errors」が「0」であることを確認してください。
 - 実行コマンドは下記になります。「xxxx」はメソッド名に置き換えてください。
（「question.rb」のメソッドが「maximum_of_three_values」だった場合は、
「maximum_of_three_values_test.rb」になります。）
```
docker compose run --rm ruby ruby ./minitest/xxxx_test.rb
```
 - sample_answer.rbに解答例が記載されています（もっと効率の良い書き方があるかもしれません）。

## 問題一覧
 |No.|タイトル|レベル|ディレクトリ|作成日|
 |---:|:---|:---:|:---|:---|
 |001|三値の最大値|★☆☆☆☆|001_maximum_of_three_values|2024/12/11|