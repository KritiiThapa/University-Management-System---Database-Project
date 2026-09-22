
-- student
-- =============================================
-- BSc CSIT students (P1)
-- =============================================

INSERT INTO student (
    student_id, registration_no, first_name, last_name,
    email, phone, date_of_birth, enrollment_date,
    status, program_id
)
VALUES (
    'ST1', 'REG2026001', 'Ram', 'Shrestha',
    'ram.shrestha@student.edu', '9810000001',
    DATE '2005-04-12', DATE '2026-08-01',
    'ACTIVE', 'P1'
);

INSERT INTO student (
    student_id, registration_no, first_name, last_name,
    email, phone, date_of_birth, enrollment_date,
    status, program_id
)
VALUES (
    'ST2', 'REG2026002', 'Priya', 'Karki',
    'priya.karki@student.edu', '9810000002',
    DATE '2005-07-21', DATE '2026-08-01',
    'ACTIVE', 'P1'
);

INSERT INTO student (
    student_id, registration_no, first_name, last_name,
    email, phone, date_of_birth, enrollment_date,
    status, program_id
)
VALUES (
    'ST3', 'REG2026003', 'Suman', 'Rai',
    'suman.rai@student.edu', '9810000003',
    DATE '2004-11-05', DATE '2026-08-01',
    'ACTIVE', 'P1'
);


-- =============================================
-- BCA students (P2)
-- =============================================

INSERT INTO student (
    student_id, registration_no, first_name, last_name,
    email, phone, date_of_birth, enrollment_date,
    status, program_id
)
VALUES (
    'ST4', 'REG2026004', 'Anisha', 'Gurung',
    'anisha.gurung@student.edu', '9810000004',
    DATE '2005-02-17', DATE '2026-08-01',
    'ACTIVE', 'P2'
);

INSERT INTO student (
    student_id, registration_no, first_name, last_name,
    email, phone, date_of_birth, enrollment_date,
    status, program_id
)
VALUES (
    'ST5', 'REG2026005', 'Rohan', 'Thapa',
    'rohan.thapa@student.edu', '9810000005',
    DATE '2005-09-09', DATE '2026-08-01',
    'ACTIVE', 'P2'
);


-- =============================================
-- BBA students (P3)
-- =============================================

INSERT INTO student (
    student_id, registration_no, first_name, last_name,
    email, phone, date_of_birth, enrollment_date,
    status, program_id
)
VALUES (
    'ST6', 'REG2026006', 'Sneha', 'Adhikari',
    'sneha.adhikari@student.edu', '9810000006',
    DATE '2004-12-15', DATE '2026-08-01',
    'ACTIVE', 'P3'
);

INSERT INTO student (
    student_id, registration_no, first_name, last_name,
    email, phone, date_of_birth, enrollment_date,
    status, program_id
)
VALUES (
    'ST7', 'REG2026007', 'Aayush', 'Bhandari',
    'aayush.bhandari@student.edu', '9810000007',
    DATE '2005-06-25', DATE '2026-08-01',
    'ACTIVE', 'P3'
);


-- =============================================
-- BSc Mathematics student (P4)
-- =============================================

INSERT INTO student (
    student_id, registration_no, first_name, last_name,
    email, phone, date_of_birth, enrollment_date,
    status, program_id
)
VALUES (
    'ST8', 'REG2026008', 'Maya', 'Poudel',
    'maya.poudel@student.edu', '9810000008',
    DATE '2005-01-30', DATE '2026-08-01',
    'ACTIVE', 'P4'
);


-- =============================================
-- BE Computer Engineering student (P5)
-- =============================================

INSERT INTO student (
    student_id, registration_no, first_name, last_name,
    email, phone, date_of_birth, enrollment_date,
    status, program_id
)
VALUES (
    'ST9', 'REG2026009', 'Nabin', 'Basnet',
    'nabin.basnet@student.edu', '9810000009',
    DATE '2004-08-14', DATE '2026-08-01',
    'ACTIVE', 'P5'
);


-- =============================================
-- BE Civil Engineering student (P6)
-- =============================================

INSERT INTO student (
    student_id, registration_no, first_name, last_name,
    email, phone, date_of_birth, enrollment_date,
    status, program_id
)
VALUES (
    'ST10', 'REG2026010', 'Kiran', 'Lama',
    'kiran.lama@student.edu', '9810000010',
    DATE '2005-03-08', DATE '2026-08-01',
    'ACTIVE', 'P6'
);

COMMIT;



-- update
-- ST1 stays a new student (Semester 1)

UPDATE student
SET enrollment_date = DATE '2025-01-15'
WHERE student_id = 'ST2';

UPDATE student
SET enrollment_date = DATE '2024-08-01'
WHERE student_id = 'ST3';

-- ST4 stays a new BCA student

UPDATE student
SET enrollment_date = DATE '2025-08-01'
WHERE student_id = 'ST5';

-- ST6 stays a new BBA student

UPDATE student
SET enrollment_date = DATE '2025-01-15'
WHERE student_id = 'ST7';

-- ST8, ST9, ST10 stay new students

COMMIT;

