-- +goose Up
-- +goose StatementBegin
CREATE OR REPLACE FUNCTION check_answer(
    incident_id_ INTEGER, 
    guess_suspect_id INTEGER
)
RETURNS BOOLEAN 
SECURITY DEFINER
LANGUAGE plpgsql 
AS $$
BEGIN
    RETURN EXISTS (
        SELECT 1 
        FROM answer a 
        WHERE a.incident_id = incident_id_
          AND a.suspect_id = guess_suspect_id
    );
END;
$$;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
drop function if exists check_answer;
-- +goose StatementEnd
