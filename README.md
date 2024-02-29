# 開発環境設定手順

## ステップ 1: 必要なリポジトリの取得

本リポジトリはDockerfileの開発および管理のためのリポジトリです。実際に環境を起動するためには、以下のリポジトリを取得する必要があります。

- フロントエンド (Nuxt): `Server-Front`
- バックエンド (FastAPI): `Server-API`

これらのリポジトリをローカル環境にクローンするためには、まずローカルに新しいフォルダを作成します。そのフォルダ内に、本リポジトリ（`Server-Docker-Dev`）とともに、フロントエンドとバックエンドのリポジトリをクローンします。

### リポジトリのクローン

以下のコマンドを使用してリポジトリをクローンします：

```bash
# 任意のフォルダを作成
mkdir my-dev-environment
cd my-dev-environment

# 各リポジトリをクローン
git clone [https://github.com/niinomik-nodo/Server-Docker-Dev.git]
git clone [https://github.com/niinomik-nodo/Server-Front.git]
git clone [https://github.com/niinomik-nodo/Server-API.git]

# 開発環境のディレクトリ構造イメージ
my-dev-environment
　∟Server-Front
　∟Server-API
　∟Server-Docker-Dev
```

## ステップ 2: Dockerインストール

Dockerをインストールする手順は、使用しているオペレーティングシステムによって異なります。公式からOSに合わせてDockerをインストールしてください。例として一般的なWindowsでのインストール手順を以下に記載します。(既にインストール済みであればこのステップは飛ばしてください)

### Windowsでのインストール
1. **Docker Desktop for Windows** をダウンロードします。
    - Docker公式ウェブサイト（[https://www.docker.com/products/docker-desktop](https://www.docker.com/products/docker-desktop)）からダウンロードできます。

2. ダウンロードしたインストーラーを実行します。

3. インストール中の指示に従い、必要に応じてオプションを選択します。

4. インストールが完了したら、Docker Desktopを起動します。

## ステップ 3: 開発環境の起動

1. Docker Desktopを起動してください。(ステップ2を実行した方は改めて起動は不要です)

2. ステップ1で用意した環境をVSCodeで開き、ターミナルを起動します。

3. Server-Front/lmsc/nuxt-appへ移動し、 以下のコマンドを実行してください。

```bash
npm install
```

コマンド実行後、nuxt-appフォルダ内に`node_modules`フォルダが生成されていることを確認してください。  
※`node_modules`フォルダが無いとServer-Front(Nuxt)が起動しません

4. ルートディレクトリへ戻り、以下のコマンドを実行してください。

```bash
docker-compose -f ./Server-Docker-Dev/lmsc_local/docker-compose.yaml build
docker-compose -f ./Server-Docker-Dev/lmsc_local/docker-compose.yaml up -d
```

コマンド実行後、以下の画像のようになっていれば問題ありません。

### ターミナル
![image](https://github.com/niinomik-nodo/Server-Docker-Dev/assets/111042246/aa0f52cc-f97a-44ff-9d4e-f81f4541416b)

### FastApi: "https://localhost:443/tests"
![image](https://github.com/niinomik-nodo/Server-Docker-Dev/assets/111042246/4e13d680-a275-42ef-9891-3e435439b62e)

### React："https://localhost:3000"
![image](https://github.com/niinomik-nodo/Server-Docker-Dev/assets/111042246/7c1329b5-bb31-409f-a04e-8e69ce8f3e6a)

※ id=1 name='lmsc' は Server-Docker-Dev/lmsc_local/lmsc_database/init_db/init.sql(mySQLのDB)で設定したデータを出力しています
