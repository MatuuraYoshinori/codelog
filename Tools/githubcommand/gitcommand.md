# はじめに
gitのコマンドライン操作について手元のメモを書き出してみた

なお、[サルでも分かるGit入門](http://www.backlog.jp/git-guide/)が分かりやすい。

Web上で疑似的にgitコマンドを使って学べるサイト
http://k.swd.cc/learnGitBranching-ja/

# 前提
- リモートに、マスターブランチ(origin)として develop が作成されている
- developブランチをベースに作業ブランチ(feature)を作成する。
- 作業ブランチへのコミットは一人で行う。(他の人によるコミットは発生しない)


# 任意タイミングで使用するコマンド
## ブランチの一覧を表示する
```
$ git branch		# ローカルのブランチのみ

# originのブランチも含めて表示する場合
$ git branch -a
```

## 作業対象のブランチに切り替える
```
$ git checkout feature/<ブランチ名>
```

## 作業ブランチを作成する
```
$ git checkout develop				# ブランチ作成元(develop)をチェックアウト
$ git fetch					# originの最新状態を取得する
$ git pull					# origin/developをローカルに反映(fast forwardマージになるはず)
$ git branch feature/<ブランチ名>		# ブランチ作成
$ git checkout feature/<ブランチ名>		# 作成したブランチを作業対象にする
```
結果、自分のローカルにブランチが作成される。
クローン元であるGitHubに反映するには push が必要。

```
$ git push
```

## 作業ブランチの作成とブランチ切り替えを一度に行う
```
$ git checkout -b feature/<ブランチ名>
```

## ローカルのブランチを削除する
```
$ git checkout develop				# 削除対象から他のブランチに移動
$ git branch -D feature/<branch名>
```

## 未ステージング、ステージング、コミットなどの状態を表示する。
```
$ git status
```

## コミット履歴を見る
```
$ git log
```

## originのコミット状態を取得する。
```
$ git fetch
```
ローカルのファイルにはマージしない。

## リポジトリに登録されていないファイルを削除する
ビルドで生成されるファイルとかですね。git add するときに邪魔なので、それを消す方法です。
```
$ git clean -df
```

# 未ステージング状態(addしていない)で使用するコマンド
## ステージングする

```
$ git add --all
```

## 最新コミットとの差分を表示する
```
$ git diff
```

## 作業環境を最新コミットの状態にリセットしたい(ローカルの作業を無かった事にする）
```
$ git reset HEAD --hard
```

## ファイル単位で最新コミットの状態にリセットしたい
```
$ git checkout filename
```

## 作業中状態を一時保存する
　(他のブランチに移動する場合など)

```
$ git stash		# 作業中の状態を保存
$ git checkout feature/<他のブランチ>
(何か作業)
$ git checkout feature/<元のブランチ>
$ git stash pop		# 保存した状態を取得
```

## ブランチを作らずにファイルを更新してしまった場合(masterで作成していた！)
```
$ git stash                                # 作業中の状態を保存
$ git checkout [元ブランチ]                 # 作業ブランチ作成元のブランチに移動
$ git checkout -b [実際の作業ブランチ名]     # 作業ブランチ作成
$ git stash pop                            # 保存していた状態を取得
```

# ステージング済み(git addした状態)で使用するコマンド
## コミットする
```
$ git commit -m "コミットコメント"

$ git commit -amend	# 継ぎ足しコミット
```

## addしたファイルをリセットして最新コミットと同じ状態に戻す
```
$ git checkout HEAD filename
```

## ステージ内容と最新コミット(HEAD)の差分を見る
```
# コンソールに表示する
$ git diff --cached
```

# コミット済み状態で使用するコマンド
## クローン元の変更内容をローカルにマージする。
```
$ git pull
```

## コミット済みファイル名変更
作業環境のファイルシステム上でリネームすると、
別ファイル扱いとなりコミット履歴が切れてしまうので、
このコマンドを使用する。

```
$ git mv oldname newname
```

## ローカルで最新のコミットを無かったことにする
```
$ git reset HEAD^	# HEADを１つ前に移動するだけ。ワークのファイルは変化しない。
```

## リベース
```
$ git checkout feature<ブランチ名>
$ git rebase origin/develop
<コンフリクト修正>
$ git add filename
$ git rebase --continue      (コミット相当)
$ git rebase --abort	（中止)
```

## originのブランチにプッシュする
```
$ git push
```

## プッシュ済みのコミットを改変した場合(--amendやrebaseを使用した場合)
```
$ git push -f		# originを上書き
```

## ブランチを作らずにローカルのmasterにコミットしてしまった！
```
$ git log                                          # コミットログを調べる
$ git reset [間違ったコミットの直前のコミットＩＤ]    # 間違ったコミットの直前にHEADを戻す
                                                   # 間違ったコミットのファイルが未ステージングに戻る
$ git stash                                        # 対象ファイルを保存
$ git checkout -b [実際の作業ブランチ名]             # 作業ブランチ作成＆移動
$ git stash pop                                    # 保存していた状態を取得

$ git add *
$ git commit -m "comment"
$ git push
```

# GitHub連携
## GitHubのリポジトリをローカルにクローンする
GitHubのリポジトリを開き、「Clone or download」ボタンを押した先のURLをコピーし、以下コマンドを実行する。

```
$ git clone <url>
```

## コミットをissueに紐づける
```
$ git commit -m "#7 コミットコメント"
```
issue番号をコミットコメントに含める。

## コミットと同時にissueをクローズする
```
$ git commit -m "close #7 コミットコメント"
```
'close'をコミットコメントに含める。



# 作業フロー例
## ブランチへのコミット
```
$ git checkout feature/<ブランチ名>		# ブランチ切り替え

<ファイルの編集作業>

$ git status					# ワークのファイルを確認する
$ git add --all					# 変更・追加・削除を行ったファイルをステージングする
$ git status					# ステージング状態を確認する
$ git commit -m "#7 コミットコメント"		# コミットする。
						# コミットコメントにissue番号を含めると("#番号")issueに紐づけてくれる
						# コミットと同時にissueをクローズする時は、"close #7 コミットコメント"と記述する。
$ git push					# originのfeature/<ブランチ名>に反映する
```

## リポジトリの最新コミットに継ぎ足しでコミットする
```
$ git add --all			# 変更・追加・削除を行ったファイルをステージングする
$ git commit --amend		# リポジトリの最新コミットに継ぎ足しする
$ git push -f			# 既存のコミット履歴を改変するので -f (force)を付ける
```

## リポジトリの最新コミットをその一つ前のコミットにマージする
```
$ git reset HEAD^		# "最新コミット"位置(HEAD)を１つ前に移動
$ git add --all			# 最新コミットだったファイルが未コミットに戻るので改めてステージングする
$ git commit --amend		# 最新コミットに継ぎ足す
$ git push -f			# プッシュ済みの履歴を置き換えるので -f を付ける
```

## 複数個のコミット履歴を一つにまとめる(rebaseを使用)
まず、コミット履歴を取得する
```
$ git log			# コミット履歴を取得する
```
ログの例）
コミット履歴が新しい順に表示される。
ここでは、[コミット1]と[コミット2]を一つにまとめたい。

```
---
commit 1fb0ae70a2f9bcb6f10b07d4b38de20620457c7d
Author: 名前 <mailaddress>
Date:   日時

    コミット2

commit 8122fda4ccd5ab345c5670a0b19890312999c90f
Author: 名前 <mailaddress>
Date:   日時

    コミット1

commit 91c77131208667833b07a652d1c9723fb187ae7c
Author: 名前 <mailaddress>
Date:   日時

    ブランチ作成元（このコミットは変更しない)
---

$ git rebase -i 91c77131208667833b07a652d1c9723fb187ae7c	# [ブランチ作成元]の"commit"を指定する
<エディタが開いて以下が表示される>
---
pick 9128e80 コミット1
pick ed55805 コミット2

# (説明書き...)
---
```

２行目以降の'pick'を全て's'に変更してエディタを閉じる。(コミットが１行目に集約される)

再度エディタが開くので、コミットコメントを１行にまとめて書く。

<変更前>

```
---
# This is a combination of 2 commits.
# The first commit's message is:

コミット1

# This is the 2nd commit message:

コミット2
---
```

<変更後>

```
---
コミット1と2の対応
---
```

```
$ git push -f			# プッシュ済みの履歴を置き換えるので -f を付ける
```

## originの最新developに単純マージ出来るようにする(fast-forward)
作業ブランチで作業を行っている間に、ブランチ作成元のdevelopでは、
他のコミットがマージされていることが有る。

この時、originの最新developを作業ブランチにマージする必要が有るが、
コミット履歴をシンプルに出来るという点で、rebaseを使用する。

```
$ git checkout develop				# ブランチ作成元(develop)をチェックアウト
$ git fetch					# originの最新状態を取得する
$ git branch					# ブランチの一覧を表示する

$ git checkout feature/<ブランチ名>		# 作業ブランチに切り替える
$ git rebase origin/develop			# origin/develop を指定する。
```

rebaseでは、コミット履歴を辿ってコンフリクトを解消していく。

修正箇所にコンフリクトが発生した場合。
以下のようなメッセージが表示されるので、そのファイルを修正する。

```
CONFLICT (content): Merge conflict in <filename>
```

```
$ git add *					# 修正したファイルをステージング
$ git rebase --continue				# rebaseでのコミット
```

コンフリクトが無くなればrebaseモードから抜ける。
rebaseを中止する場合は以下を実行。(rebase前の状態に戻る)

```
$ git rebase --abort
```
