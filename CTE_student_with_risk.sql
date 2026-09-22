-- Question 1 Which students are academically at risk?
WITH attendance_summary AS (
    SELECT
        student_id,
        COUNT(*) AS total_classes,
        SUM(CASE
                WHEN status = 'PRESENT' THEN 1
                ELSE 0
            END) AS classes_present,
        ROUND(
            100 * SUM(CASE
                          WHEN status = 'PRESENT' THEN 1
                          ELSE 0
                      END)
            / COUNT(*),
            2
        ) AS attendance_percentage
    FROM attendance
    GROUP BY student_id
),

exam_summary AS (
    SELECT
        r.student_id,
        COUNT(*) AS exams_taken,
        SUM(CASE
                WHEN r.marks_obtained < e.pass_marks THEN 1
                ELSE 0
            END) AS failed_exams,
        ROUND(
            AVG(r.marks_obtained * 100 / e.max_marks),
            2
        ) AS average_exam_percentage
    FROM result r
    JOIN exam e
        ON r.exam_id = e.exam_id
    GROUP BY r.student_id
)

SELECT
    s.student_id,
    s.first_name,
    s.last_name,
    a.attendance_percentage,
    NVL(e.exams_taken, 0) AS exams_taken,
    NVL(e.failed_exams, 0) AS failed_exams,
    e.average_exam_percentage,

    CASE
        WHEN a.attendance_percentage < 75
             AND NVL(e.failed_exams, 0) > 0
            THEN 'HIGH RISK'

        WHEN a.attendance_percentage < 75
             OR NVL(e.failed_exams, 0) > 0
            THEN 'AT RISK'

        ELSE 'GOOD'
    END AS risk_status

FROM student s

LEFT JOIN attendance_summary a
    ON s.student_id = a.student_id

LEFT JOIN exam_summary e
    ON s.student_id = e.student_id

ORDER BY
    failed_exams DESC,
    attendance_percentage;













