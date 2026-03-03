-- +goose Up
-- +goose StatementBegin
INSERT INTO location (
    street, building_name, building_number
) VALUES 
('Peacefull street', 'SleepHouse', 15),
('Street of fame', 'Office Center', 342),
('Shopping Alley', 'TechStore', 53),
('Main Street', 'The Warm House', 5349),
('Pennsylvania Avenue NW', 'The Warm House', 1600),
('1st Street', 'The Old Post Office Building', 4534),
('Pennsylvania Avenue NW', 'The Old Post Office Building', 534),
('Constitution Avenue NW', 'National Mall', 2800),
('United States Capitol', 'National Mall', 2816),
('Independence Avenue SW', 'Smithsonian Institution', 1002),
('Maryland Avenue SE', 'The Small Post Office', 1083),
('Potomac Avenue NW', 'Gateway Arch', 2828)
;

INSERT INTO address (
    location_id, floor, appartment
) VALUES 
(
    (select id from location
        where
            street = 'Peacefull street' and
            building_name = 'SleepHouse' and
            building_number = 15
    ),
    2, 23), -- John Doe's home
(
    (select id from location
        where
            street = 'Street of fame' and
            building_name = 'Office Center' and
            building_number = 342
    ), 37, 9), -- John Doe's work
(
    (select id from location
        where
            street = 'Shopping Alley' and
            building_name = 'TechStore' and
            building_number = 53
    ), 2, 5), -- Alex's home
(
    (select id from location
        where
            street = 'Shopping Alley' and
            building_name = 'TechStore' and
            building_number = 53
    ), 1, 1), -- Alex's work
(
    (select id from location
        where
            street = 'Street of fame' and
            building_name = 'Office Center' and
            building_number = 342
    ), 35, 18),
(
    (select id from location
        where
            street = 'Street of fame' and
            building_name = 'Office Center' and
            building_number = 342
    ), 35, 17),
(
    (select id from location
        where
            street = 'Street of fame' and
            building_name = 'Office Center' and
            building_number = 342
    ), 37, 17),
(
    (select id from location
        where
            street = 'Street of fame' and
            building_name = 'Office Center' and
            building_number = 342
    ), 36, 2),
(
    (select id from location
        where
            street = 'Street of fame' and
            building_name = 'Office Center' and
            building_number = 342
    ), 36, 12),
(
    (select id from location
        where
            street = 'Street of fame' and
            building_name = 'Office Center' and
            building_number = 342
    ), 35, 15),
(
    (select id from location
        where
            street = 'Street of fame' and
            building_name = 'Office Center' and
            building_number = 342
    ), 36, 9),
(
    (select id from location
        where
            street = 'Street of fame' and
            building_name = 'Office Center' and
            building_number = 342
    ), 36, 10),
(
    (select id from location
        where
            street = 'Peacefull street' and
            building_name = 'SleepHouse' and
            building_number = 15
    ), 2, 18), -- 'Samantha', 'Perez',
(
    (select id from location
        where
            street = 'Peacefull street' and
            building_name = 'SleepHouse' and
            building_number = 15
    ), 3, 32), -- 'Samantha', 'Perez',
(
    (select id from location
        where
            street = 'Peacefull street' and
            building_name = 'SleepHouse' and
            building_number = 15
    ), 3, 34), -- 'Lily', 'Wong',
(
    (select id from location
        where
            street = 'Main Street' and
            building_name = 'The Warm House' and
            building_number = 5349
    ), 2, 245), -- 'Maria''Hernandez',
(
    (select id from location
        where
            street = 'Main Street' and
            building_name = 'The Warm House' and
            building_number = 5349
    ), 1, 128), -- 'Michael', 'Huang',
(
    (select id from location
        where
            street = 'Main Street' and
            building_name = 'The Warm House' and
            building_number = 5349
    ), 2, 203), -- 'Emily''Martinez', 'David''Martinez', 
(
    (select id from location
        where
            street = 'Pennsylvania Avenue NW' and
            building_name = 'The Warm House' and
            building_number = 1600
    ), 5, 589), -- 'John', 'Lopez',
(
    (select id from location
        where
            street = 'Pennsylvania Avenue NW' and
            building_name = 'The Warm House' and
            building_number = 1600
    ), 4, 427), -- 'Sarah', 'Rodriguez',
(
    (select id from location
        where
            street = 'Pennsylvania Avenue NW' and
            building_name = 'The Warm House' and
            building_number = 1600
    ), 2, 218), -- 'Michael', 'Garcia',
(
    (select id from location
        where
            street = 'Pennsylvania Avenue NW' and
            building_name = 'The Old Post Office Building' and
            building_number = 534
    ), 3, 356), 
(
    (select id from location
        where
            street = 'United States Capitol' and
            building_name = 'National Mall' and
            building_number = 2816
    ), 1, 187),
(
    (select id from location
        where
            street = 'Independence Avenue SW' and
            building_name = 'Smithsonian Institution' and
            building_number = 1002
    ), 2, 221),
(
    (select id from location
        where
            street = 'Maryland Avenue SE' and
            building_name = 'The Small Post Office' and
            building_number = 1083
    ), 3, 354),
(
    (select id from location
        where
            street = 'Potomac Avenue NW' and
            building_name = 'Gateway Arch' and
            building_number = 2828
    ), 1, 187)
;

INSERT INTO job (
    title, salary, start_at, end_at
) VALUES
('Office Worker', 1800, '09:00:00'::time, '18:00:00'::time),
('Shop Keeper', 5950, '08:00:00'::time, '18:00:00'::time),
('Software Engineer', 8000, '09:00:00'::time, '18:00:00'::time),
('Marketing Manager', 5300, '09:00:00'::time, '18:00:00'::time),
('Sales Representative', 6600, '09:00:00'::time, '18:00:00'::time),
('Postman', 2000, '06:00:00'::time, '13:00:00'::time),
('Customer Service Representative', 2500, '09:00:00'::time, '18:00:00'::time),
('Graphic Designer', 5500, '09:00:00'::time, '18:00:00'::time),
('Human Resources Manager', 8500, '09:00:00'::time, '18:00:00'::time),
('Business Analyst', 7500, '09:00:00'::time, '18:00:00'::time),
('Project Manager', 4700, '09:00:00'::time, '18:00:00'::time)
;

INSERT INTO civilian (
    first_name, second_name, home_address_id, work_address_id, job_id
) VALUES
    ('John', 'Doe', 
        (select id from address where floor = 2 and appartment = 23),
        (select id from address where floor = 37 and appartment = 9),
        (select id from job where title = 'Office Worker')
    ),
    ('Alex', 'Starmight',
        (select id from address where floor = 2 and appartment = 5),
        (select id from address where floor = 1 and appartment = 1),
        (select id from job where title = 'Shop Keeper')
    ),
    ('Maria', 'Hernandez', 
        (select id from address where floor = 2 and appartment = 245),
        (select id from address where floor = 35 and appartment = 15),
        (select id from job where title = 'Software Engineer')
    ),
    ('John', 'Lopez', 
        (select id from address where floor = 5 and appartment = 589),
        (select id from address where floor = 3 and appartment = 356),
        (select id from job where title = 'Postman')
    ),
    ('Sarah', 'Rodriguez', 
        (select id from address where floor = 4 and appartment = 427),
        (select id from address where floor = 35 and appartment = 17),
        (select id from job where title = 'Marketing Manager')
    ),
    ('Michael', 'Garcia', 
        (select id from address where floor = 2 and appartment = 218),
        (select id from address where floor = 37 and appartment = 17),
        (select id from job where title = 'Sales Representative')
    ),
    ('Emily', 'Martinez', 
        (select id from address where floor = 2 and appartment = 203),
        (select id from address where floor = 36 and appartment = 2),
        (select id from job where title = 'Customer Service Representative')
    ),
    ('David', 'Martinez', 
        (select id from address where floor = 2 and appartment = 203),
        (select id from address where floor = 36 and appartment = 12),
        (select id from job where title = 'Graphic Designer')
    ),
    ('Samantha', 'Perez', 
        (select id from address where floor = 2 and appartment = 18),
        (select id from address where floor = 35 and appartment = 18),
        (select id from job where title = 'Human Resources Manager')
    ),
    ('Jose', 'Gonzalez', 
        (select id from address where floor = 3 and appartment = 32),
        (select id from address where floor = 36 and appartment = 9),
        (select id from job where title = 'Business Analyst')
    ),
    ('Lily', 'Wong', 
        (select id from address where floor = 3 and appartment = 34),
        (select id from address where floor = 36 and appartment = 10),
        (select id from job where title = 'Project Manager')
    ),
    ('Michael', 'Huang', 
        (select id from address where floor = 1 and appartment = 128),
        (select id from address where floor = 3 and appartment = 354),
        (select id from job where title = 'Postman')
    )
;

-- TODO: use deepseek for generate same routine events for each civilian who work at same place 
INSERT INTO action (
    title, subject_id, description, recorder_at
) VALUES
-- 2 days before incident
('system power check', null, 'building: Office Center:342. outdoor camera checking... Status: online', '2025-07-28 08:30:00'::timestamp),
('system power check', null, 'building: Office Center:342. indoor camera checking... Status: online', '2025-07-28 08:30:21'::timestamp),


('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Emily' AND second_name = 'Martinez'), 'What happend: go out from home. Guess: go to the - work', '2025-07-28 08:43:45'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Maria' AND second_name = 'Hernandez'), 'What happend: go out from home. Guess: go to the - work', '2025-07-28 08:44:17'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'David' AND second_name = 'Martinez'), 'What happend: go out from home. Guess: go to the - work', '2025-07-28 08:44:56'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Sarah' AND second_name = 'Rodriguez'), 'What happend: go out from home. Guess: go to the - work', '2025-07-28 08:45:33'::timestamp),
('outdoor camera catch', (select id from civilian where first_name = 'John' and second_name = 'Doe'), 'What happend: go out from home. Guess: go to the - work', '2025-07-28 08:46:21'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Samantha' AND second_name = 'Perez'), 'What happend: go out from home. Guess: go to the - work', '2025-07-28 08:47:29'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Michael' AND second_name = 'Garcia'), 'What happend: go out from home. Guess: go to the - work', '2025-07-28 08:49:12'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Maria' AND second_name = 'Hernandez'), 'What happend: enter the building: Office Center:342. Guess: arrived at work', '2025-07-28 08:53:49'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Emily' AND second_name = 'Martinez'), 'What happend: enter the building: Office Center:342. Guess: arrived at work', '2025-07-28 08:54:18'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'David' AND second_name = 'Martinez'), 'What happend: enter the building: Office Center:342. Guess: arrived at work', '2025-07-28 08:54:27'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Sarah' AND second_name = 'Rodriguez'), 'What happend: enter the building: Office Center:342. Guess: arrived at work', '2025-07-28 08:55:47'::timestamp),
('outdoor camera catch', (select id from civilian where first_name = 'John' and second_name = 'Doe'), 'What happend: enter the building: Office Center:342. Guess: arrived at work', '2025-07-28 08:56:08'::timestamp),
('indoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Maria' AND second_name = 'Hernandez'), 'What happend: enter into the elevator of building: Office Center:342. Guess: arrived at work', '2025-07-28 08:57:31'::timestamp),
('indoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Emily' AND second_name = 'Martinez'), 'What happend: enter into the elevator of building: Office Center:342. Guess: arrived at work', '2025-07-28 08:57:49'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Samantha' AND second_name = 'Perez'), 'What happend: enter the building: Office Center:342. Guess: arrived at work', '2025-07-28 08:57:53'::timestamp),
('indoor camera catch', (SELECT id FROM civilian WHERE first_name = 'David' AND second_name = 'Martinez'), 'What happend: enter into the elevator of building: Office Center:342. Guess: arrived at work', '2025-07-28 08:58:05'::timestamp),
('indoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Sarah' AND second_name = 'Rodriguez'), 'What happend: enter into the elevator of building: Office Center:342. Guess: arrived at work', '2025-07-28 08:58:12'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Michael' AND second_name = 'Garcia'), 'What happend: enter the building: Office Center:342. Guess: arrived at work', '2025-07-28 08:58:44'::timestamp),
('indoor camera catch', (select id from civilian where first_name = 'John' and second_name = 'Doe'), 'What happend: enter into the elevator of building: Office Center:342. Guess: arrived at work', '2025-07-28 08:59:34'::timestamp),
('indoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Samantha' AND second_name = 'Perez'), 'What happend: enter into the elevator of building: Office Center:342. Guess: arrived at work', '2025-07-28 09:01:18'::timestamp),
('indoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Michael' AND second_name = 'Garcia'), 'What happend: enter into the elevator of building: Office Center:342. Guess: arrived at work', '2025-07-28 09:01:53'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'David' AND second_name = 'Martinez'), 'What happend: go out from building: Office Center:342. Guess: go to smoke break', '2025-07-28 09:09:27'::timestamp), -- перекур
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Sarah' AND second_name = 'Rodriguez'), 'What happend: go out from building: Office Center:342. Guess: go to smoke break', '2025-07-28 09:10:47'::timestamp), -- перекур
-- dayoff
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Maria' AND second_name = 'Hernandez'), 'What happend: left the building: Office Center:342. Guess: quits work', '2025-07-28 17:59:52'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Emily' AND second_name = 'Martinez'), 'What happend: left the building: Office Center:342. Guess: quits work', '2025-07-28 18:00:24'::timestamp),
('outdoor camera catch', (select id from civilian where first_name = 'John' and second_name = 'Doe'), 'What happend: left the building: Office Center:342. Guess: quits work', '2025-07-28 18:01:07'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Samantha' AND second_name = 'Perez'), 'What happend: left the building: Office Center:342. Guess: quits work', '2025-07-28 18:02:36'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Sarah' AND second_name = 'Rodriguez'), 'What happend: left the building: Office Center:342. Guess: quits work', '2025-07-28 18:03:29'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'David' AND second_name = 'Martinez'), 'What happend: left the building: Office Center:342. Guess: quits work', '2025-07-28 18:03:47'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Michael' AND second_name = 'Garcia'), 'What happend: left the building: Office Center:342. Guess: quits work', '2025-07-28 18:04:18'::timestamp),


-- 1 day before incident
('system power check', null, 'building: Office Center:342. outdoor camera checking... Status: online', '2025-07-29 08:30:02'::timestamp),
('system power check', null, 'building: Office Center:342. indoor camera checking... Status: online', '2025-07-29 08:30:22'::timestamp),


('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Maria' AND second_name = 'Hernandez'), 'What happend: go out from home. Guess: go to the - work', '2025-07-29 08:43:22'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Samantha' AND second_name = 'Perez'), 'What happend: go out from home. Guess: go to the - work', '2025-07-29 08:45:08'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Emily' AND second_name = 'Martinez'), 'What happend: go out from home. Guess: go to the - work', '2025-07-29 08:46:33'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'David' AND second_name = 'Martinez'), 'What happend: go out from home. Guess: go to the - work', '2025-07-29 08:47:15'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Sarah' AND second_name = 'Rodriguez'), 'What happend: go out from home. Guess: go to the - work', '2025-07-29 08:47:51'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Michael' AND second_name = 'Garcia'), 'What happend: go out from home. Guess: go to the - work', '2025-07-29 08:48:37'::timestamp),
('outdoor camera catch', (select id from civilian where first_name = 'John' and second_name = 'Doe'), 'What happend: go out from home. Guess: go to the - work', '2025-07-29 08:48:39'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Samantha' AND second_name = 'Perez'), 'What happend: enter the building: Office Center:342. Guess: arrived at work', '2025-07-29 08:54:42'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Maria' AND second_name = 'Hernandez'), 'What happend: enter the building: Office Center:342. Guess: arrived at work', '2025-07-29 08:55:11'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Emily' AND second_name = 'Martinez'), 'What happend: enter the building: Office Center:342. Guess: arrived at work', '2025-07-29 08:55:27'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Sarah' AND second_name = 'Rodriguez'), 'What happend: enter the building: Office Center:342. Guess: arrived at work', '2025-07-29 08:57:14'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Michael' AND second_name = 'Garcia'), 'What happend: enter the building: Office Center:342. Guess: arrived at work', '2025-07-29 08:57:22'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'David' AND second_name = 'Martinez'), 'What happend: enter the building: Office Center:342. Guess: arrived at work', '2025-07-29 08:57:38'::timestamp),
('indoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Maria' AND second_name = 'Hernandez'), 'What happend: enter into the elevator of building: Office Center:342. Guess: arrived at work', '2025-07-29 08:58:03'::timestamp),
('indoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Samantha' AND second_name = 'Perez'), 'What happend: enter into the elevator of building: Office Center:342. Guess: arrived at work', '2025-07-29 08:58:27'::timestamp),
('outdoor camera catch', (select id from civilian where first_name = 'John' and second_name = 'Doe'), 'What happend: enter the building: Office Center:342. Guess: arrived at work', '2025-07-29 08:58:42'::timestamp),
('indoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Emily' AND second_name = 'Martinez'), 'What happend: enter into the elevator of building: Office Center:342. Guess: arrived at work', '2025-07-29 08:58:52'::timestamp),
('indoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Sarah' AND second_name = 'Rodriguez'), 'What happend: enter into the elevator of building: Office Center:342. Guess: arrived at work', '2025-07-29 09:00:38'::timestamp),
('indoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Michael' AND second_name = 'Garcia'), 'What happend: enter into the elevator of building: Office Center:342. Guess: arrived at work', '2025-07-29 09:00:41'::timestamp),
('indoor camera catch', (SELECT id FROM civilian WHERE first_name = 'David' AND second_name = 'Martinez'), 'What happend: enter into the elevator of building: Office Center:342. Guess: arrived at work', '2025-07-29 09:00:52'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Sarah' AND second_name = 'Rodriguez'), 'What happend: go out from building: Office Center:342. Guess: go to smoke break', '2025-07-29 09:12:14'::timestamp), -- перекур
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'David' AND second_name = 'Martinez'), 'What happend: go out from building: Office Center:342. Guess: go to smoke break', '2025-07-29 09:12:38'::timestamp), -- перекур
-- dayoff
('outdoor camera catch', (select id from civilian where first_name = 'John' and second_name = 'Doe'), 'What happend: left the building: Office Center:342. Guess: quits work', '2025-07-29 17:55:27'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Samantha' AND second_name = 'Perez'), 'What happend: left the building: Office Center:342. Guess: quits work', '2025-07-29 18:00:48'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'David' AND second_name = 'Martinez'), 'What happend: left the building: Office Center:342. Guess: quits work', '2025-07-29 18:01:29'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Emily' AND second_name = 'Martinez'), 'What happend: left the building: Office Center:342. Guess: quits work', '2025-07-29 18:02:13'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Maria' AND second_name = 'Hernandez'), 'What happend: left the building: Office Center:342. Guess: quits work', '2025-07-29 18:02:45'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Michael' AND second_name = 'Garcia'), 'What happend: left the building: Office Center:342. Guess: quits work', '2025-07-29 18:03:55'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Sarah' AND second_name = 'Rodriguez'), 'What happend: left the building: Office Center:342. Guess: quits work', '2025-07-29 18:04:17'::timestamp),


-- incident day
('system power check', null, 'building: Office Center:342. outdoor camera checking... Status: online', '2025-07-30 08:30:01'::timestamp),
('system power check', null, 'building: Office Center:342. indoor camera checking... Status: online', '2025-07-30 08:30:20'::timestamp),
('system power check', null, 'building: TechStore:53. outdoor camera checking... Status: online', '2025-07-30 08:40:05'::timestamp),


('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Sarah' AND second_name = 'Rodriguez'), 'What happend: go out from home. Guess: go to the - work', '2025-07-30 08:44:25'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'David' AND second_name = 'Martinez'), 'What happend: go out from home. Guess: go to the - work', '2025-07-30 08:45:42'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Maria' AND second_name = 'Hernandez'), 'What happend: go out from home. Guess: go to the - work', '2025-07-30 08:45:59'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Michael' AND second_name = 'Garcia'), 'What happend: go out from home. Guess: go to the - work', '2025-07-30 08:47:08'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Emily' AND second_name = 'Martinez'), 'What happend: go out from home. Guess: go to the - work', '2025-07-30 08:48:19'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Samantha' AND second_name = 'Perez'), 'What happend: go out from home. Guess: go to the - work', '2025-07-30 08:49:37'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Sarah' AND second_name = 'Rodriguez'), 'What happend: enter the building: Office Center:342. Guess: arrived at work', '2025-07-30 08:54:09'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'David' AND second_name = 'Martinez'), 'What happend: enter the building: Office Center:342. Guess: arrived at work', '2025-07-30 08:55:19'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Maria' AND second_name = 'Hernandez'), 'What happend: enter the building: Office Center:342. Guess: arrived at work', '2025-07-30 08:55:42'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Michael' AND second_name = 'Garcia'), 'What happend: enter the building: Office Center:342. Guess: arrived at work', '2025-07-30 08:56:51'::timestamp),
('outdoor camera catch', (select id from civilian where first_name = 'John' and second_name = 'Doe'), 'What happend: go out from home. Guess: go to the - work', '2025-07-30 08:57:33'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Emily' AND second_name = 'Martinez'), 'What happend: enter the building: Office Center:342. Guess: arrived at work', '2025-07-30 08:58:03'::timestamp),
('indoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Sarah' AND second_name = 'Rodriguez'), 'What happend: enter into the elevator of building: Office Center:342. Guess: arrived at work', '2025-07-30 08:58:27'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Samantha' AND second_name = 'Perez'), 'What happend: enter the building: Office Center:342. Guess: arrived at work', '2025-07-30 08:59:21'::timestamp),
('indoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Maria' AND second_name = 'Hernandez'), 'What happend: enter into the elevator of building: Office Center:342. Guess: arrived at work', '2025-07-30 08:59:28'::timestamp),
('indoor camera catch', (SELECT id FROM civilian WHERE first_name = 'David' AND second_name = 'Martinez'), 'What happend: enter into the elevator of building: Office Center:342. Guess: arrived at work', '2025-07-30 08:59:44'::timestamp),
('indoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Michael' AND second_name = 'Garcia'), 'What happend: enter into the elevator of building: Office Center:342. Guess: arrived at work', '2025-07-30 09:00:15'::timestamp),
('indoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Emily' AND second_name = 'Martinez'), 'What happend: enter into the elevator of building: Office Center:342. Guess: arrived at work', '2025-07-30 09:01:37'::timestamp),
('indoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Samantha' AND second_name = 'Perez'), 'What happend: enter into the elevator of building: Office Center:342. Guess: arrived at work', '2025-07-30 09:02:55'::timestamp),
('outdoor camera catch', (select id from civilian where first_name = 'John' and second_name = 'Doe'), 'What happend: enter the building: Office Center:342. Guess: arrived at work', '2025-07-30 09:08:22'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Sarah' AND second_name = 'Rodriguez'), 'What happend: go out from building: Office Center:342. Guess: go to smoke break', '2025-07-30 09:09:09'::timestamp); -- перекур
('indoor camera catch', (select id from civilian where first_name = 'John' and second_name = 'Doe'), 'What happend: enter into the elevator of building: Office Center:342. Guess: arrived at work', '2025-07-30 09:10:04'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'David' AND second_name = 'Martinez'), 'What happend: go out from building: Office Center:342. Guess: go to smoke break', '2025-07-30 09:10:19'::timestamp), -- перекур
-- dayoff
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Maria' AND second_name = 'Hernandez'), 'What happend: left the building: Office Center:342. Guess: quits work', '2025-07-30 18:00:33'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Michael' AND second_name = 'Garcia'), 'What happend: left the building: Office Center:342. Guess: quits work', '2025-07-30 18:01:42'::timestamp)
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'David' AND second_name = 'Martinez'), 'What happend: left the building: Office Center:342. Guess: quits work', '2025-07-30 18:02:57'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Sarah' AND second_name = 'Rodriguez'), 'What happend: left the building: Office Center:342. Guess: quits work', '2025-07-30 18:02:58'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Samantha' AND second_name = 'Perez'), 'What happend: left the building: Office Center:342. Guess: quits work', '2025-07-30 18:03:24'::timestamp),
('outdoor camera catch', (SELECT id FROM civilian WHERE first_name = 'Emily' AND second_name = 'Martinez'), 'What happend: left the building: Office Center:342. Guess: quits work', '2025-07-30 18:04:09'::timestamp),
('outdoor camera catch', (select id from civilian where first_name = 'John' and second_name = 'Doe'), 'What happend: left the building: Office Center:342. Guess: quits work', '2025-07-30 18:15:39'::timestamp),


-- incident
('system power check', null, 'building: Office Center:342. outdoor camera checking... Status: online', '2025-07-31 00:00:01'::timestamp),
('system power check', null, 'building: Office Center:342. indoor camera checking... Status: online', '2025-07-31 00:00:05'::timestamp),
('system power check', null, 'building: TechStore:53. outdoor camera checking... Status: online', '2025-07-31 00:10:05'::timestamp),
('outdoor camera catch', null, 'What happend: unknown civilian walk around the building TechStore:53. Guess: ', '2025-07-31 02:31:19'::timestamp),
('outdoor camera power lost', null, 'What happend: camera on the building TechStore:53 lost power. Checking cameras nearby... Status: online. Checking power control for TechStore:53... Status: online. Guess: breakdown, unauthorized shutdown', '2025-07-31 02:35:41'::timestamp),
('system', null, 'Packing and sending data to the detective', now())
;

INSERT INTO incident (
    type, description, victim_id
) VALUES
    ('robbery', '',
     (select id from civilian where first_name = 'Alex' and second_name = 'Starmight')
    )
;

INSERT INTO evidence (
    incident_id, location_id, type, description
) VALUES
    (
        (select i.id
            from incident i
            join civilian c on c.id = i.victim_id
                and first_name = 'Alex' and second_name = 'Starmight'
            where type = 'robbery'), 
        (select id from location
            where
                street = 'Shopping Alley' and
                building_name = 'TechStore' and
                building_number = 53
        ),
        'physical', 'Criminal investigation group found blood with group: 1, DNA: AH8b, metall pipe, broken glass at the backdoor of the building TechStore:53')
;

INSERT INTO answer (
    incident_id, suspect_id
) VALUES
    (
        (select i.id from incident i
        join civilian c on c.id = i.victim_id
            and first_name = 'Alex' and second_name = 'Starmight'
        where type = 'robbery'
        ),
        (select id
            from civilian
            where first_name = 'John' and second_name = 'Doe'
        )
    )
;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
truncate table location cascade;
truncate table address cascade;
truncate table job cascade;
truncate table civilian cascade;
truncate table action cascade;
truncate table incident cascade;
truncate table evidence cascade;
-- +goose StatementEnd
