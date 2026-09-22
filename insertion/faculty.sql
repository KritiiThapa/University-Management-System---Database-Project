
-- faculty

-- =============================================
-- COMPUTER SCIENCE DEPARTMENT (D1)
-- =============================================

INSERT INTO faculty (
    faculty_id, first_name, last_name,
    email, phone, hire_date,
    designation, department_id
)
VALUES (
    'F1', 'Aarav', 'Sharma',
    'aarav.sharma@university.edu', '9800000001',
    DATE '2020-01-15',
    'ASSOCIATE PROFESSOR', 'D1'
);

INSERT INTO faculty (
    faculty_id, first_name, last_name,
    email, phone, hire_date,
    designation, department_id
)
VALUES (
    'F2', 'Sita', 'Karki',
    'sita.karki@university.edu', '9800000002',
    DATE '2022-07-10',
    'LECTURER', 'D1'
);


-- =============================================
-- MANAGEMENT DEPARTMENT (D2)
-- =============================================

INSERT INTO faculty (
    faculty_id, first_name, last_name,
    email, phone, hire_date,
    designation, department_id
)
VALUES (
    'F3', 'Ramesh', 'Adhikari',
    'ramesh.adhikari@university.edu', '9800000003',
    DATE '2018-03-20',
    'PROFESSOR', 'D2'
);


-- =============================================
-- MATHEMATICS DEPARTMENT (D3)
-- =============================================

INSERT INTO faculty (
    faculty_id, first_name, last_name,
    email, phone, hire_date,
    designation, department_id
)
VALUES (
    'F4', 'Nisha', 'Thapa',
    'nisha.thapa@university.edu', '9800000004',
    DATE '2021-08-01',
    'ASSISTANT PROFESSOR', 'D3'
);


-- =============================================
-- ENGINEERING DEPARTMENT (D4)
-- =============================================

INSERT INTO faculty (
    faculty_id, first_name, last_name,
    email, phone, hire_date,
    designation, department_id
)
VALUES (
    'F5', 'Bikash', 'Rai',
    'bikash.rai@university.edu', '9800000005',
    DATE '2019-05-12',
    'ASSOCIATE PROFESSOR', 'D4'
);

INSERT INTO faculty (
    faculty_id, first_name, last_name,
    email, phone, hire_date,
    designation, department_id
)
VALUES (
    'F6', 'Anita', 'Gurung',
    'anita.gurung@university.edu', '9800000006',
    DATE '2023-02-01',
    'LECTURER', 'D4'
);

COMMIT;
