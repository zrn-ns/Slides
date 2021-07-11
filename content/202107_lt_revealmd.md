---
title: 爆速🚀でスライドをこしらえる
theme: league
revealOptions:
    transition: 'slide'
    progress: false
---

# 爆速🚀で<br>スライドを<br>こしらえる

📝Yuki Nagao

---

突然ですが、

皆さんはプレゼン資料作るのは得意ですか？

>>>

資料作成って結構時間がかかりますよね

>>>

僕もかなり時間がかかる方です

---

## どのくらい時間を掛ける？

---

30分？ 1時間？ 1日かかる？

<p class="fragment">10分のLT程度なら<br>サクッと作ってサクッと話したいですよね！</p>

---

## 時間がかかる理由

---

### アイディア出しに時間がかかる！

- どのツールを使ってアイディアをまとめるか？🧐

>>>

### スライド作成に時間がかかる！

- テキストをスライドに起こすのに時間がかかる😩
- そもそもどのツールを使う？
- スライドのテーマとかアニメーションとかどうしよう...

---

## 爆速でスライドを作成するには？

---

### →なるべく考えることを減らすこと！

- 作成作業をルーチン化してしまおう！
- 細かい調整は後で時間があればでよい

---

## 爆速で<br>スライドをこしらえる方法💪

---

1. 発表の概要をmarkdownで書く
2. 下書きからスライドを生成して整形

>>>

### 1. 発表の概要をmarkdownで書く

- Atom（エディタ）で下書きを書く
- 文書構造を考えて書くとよい

>>>

### 2. 下書きからスライドを生成して整形

[Reveal-md](https://github.com/webpro/reveal-md)というライブラリを使うと、markdownからスライドを生成できる

- このスライドはReveal-mdで生成した
- 生成したスライドはhtmlで出力されるので、GitHub Pages等でホスト可能
- 自動でそれなりにリッチな見た目になるし、細かくカスタマイズも可能

---

### 実際にスライドを作ってみる📝

>>>

#### 1. Markdownで下書き: 30分

![下書き](./attachments/202107_lt_revealmd/1.png)

>>>

#### 2. プレビューを見つつ調整: 30分

![プレビュー](./attachments/202107_lt_revealmd/2.png)

>>>

#### 3. コマンドでスライドを生成<br>gitリポジトリにpushして公開！: 5分

![push](./attachments/202107_lt_revealmd/3.png)

>>>

**トータル60分🚀(大体)**

---

## さらにこだわる人は？

>>>

### テーマやアニメーションを一括で変えたり、いろんな事が割と手軽にできる！

>>>

例えば...

>>>

画像をスタック表示したり

<div class="r-stack">
  <img src="https://placekitten.com/450/300" width="450" height="300">
  <img class="fragment" src="https://placekitten.com/300/450" width="300" height="450">
  <img class="fragment" src="https://placekitten.com/400/400" width="400" height="400">
</div>

>>>

動画を貼り付けたり

<video data-autoplay src="http://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4"></video>

>>>

コードの表示もリッチに

<pre><code data-line-numbers="7-7|10-13|14-14">
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        var times: RepeatTimes = .zero
        do {
            times = try .init(3)
        } catch {
            // エラー処理等
            print(error)
        }
        label.text = "Hello".repeated(times: times)
    }

    @IBOutlet private weak var label: UILabel!
}
</code></pre>

---

↓今回のスライド↓

 http://localhost:1948/202107_lt_revealmd.md

↓今回のスライドのソースコード↓

https://github.com/zrn-ns/Slides/blob/master/content/202107_lt_revealmd.md

---

## おしまい🍵

ご静聴いただきありがとうございました！
