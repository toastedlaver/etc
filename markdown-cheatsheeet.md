# Markdown チートシート

## 見出し (`<h1>` 〜 `<h6>`)
- テキスト
  ```
  # 見出し レベル1
  ## 見出し レベル2
  ### 見出し レベル3
  #### 見出し レベル4
  ##### 見出し レベル5
  ###### 見出し レベル6
  ```

## 見出し (別記法)
行頭に `=`, `-` を一つ以上書くと、その上の行が `<h1>` `<h2>`になる。
- テキスト
  ```
  見出し レベル1
  =
  
  見出し レベル2
  -
  ```

これのお影で「水平線」を入れたつもりが見出しになってしまうことも…
- テキスト
  ```
  文章
  ----------
  ```
は **見出しになってしまう** ので注意。

水平線を入れる場合は空行を挟むこと
- テキスト
  ```
  文章

  ----------
  ```
- 結果
  文章

  ----------


## 段落
通常の文章は段落となり `<a>`〜`</a>` で囲まれる。
空行を挟むと別のブロックになる。
- テキスト
  ```
  文章1
  文章2

  文章3
  文章4
  ```

- 結果
  文章1
  文章2

  文章3
  文章4

## 改行
改行を入れても改行されるとは限らない。
改行を入れる場合は行末にスペース 2 つをつけるか、 `<br>` タグを書く
- テキスト
  ```
  文章1
  文章2
  文章3  
  文章4
  文章5<br>文章6
  ```
  <small>文章3の後にスペース2つがある</small>

- 結果
  文章1
  文章2
  文章3  
  文章4
  文章5<br>文章6

## 水平線
3つ以上の `*` `-` `_`
- テキスト
  ```
  ***
  ----
  _____
  ```
- 結果
  ***
  ----
  _____

間に空白を入れても良い
- テキスト
  ```
  * * *
  - - --
  __ ___
  ```
- 結果
  * * *
  - - --
  __ ___

## コメント
テキストに存在するが、HTML等に変換した時は表示されない
- テキスト
  ```
  <!-- コメント -->
  ```
- 結果
  <!-- コメント -->

## 強調
`*` か `_` で囲む
### `<em>` 〜 `</em>` (通常はイタリック)
- テキスト
  ```
  *イタリック1*
  _イタリック2_
  ```
- 結果
  *イタリック1*
  _イタリック2_

### `<strong>` 〜 `</strong>` (通常は太字)
- テキスト
  ```
  **太字1**
  __太字2__
  ```
- 結果
  **太字**
  __太字2__

### `<em><strong>` 〜 `</strong></em>` (通常はイタリック+太字)
- テキスト
  ```
  ***両方1***
  ___両方2___
  ```
- 結果
  ***両方***
  ___両方2___

### 下線
書式では対応していないので `<u>` タグを使う
- テキスト
  ```
  <u>下線</u>
  ```
- 結果
  <u>下線</u>

## 打ち消し線
`~~` で囲むと `<del>` 〜 `</del>` になる **※GFM のみ**
- テキスト
  ```
  ~~打ち消し~~
  ```
- 結果
  ~~打ち消し~~

## エスケープ
### メタ文字を表示する場合
`\` を前に置く
- テキスト
  ```
  \*エスケープしているのでイタリックになりません\*
  ```
- 結果
  \*エスケープしているのでイタリックになりません\*

### `\` をエスケープする場合
- テキスト
  ```
  \\バックスラッシュを表示\\
  ```
- 結果
  \\バックスラッシュを表示\\

## リンク
### URL を書く
**※GFMのみ**
- テキスト
  ```
  https://www.google.com
  ```
- 結果
  https://www.google.com

### URL を `<>` で囲む
- テキスト
  ```
  <https://www.google.com>
  ```
- 結果
  <https://www.google.com>

リンク名 <small>*org-mode と逆なんだよなぁ…。*</small>

### 別名をつける
- テキスト
  ```
  [Google](https://www.google.com)
  ```
- 結果
  [Google](https://www.google.com)

### タイトル (リンクにマウスを乗せた時に表示)
- テキスト
  ```
  [こちら](https://www.google.com "ググレカス")
  ```
- 結果
  [こちら](https://www.google.com "ググレカス")

### リンク定義
複数箇所で同じリンクを使用する時など
- テキスト
  ```
  [Google]: https://www.google.com
  検索してね→ [Google]
  ```
- 結果
  [Google]:https://www.google.com
  検索してね→ [Google]

## 画像
*AltMessage* は画像の alt 属性に設定される
- テキスト
  ```
  ![AltMessage](https://www.google.com/logos/doodles/2026/world-cup-2026-the-art-of-the-sliding-tackle-71-6753651837111289-law.gif)
  ```
- 結果
  ![AltMessage](https://www.google.com/logos/doodles/2026/world-cup-2026-the-art-of-the-sliding-tackle-71-6753651837111289-law.gif)

## 引用
- テキスト
  ```
  > 引用
  >> 引用の引用もできる
  ```
- 結果
  > 引用
  >> 引用の引用もできる

## 番号なしリスト
`*` `-` `+` の後にスペースを1〜4個入れること。混ざっていても問題なし
- テキスト
  ```
  * リスト1
  -  リスト2
  +    リスト3
  ```
- 結果
  * リスト1
  -  リスト2
  +    リスト3

元の位置から0〜3個字下げすると一段ネストする
- テキスト
  ```
  * リスト1
    - リスト2
  + リスト3
  ```
- 結果
  * リスト1
    - リスト2
  + リスト3

## 番号付きリスト
`1.` か `1)` で始めると、後の番号は勝手に振られる
- テキスト
  ```
  1. リスト1
     1) リスト2
     5) リスト3
  0. リスト4
  ```
- 結果
  1. リスト1
     1) リスト2
     5) リスト3
  0. リスト4

## チェックボックス
- テキスト
  ```
  - [ ] 未チェック
  - [X] チェック
  ```
- 結果
  - [ ] 未チェック
  - [X] チェック

<small>*org-modeならエディタ上でトグルできるんだけどなぁ…*</small>

## コードスパン
コードスパン内でバッククォートを使う場合、使うバッククォート数+1の ````` で囲む
- テキスト
  ```
  `codespan`
  バッククォート1つ… `` ` ``
  バッククォート3つ… ````` ``` `````
  ```
- 結果
  `codespan`
  バッククォート1つ… `` ` ``
  バッククォート3つ… ````` ``` `````

## コードブロック
`<pre><code>` 〜 `</code></pre>`
### インデントコードブロック
一つ以上の空行の後、4つ以上のスペース + インデントで始める
- テキスト
  ```

      int main(int argc, char** argv)
      {
          printf("hello, world!!\n");
      }
  ```
- 結果

      int main(int argc, char** argv)
      {
          printf("hello, world!!\n")
      }

### フェンスコードブロック
開始/終了に ````` ``` ````` か `~~~` を使う
- テキスト
  ~~~
  ```
  int main(int argc, char** argv)
  {
      printf("hello, world!!\n");
  }
  ```
  ~~~
  ```
  ~~~
  def main():
      message = "Hello, World!"
      print(message)

  if __name__ == "__main__":
      main()
  ~~~
  ```
- 結果
  ```
  int main(int argc, char** argv)
  {
      printf("hello, world!!\n");
  }
  ```
  ~~~
  def main():
      message = "Hello, World!"
      print(message)
  
  if __name__ == "__main__":
      main()
  ~~~

### シンタックスハイライト
言語名 `xxx` を記載すると  `class="language-xxx"` のクラス定義がつく **※GFMのみ**
- テキスト
  ~~~

  ```c
  int main(int argc, char** argv)
  {
      printf("hello, world!!\n");
  }
  ```
  ~~~
  ```
  ~~~python
  def main():
      message = "Hello, World!"
      print(message)

  if __name__ == "__main__":
      main()
  ~~~
  ```
- 結果
  ```c
  int main(int argc, char** argv)
  {
      printf("hello, world!!\n");
  }
  ```
  ~~~python
  def main():
      message = "Hello, World!"
      print(message)

  if __name__ == "__main__":
      main()
  ~~~

## テーブル
- テキスト
  ```
  |TH1|TH2|TH3|TH4|
  |-|:-|:-:|-:|
  |TB1|TB2 Left|TB3 Center|TB4 Right|
  ```
- 結果
  |TH1|TH2|TH3|TH4|
  |-|:-|:-:|-:|
  |TB1|TB2 Left|TB3 Center|TB4 Right|

## 脚注 (Foot note)
**※GitHubのみ** <small>GitHub ≠ GFM (GitHubはGithub Flavor Markdownの拡張版を使っている)</small>
- テキスト
  ```
  GitHub では GFM[^1] を採用しています。

  [^1]: GFM: GitHub Flavor Markdown
  ```
- 結果
  GitHub では GFM[^1] を採用しています。

  [^1]: GFM: **G**itHub **F**lavor **M**arkdown

## 数式
**※GitHubのみ** LaTeX 形式の数式を表示
- テキスト
  ~~~
  (インライン)
  $$sqrt{3x-1}+(1+x)^2$$

  (ブロック)
  ```math
  sqrt{3x-1}+(1+x)^2
  ```
  ~~~
- 結果
  (インライン)
  $$\sqrt{3x-1}+(1+x)^2$$

  (ブロック)
  ```math
  \sqrt{3x-1}+(1+x)^2
  ```

## HTMLタグ
HTML を記述することもできる…が、沢山あるので一例のみ
```
<small>小さく</small>なっちゃった
<u>下線</u>
改<br>行
<span style="color: tomato">トマト</span>
<span style="color: #00ff00">緑</span>
<span style="color: #0000ff">ブルー</span>
```
<small>小さく</small>なっちゃった
<u>下線</u>
改<br>行
<span style="color: tomato">トマト</span>
<span style="color: #00ff00">緑</span>
<span style="color: #0000ff">ブルー</span>

ブロックタグ内の文字markdownが適用されるかどうかは[この辺り](https://www.tohoho-web.com/ex/markdown.html#html)が詳しい
