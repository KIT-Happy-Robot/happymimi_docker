# HappyMimiDocker
Team KIT Happy Robotの環境構築リポジトリ
# インストローラーの流れ
- apt updateを実行
- apt upgradeを実行
- vimをインストール
- gitをインストール
- ros1 noeticの必要コンポーネントをインストール
- rviz, gazebo(オブジェクト付き）をインストール
- catkin_ws/srcをmkdir
- .bashrcにパスを追加
- ルート階層に行き、`# source .bashrc`を実行
- catkin buildをsrc階層内で行う
- bashrcに環境変数をインストール
- KIT-WLAP2だったらプロキシ設定を行えるようにするためににbashrcに記載
- RealsenseSDKをインストール

- あとは必要事項を適宜記入していく。
