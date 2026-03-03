-- +goose Up
-- +goose StatementBegin
create or replace view location_v as select * from location;
create or replace view address_v as select * from address;
create or replace view job_v as select * from job;
create or replace view civilian_v as select * from civilian;
create or replace view action_v as select * from action;
create or replace view incident_v as select * from incident;
create or replace view evidence_v as select * from evidence;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
drop view if exists location_v;
drop view if exists address_v;
drop view if exists job_v;
drop view if exists civilian_v;
drop view if exists action_v;
drop view if exists incident_v;
drop view if exists evidence_v;
-- +goose StatementEnd
