-- +goose Up
-- +goose StatementBegin
grant execute on function check_answer(integer, integer) to detective;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
revoke execute on function check_answer(integer, integer) from detective;
-- +goose StatementEnd
