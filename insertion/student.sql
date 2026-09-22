--program

INSERT INTO program (
    program_id,
    program_name,
    department_id,
    duration_years
)
VALUES (
    'P1',
    'BSc CSIT',
    'D1',
    4
);

INSERT INTO program (
    program_id,
    program_name,
    department_id,
    duration_years
)
VALUES (
    'P2',
    'BCA',
    'D1',
    4
);

INSERT INTO program (
    program_id,
    program_name,
    department_id,
    duration_years
)
VALUES (
    'P3',
    'BBA',
    'D2',
    4
);

INSERT INTO program (
    program_id,
    program_name,
    department_id,
    duration_years
)
VALUES (
    'P4',
    'BSc Mathematics',
    'D3',
    4
);

INSERT INTO program (
    program_id,
    program_name,
    department_id,
    duration_years
)
VALUES (
    'P5',
    'BE Computer Engineering',
    'D4',
    4
);

INSERT INTO program (
    program_id,
    program_name,
    department_id,
    duration_years
)
VALUES (
    'P6',
    'BE Civil Engineering',
    'D4',
    4
);

COMMIT;

SELECT *
FROM program
ORDER BY program_id;
