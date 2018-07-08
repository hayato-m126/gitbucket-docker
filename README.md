# gitbucket-docker
dockerでgitbucketのサーバーを立てる。
バックアップも取る

# 動作環境
- Docker
- Docker Compose

# 使い方
```
docker-compose up
```

# Gitbucketのバージョンアップ
docker-compose.yamlのgitbucket_versionとimageのバージョンを変更する。

# バックアップ
backup_gitbucket_home.shを手動で叩くか、cronとかで定期実行させる

cronの設定例
```
crontab -e
# 日曜日の3時にバックアップを取る
0 3 * * 0 /fullpath_to_script/backup_gitbucket_home.sh
```

