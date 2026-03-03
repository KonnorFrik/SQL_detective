-- +goose Up
-- +goose StatementBegin
grant select on location_v to detective;
grant select on address_v to detective;
grant select on job_v to detective;
grant select on civilian_v to detective;
grant select on action_v to detective;
grant select on incident_v to detective;
grant select on evidence_v to detective;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
revoke select on location_v from detective;
revoke select on address_v from detective;
revoke select on job_v from detective;
revoke select on civilian_v from detective;
revoke select on action_v from detective;
revoke select on incident_v from detective;
revoke select on evidence_v from detective;
-- +goose StatementEnd
