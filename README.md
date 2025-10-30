# .vim
Syntax files of BveTs Map and LS-PrePost.

## Vim用Bvetsマップ構文Syntaxファイル
### これは何？
テキストエディタ[Vim](https://ja.wikipedia.org/wiki/Vim)でBvets5のMapファイルを開いたときに、構文をハイライトするための定義ファイルです。

### 使い方
~/.vim/syntax/ にこのファイルを配置して、:set filetype=bvemap とタイプするとハイライトが有効になります。  
また、Bvets Mapを編集する作業ディレクトリが定まっているのであれば、  
そこに上記の設定を記述した.vimrcファイルを配置しておくのもよいでしょう。

2018.04.18追記  
Vim scriptでファイルの内容(具体的には1行目にBveTs Mapという文字列が存在するかどうか)を判定して自動でSyntaxを適用するようにしました。

### 入手
[GitHub](https://github.com/hakehash/.vim/blob/master/syntax/bvemap.vim)にて公開していますので、

    git clone https://github.com/hakehash/.vim.git

で入手の上、以下のファイルを**~/.vim**にコピーすれば動作するはずです。

    syntax/bvemap.vim
    scripts.vim

但し、**scripts.vim**については既に利用中のものがあるかもしれないので、その場合は以下を追記してください。

    let s:line1=getline(1)
    if s:line1 =~ "BveTs Map.*"
      setfiletype bvemap
    endif

### スクリーンショット
![スクリーンショット](http://overpass.dokkoisho.com/bve/mapsyntax.png)

## See also
日本語版help: [https://github.com/vim-jp/vimdoc-ja](https://github.com/vim-jp/vimdoc-ja)

