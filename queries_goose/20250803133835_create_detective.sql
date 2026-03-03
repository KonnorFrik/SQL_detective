-- +goose Up
-- +goose StatementBegin
DO $$
BEGIN
  IF NOT EXISTS (
    SELECT FROM pg_catalog.pg_roles 
    WHERE rolname = 'detective'
  ) THEN
    create role detective with login password 'detective';
  END IF;
END $$;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
drop role if exists detective;
-- +goose StatementEnd
