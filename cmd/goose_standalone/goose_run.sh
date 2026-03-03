DSN="user=$GOOSE_PG_USER password=$GOOSE_PG_PASS dbname=$GOOSE_PG_DB host=$GOOSE_PG_HOST port=$GOOSE_PG_PORT sslmode=disable"
migrate_dir="/go/queries/"

echo "PARAMS:"
echo "         Driver: $GOOSE_DRIVER"
echo "SQL queries dir: $migrate_dir"
echo "            DSN: $DSN"

GOOSE_DRIVER=$GOOSE_DRIVER GOOSE_DBSTRING=$DSN GOOSE_MIGRATION_DIR=$migrate_dir /go/bin/goose up
