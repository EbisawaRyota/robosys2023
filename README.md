# robosys2023
ロボットシステム学2023で使用しているリポジトリ

![test](https://github.com/EbisawaRyota/robosys2023/actions/workflows/test.yml/badge.svg)

## インストール方法
このリポジトリを使用したい任意の場所にクローンして使用する
```
git clone https://github.com/EbisawaRyota/robosys2023.git
```

## plus
標準入力から読み込んだ数字を足す。
### 実行例
```
$ seq 10 |./plus
$ 55
```
seq 10で１から順に1から10までの数字を足す

## subtraction
標準入力から読み込んだ数字を引く。
### 実行例
```
$ seq 10 |./subtraction
$ -55
```
seq 10で１から順に１０までの数字を引く

## multiplication
標準入力から読み込んだ数字をかける。
### 実行例
```
$ seq 10 |./multiplication
$ 3628800
```
seq 10で１から順に1から10までの数字をかける

## 必要なソフト
* Python
  * テスト済み:3.7～3.10

## テスト環境
* Ubuntu 20.04

## ライセンス及び著作権
* このソフトウェアパッケージは３条項BSDライセンスの下、再頒布および使用が許可されます.
* このパッケージのコードの一部は、下記のスライド(CC-BY-SA 4.0 by Ryuihi Ueda)のものを、本人の許可を得て自身の著作としたものです. 
    * [ryuichiueda/my_slides/robosys_2022](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022)
* © 2023 Ryota Ebisawa
