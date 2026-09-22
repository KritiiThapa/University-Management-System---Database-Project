
-- semester

INSERT INTO semester (
    semester_id, semester_name, start_date, end_date, status
)
VALUES (
    'SEM1',
    'Fall 2026',
    DATE '2026-08-01',
    DATE '2026-12-20',
    'ACTIVE'
);

INSERT INTO semester (
    semester_id, semester_name, start_date, end_date, status
)
VALUES (
    'SEM2',
    'Spring 2027',
    DATE '2027-01-15',
    DATE '2027-06-15',
    'UPCOMING'
);

INSERT INTO semester (
    semester_id, semester_name, start_date, end_date, status
)
VALUES (
    'SEM3',
    'Fall 2027',
    DATE '2027-08-01',
    DATE '2027-12-20',
    'UPCOMING'
);

INSERT INTO semester (
    semester_id, semester_name, start_date, end_date, status
)
VALUES (
    'SEM4',
    'Spring 2028',
    DATE '2028-01-15',
    DATE '2028-06-15',
    'UPCOMING'
);

COMMIT;

