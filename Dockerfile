# ベースイメージ：軽量 Python
FROM python:3.11-slim

# 作業ディレクトリ
WORKDIR /app

# 依存関係ファイルを先にコピーして pip インストール（キャッシュを活かす）
COPY requirements.txt .

# 開発中は pytest を入れておく（CIではテスト用）
RUN pip install --no-cache-dir -r requirements.txt && \
    pip install --no-cache-dir pytest

# アプリとテストをイメージに追加（CI でコンテナ内テストをするため）
COPY app/ ./app
COPY tests/ ./tests

# コンテナのポート（ドキュメント的）
EXPOSE 5001

# デフォルトの起動コマンド（実行環境用）
CMD ["python", "app/app.py", "--port=5001"]