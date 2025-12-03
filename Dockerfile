# 何をしているか：公式の Python イメージをベースに、必要パッケージを入れてアプリを起動するようにする
FROM python:3.11-slim

# コンテナ内の作業ディレクトリを作る（以後この中で動く）
WORKDIR /app

# 依存関係を先にコピーしてインストール（キャッシュ効率のため）
COPY requirements.txt .

# pip のキャッシュを使わず安全に依存を入れる
RUN pip install --no-cache-dir -r requirements.txt

# アプリ本体をコピー
COPY app/ ./app

# コンテナ起動時に実行するコマンド（ポート5000/5001どちらでもOK。ここでは5001）
EXPOSE 5001
CMD ["python", "app/app.py", "--port=5001"]
