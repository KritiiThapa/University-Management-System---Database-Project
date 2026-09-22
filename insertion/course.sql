
--course
-- Computer Science courses

INSERT INTO course (
    course_id, course_code, course_name, credit_hours, department_id
)
VALUES (
    'C1', 'CSC101', 'Introduction to Programming', 3, 'D1'
);

INSERT INTO course (
    course_id, course_code, course_name, credit_hours, department_id
)
VALUES (
    'C2', 'CSC201', 'Data Structures and Algorithms', 3, 'D1'
);

INSERT INTO course (
    course_id, course_code, course_name, credit_hours, department_id
)
VALUES (
    'C3', 'CSC301', 'Database Management Systems', 3, 'D1'
);

INSERT INTO course (
    course_id, course_code, course_name, credit_hours, department_id
)
VALUES (
    'C4', 'CSC401', 'Artificial Intelligence', 3, 'D1'
);


-- Management courses

INSERT INTO course (
    course_id, course_code, course_name, credit_hours, department_id
)
VALUES (
    'C5', 'MGT101', 'Principles of Management', 3, 'D2'
);

INSERT INTO course (
    course_id, course_code, course_name, credit_hours, department_id
)
VALUES (
    'C6', 'MGT201', 'Financial Management', 3, 'D2'
);


-- Mathematics courses

INSERT INTO course (
    course_id, course_code, course_name, credit_hours, department_id
)
VALUES (
    'C7', 'MAT101', 'Calculus', 3, 'D3'
);

INSERT INTO course (
    course_id, course_code, course_name, credit_hours, department_id
)
VALUES (
    'C8', 'MAT201', 'Statistics and Probability', 3, 'D3'
);


-- Engineering courses

INSERT INTO course (
    course_id, course_code, course_name, credit_hours, department_id
)
VALUES (
    'C9', 'ENG101', 'Engineering Drawing', 3, 'D4'
);

INSERT INTO course (
    course_id, course_code, course_name, credit_hours, department_id
)
VALUES (
    'C10', 'ENG201', 'Digital Logic', 3, 'D4'
);

COMMIT;