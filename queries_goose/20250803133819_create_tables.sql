-- +goose Up
-- +goose StatementBegin
create table if not exists location (
    id serial primary key,
    street text not null,
    building_name text,
    building_number int not null,
    unique (street, building_number)
);

create table if not exists address (
    id serial primary key,
    location_id int references location(id) on delete cascade,
    floor int not null,
    appartment int not null,
    unique (location_id, floor, appartment)
);

create table if not exists job (
    id serial primary key,
    title text not null,
    salary int not null,
    start_at time not null,
    end_at time not null,
    unique (title, salary)
);

create table if not exists civilian (
    id serial primary key,
    first_name text not null,
    second_name text not null,
    home_address_id int references address(id) on delete cascade,
    work_address_id int references address(id) on delete cascade,
    job_id int references job(id) on delete cascade
);

create table if not exists action (
    id serial primary key,
    title text not null,
    subject_id int references civilian(id) on delete cascade,
    description text,
    recorder_at timestamp not null
);

create table if not exists incident (
    id serial primary key,
    type text check (type in ('robbery', 'murder')),
    description text,
    victim_id int references civilian(id) on delete cascade,
    solved bool not null default false
);

create table if not exists evidence(
    id serial primary key,
    incident_id int references incident(id) on delete cascade,
    location_id int references location(id) on delete cascade,
    type text check (type in ('physical', 'digital')),
    description text
);

create table if not exists answer (
    id serial primary key,
    incident_id int references incident(id) on delete cascade,
    suspect_id int references civilian(id) on delete cascade
);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
drop table if exists location cascade;
drop table if exists address cascade;
drop table if exists job cascade;
drop table if exists civilian cascade;
drop table if exists action cascade;
drop table if exists incident cascade;
drop table if exists evidence cascade;
-- +goose StatementEnd
