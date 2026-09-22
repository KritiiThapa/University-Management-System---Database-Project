-- exam

-- =====================================================
-- C1 = Introduction to Programming
-- =====================================================

INSERT INTO exam (
    exam_id, course_id, semester_id,
    exam_type, exam_date, max_marks, pass_marks
)
VALUES (
    'EX1', 'C1', 'SEM1',
    'MIDTERM', DATE '2026-10-05', 50, 20
);

INSERT INTO exam (
    exam_id, course_id, semester_id,
    exam_type, exam_date, max_marks, pass_marks
)
VALUES (
    'EX2', 'C1', 'SEM1',
    'FINAL', DATE '2026-12-05', 100, 40
);


-- =====================================================
-- C3 = Database Management Systems
-- =====================================================

INSERT INTO exam (
    exam_id, course_id, semester_id,
    exam_type, exam_date, max_marks, pass_marks
)
VALUES (
    'EX3', 'C3', 'SEM1',
    'MIDTERM', DATE '2026-10-07', 50, 20
);

INSERT INTO exam (
    exam_id, course_id, semester_id,
    exam_type, exam_date, max_marks, pass_marks
)
VALUES (
    'EX4', 'C3', 'SEM1',
    'FINAL', DATE '2026-12-07', 100, 40
);


-- =====================================================
-- C4 = Artificial Intelligence
-- =====================================================

INSERT INTO exam (
    exam_id, course_id, semester_id,
    exam_type, exam_date, max_marks, pass_marks
)
VALUES (
    'EX5', 'C4', 'SEM1',
    'MIDTERM', DATE '2026-10-09', 50, 20
);

INSERT INTO exam (
    exam_id, course_id, semester_id,
    exam_type, exam_date, max_marks, pass_marks
)
VALUES (
    'EX6', 'C4', 'SEM1',
    'FINAL', DATE '2026-12-09', 100, 40
);


-- =====================================================
-- C5 = Principles of Management
-- =====================================================

INSERT INTO exam (
    exam_id, course_id, semester_id,
    exam_type, exam_date, max_marks, pass_marks
)
VALUES (
    'EX7', 'C5', 'SEM1',
    'MIDTERM', DATE '2026-10-11', 50, 20
);

INSERT INTO exam (
    exam_id, course_id, semester_id,
    exam_type, exam_date, max_marks, pass_marks
)
VALUES (
    'EX8', 'C5', 'SEM1',
    'FINAL', DATE '2026-12-11', 100, 40
);


-- =====================================================
-- C7 = Calculus
-- =====================================================

INSERT INTO exam (
    exam_id, course_id, semester_id,
    exam_type, exam_date, max_marks, pass_marks
)
VALUES (
    'EX9', 'C7', 'SEM1',
    'MIDTERM', DATE '2026-10-13', 50, 20
);

INSERT INTO exam (
    exam_id, course_id, semester_id,
    exam_type, exam_date, max_marks, pass_marks
)
VALUES (
    'EX10', 'C7', 'SEM1',
    'FINAL', DATE '2026-12-13', 100, 40
);


-- =====================================================
-- C9 = Engineering Drawing
-- =====================================================

INSERT INTO exam (
    exam_id, course_id, semester_id,
    exam_type, exam_date, max_marks, pass_marks
)
VALUES (
    'EX11', 'C9', 'SEM1',
    'MIDTERM', DATE '2026-10-15', 50, 20
);

INSERT INTO exam (
    exam_id, course_id, semester_id,
    exam_type, exam_date, max_marks, pass_marks
)
VALUES (
    'EX12', 'C9', 'SEM1',
    'FINAL', DATE '2026-12-15', 100, 40
);

COMMIT;
