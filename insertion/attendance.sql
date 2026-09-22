
-- attendance
-- ST1 attendance for C1 - Introduction to Programming

INSERT INTO attendance
    (attendance_id, student_id, class_id, status)
VALUES
    ('A1', 'ST1', 'CL1', 'PRESENT');

INSERT INTO attendance
    (attendance_id, student_id, class_id, status)
VALUES
    ('A2', 'ST1', 'CL2', 'PRESENT');

INSERT INTO attendance
    (attendance_id, student_id, class_id, status)
VALUES
    ('A3', 'ST1', 'CL3', 'ABSENT');


-- ST1 attendance for C7 - Calculus

INSERT INTO attendance
    (attendance_id, student_id, class_id, status)
VALUES
    ('A4', 'ST1', 'CL11', 'PRESENT');

INSERT INTO attendance
    (attendance_id, student_id, class_id, status)
VALUES
    ('A5', 'ST1', 'CL12', 'PRESENT');


-- =====================================================
-- ST2 - BSc CSIT Semester 4
-- C3 = Database Management Systems
-- =====================================================

INSERT INTO attendance
    (attendance_id, student_id, class_id, status)
VALUES
    ('A6', 'ST2', 'CL4', 'PRESENT');

INSERT INTO attendance
    (attendance_id, student_id, class_id, status)
VALUES
    ('A7', 'ST2', 'CL5', 'PRESENT');

INSERT INTO attendance
    (attendance_id, student_id, class_id, status)
VALUES
    ('A8', 'ST2', 'CL6', 'PRESENT');


-- =====================================================
-- ST3 - BSc CSIT Semester 6
-- C4 = Artificial Intelligence
-- =====================================================

INSERT INTO attendance
    (attendance_id, student_id, class_id, status)
VALUES
    ('A9', 'ST3', 'CL7', 'PRESENT');

INSERT INTO attendance
    (attendance_id, student_id, class_id, status)
VALUES
    ('A10', 'ST3', 'CL8', 'ABSENT');


-- =====================================================
-- ST4 - BCA Semester 1
-- C1 = Introduction to Programming
-- =====================================================

INSERT INTO attendance
    (attendance_id, student_id, class_id, status)
VALUES
    ('A11', 'ST4', 'CL1', 'PRESENT');

INSERT INTO attendance
    (attendance_id, student_id, class_id, status)
VALUES
    ('A12', 'ST4', 'CL2', 'ABSENT');

INSERT INTO attendance
    (attendance_id, student_id, class_id, status)
VALUES
    ('A13', 'ST4', 'CL3', 'ABSENT');


-- =====================================================
-- ST5 - BCA Semester 3
-- C3 = Database Management Systems
-- =====================================================

INSERT INTO attendance
    (attendance_id, student_id, class_id, status)
VALUES
    ('A14', 'ST5', 'CL4', 'PRESENT');

INSERT INTO attendance
    (attendance_id, student_id, class_id, status)
VALUES
    ('A15', 'ST5', 'CL5', 'ABSENT');

INSERT INTO attendance
    (attendance_id, student_id, class_id, status)
VALUES
    ('A16', 'ST5', 'CL6', 'PRESENT');


-- =====================================================
-- ST6 - BBA Semester 1
-- C5 = Principles of Management
-- =====================================================

INSERT INTO attendance
    (attendance_id, student_id, class_id, status)
VALUES
    ('A17', 'ST6', 'CL9', 'PRESENT');

INSERT INTO attendance
    (attendance_id, student_id, class_id, status)
VALUES
    ('A18', 'ST6', 'CL10', 'PRESENT');


-- =====================================================
-- ST8 - BSc Mathematics Semester 1
-- C7 = Calculus
-- =====================================================

INSERT INTO attendance
    (attendance_id, student_id, class_id, status)
VALUES
    ('A19', 'ST8', 'CL11', 'PRESENT');

INSERT INTO attendance
    (attendance_id, student_id, class_id, status)
VALUES
    ('A20', 'ST8', 'CL12', 'ABSENT');


-- =====================================================
-- ST9 - BE Computer Engineering Semester 1
-- C7 and C9
-- =====================================================

INSERT INTO attendance
    (attendance_id, student_id, class_id, status)
VALUES
    ('A21', 'ST9', 'CL11', 'PRESENT');

INSERT INTO attendance
    (attendance_id, student_id, class_id, status)
VALUES
    ('A22', 'ST9', 'CL12', 'PRESENT');

INSERT INTO attendance
    (attendance_id, student_id, class_id, status)
VALUES
    ('A23', 'ST9', 'CL13', 'PRESENT');

INSERT INTO attendance
    (attendance_id, student_id, class_id, status)
VALUES
    ('A24', 'ST9', 'CL14', 'ABSENT');


-- =====================================================
-- ST10 - BE Civil Engineering Semester 1
-- C7 and C9
-- =====================================================

INSERT INTO attendance
    (attendance_id, student_id, class_id, status)
VALUES
    ('A25', 'ST10', 'CL11', 'ABSENT');

INSERT INTO attendance
    (attendance_id, student_id, class_id, status)
VALUES
    ('A26', 'ST10', 'CL12', 'PRESENT');

INSERT INTO attendance
    (attendance_id, student_id, class_id, status)
VALUES
    ('A27', 'ST10', 'CL13', 'PRESENT');

INSERT INTO attendance
    (attendance_id, student_id, class_id, status)
VALUES
    ('A28', 'ST10', 'CL14', 'PRESENT');

COMMIT;
