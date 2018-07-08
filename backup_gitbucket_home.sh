#パスはフルパスで指定しないとcronでは動かない

DOCKER_COMPOSEFILE_PATH=/home/hyt126/docker/gitbucket
mkdir -p $DOCKER_COMPOSEFILE_PATH/backup

# docker-compose stopして止めてからバックアップを取る
cd $DOCKER_COMPOSEFILE_PATH; /usr/local/bin/docker-compose stop

# バックアップ対象
TARGET_DIR=$DOCKER_COMPOSEFILE_PATH/gitbucket

# バックアップファイル名
BACKUP_FILE_NAME=$DOCKER_COMPOSEFILE_PATH/backup/gitbucket-`/bin/date +%Y%m%d-%H%M%S`.tar.gz

# バックアップ処理
tar czfp $BACKUP_FILE_NAME $TARGET_DIR

# コンテナを再起動する
cd $DOCKER_COMPOSEFILE_PATH; /usr/local/bin/docker-compose up

