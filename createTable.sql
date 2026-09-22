CREATE TABLE department(
    department_id VARCHAR2(100),
    department_name VARCHAR2(100) NOT NULL,
    description VARCHAR2(500),

    CONSTRAINT pk_department PRIMARY KEY(department_id),
    CONSTRAINT uq_department_name UNIQUE(department_name)
);

CREATE TABLE program (
    program_id VARCHAR2(100),
    program_name VARCHAR2(100) NOT NULL,
    department_id VARCHAR2(100) NOT NULL,
    duration_years NUMBER NOT NULL,

    CONSTRAINT pk_program PRIMARY KEY(program_id),
    CONSTRAINT uq_program_name UNIQUE(program_name),
    CONSTRAINT fk_program_department 
        FOREIGN KEY(department_id)
        REFERENCES department(department_id),
    CONSTRAINT chk_program_duration CHECK(duration_years>0)
      
);

CREATE TABLE student (
    student_id       VARCHAR2(100),
    registration_no  VARCHAR2(30) NOT NULL,
    first_name       VARCHAR2(50) NOT NULL,
    last_name        VARCHAR2(50) NOT NULL,
    email            VARCHAR2(100),
    phone            VARCHAR2(20),
    date_of_birth    DATE,
    enrollment_date  DATE DEFAULT SYSDATE NOT NULL,
    status           VARCHAR2(20) DEFAULT 'ACTIVE' NOT NULL,
    program_id       VARCHAR2(100) NOT NULL,

    CONSTRAINT pk_student
        PRIMARY KEY (student_id),

    CONSTRAINT uq_student_registration
        UNIQUE (registration_no),

    CONSTRAINT uq_student_email
        UNIQUE (email),

    CONSTRAINT chk_student_status
        CHECK (status IN ('ACTIVE', 'INACTIVE', 'GRADUATED')),

    CONSTRAINT fk_student_program
        FOREIGN KEY (program_id)
        REFERENCES program(program_id)
);

CREATE TABLE faculty (
    faculty_id      VARCHAR2(100),
    first_name      VARCHAR2(50) NOT NULL,
    last_name       VARCHAR2(50) NOT NULL,
    email           VARCHAR2(100) NOT NULL,
    phone           VARCHAR2(20),
    hire_date       DATE DEFAULT SYSDATE NOT NULL,
    designation     VARCHAR2(30) NOT NULL,
    department_id   VARCHAR2(100) NOT NULL,

    CONSTRAINT pk_faculty
        PRIMARY KEY (faculty_id),

    CONSTRAINT uq_faculty_email
        UNIQUE (email),

    CONSTRAINT chk_faculty_designation
        CHECK (
            designation IN (
                'PROFESSOR',
                'ASSOCIATE PROFESSOR',
                'ASSISTANT PROFESSOR',
                'LECTURER'
            )
        ),

    CONSTRAINT fk_faculty_department
        FOREIGN KEY (department_id)
        REFERENCES department(department_id)
);

CREATE TABLE course (
    course_id       VARCHAR2(100),
    course_code     VARCHAR2(20) NOT NULL,
    course_name     VARCHAR2(100) NOT NULL,
    credit_hours    NUMBER NOT NULL,
    department_id   VARCHAR2(100) NOT NULL,

    CONSTRAINT pk_course
        PRIMARY KEY (course_id),

    CONSTRAINT uq_course_code
        UNIQUE (course_code),

    CONSTRAINT chk_course_credit
        CHECK (credit_hours > 0),

    CONSTRAINT fk_course_department
        FOREIGN KEY (department_id)
        REFERENCES department(department_id)
);

CREATE TABLE program_course (
    program_id       VARCHAR2(100),
    course_id        VARCHAR2(100),
    semester_number  NUMBER NOT NULL,

    CONSTRAINT pk_program_course
        PRIMARY KEY (program_id, course_id),

    CONSTRAINT fk_pc_program
        FOREIGN KEY (program_id)
        REFERENCES program(program_id),

    CONSTRAINT fk_pc_course
        FOREIGN KEY (course_id)
        REFERENCES course(course_id),

    CONSTRAINT chk_pc_semester
        CHECK (semester_number BETWEEN 1 AND 8)
);

CREATE TABLE semester (
    semester_id    VARCHAR2(100),
    semester_name  VARCHAR2(50) NOT NULL,
    start_date     DATE NOT NULL,
    end_date       DATE NOT NULL,
    status         VARCHAR2(20) DEFAULT 'UPCOMING' NOT NULL,

    CONSTRAINT pk_semester
        PRIMARY KEY (semester_id),

    CONSTRAINT uq_semester_name
        UNIQUE (semester_name),

    CONSTRAINT chk_semester_dates
        CHECK (end_date > start_date),

    CONSTRAINT chk_semester_status
        CHECK (status IN ('UPCOMING', 'ACTIVE', 'COMPLETED'))
);

CREATE TABLE enrollment (
    enrollment_id    VARCHAR2(100),
    student_id       VARCHAR2(100) NOT NULL,
    semester_id      VARCHAR2(100) NOT NULL,
    semester_number  NUMBER NOT NULL,
    enrollment_date  DATE DEFAULT SYSDATE NOT NULL,
    status           VARCHAR2(20) DEFAULT 'ENROLLED' NOT NULL,

    CONSTRAINT pk_enrollment
        PRIMARY KEY (enrollment_id),

    CONSTRAINT fk_enrollment_student
        FOREIGN KEY (student_id)
        REFERENCES student(student_id),

    CONSTRAINT fk_enrollment_semester
        FOREIGN KEY (semester_id)
        REFERENCES semester(semester_id),

    CONSTRAINT chk_enrollment_sem_no
        CHECK (semester_number BETWEEN 1 AND 8),

    CONSTRAINT chk_enrollment_status
        CHECK (status IN ('ENROLLED', 'COMPLETED', 'WITHDRAWN')),

    CONSTRAINT uq_student_semester
        UNIQUE (student_id, semester_id)
);

CREATE TABLE exam (
    exam_id       VARCHAR2(100),
    course_id     VARCHAR2(100) NOT NULL,
    semester_id   VARCHAR2(100) NOT NULL,
    exam_type     VARCHAR2(20) NOT NULL,
    exam_date     DATE NOT NULL,
    max_marks     NUMBER NOT NULL,
    pass_marks    NUMBER NOT NULL,

    CONSTRAINT pk_exam
        PRIMARY KEY (exam_id),

    CONSTRAINT fk_exam_course
        FOREIGN KEY (course_id)
        REFERENCES course(course_id),

    CONSTRAINT fk_exam_semester
        FOREIGN KEY (semester_id)
        REFERENCES semester(semester_id),

    CONSTRAINT chk_exam_type
        CHECK (exam_type IN ('MIDTERM', 'FINAL', 'PRACTICAL')),

    CONSTRAINT chk_exam_max_marks
        CHECK (max_marks > 0),

    CONSTRAINT chk_exam_pass_marks
        CHECK (pass_marks >= 0 AND pass_marks <= max_marks)
);


CREATE TABLE result (
    result_id       VARCHAR2(100),
    student_id      VARCHAR2(100) NOT NULL,
    exam_id         VARCHAR2(100) NOT NULL,
    marks_obtained  NUMBER NOT NULL,

    CONSTRAINT pk_result
        PRIMARY KEY (result_id),

    CONSTRAINT fk_result_student
        FOREIGN KEY (student_id)
        REFERENCES student(student_id),

    CONSTRAINT fk_result_exam
        FOREIGN KEY (exam_id)
        REFERENCES exam(exam_id),

    CONSTRAINT uq_student_exam
        UNIQUE (student_id, exam_id),

    CONSTRAINT chk_result_marks
        CHECK (marks_obtained >= 0)
);




--class
CREATE TABLE class (
    class_id      VARCHAR2(100),
    course_id     VARCHAR2(100) NOT NULL,
    faculty_id    VARCHAR2(100) NOT NULL,
    semester_id   VARCHAR2(100) NOT NULL,
    class_date    DATE NOT NULL,

    CONSTRAINT pk_class
        PRIMARY KEY (class_id),

    CONSTRAINT fk_class_course
        FOREIGN KEY (course_id)
        REFERENCES course(course_id),

    CONSTRAINT fk_class_faculty
        FOREIGN KEY (faculty_id)
        REFERENCES faculty(faculty_id),

    CONSTRAINT fk_class_semester
        FOREIGN KEY (semester_id)
        REFERENCES semester(semester_id)
);


CREATE TABLE attendance (
    attendance_id  VARCHAR2(100),
    student_id     VARCHAR2(100) NOT NULL,
    class_id       VARCHAR2(100) NOT NULL,
    status         VARCHAR2(10) NOT NULL,

    CONSTRAINT pk_attendance
        PRIMARY KEY (attendance_id),

    CONSTRAINT fk_attendance_student
        FOREIGN KEY (student_id)
        REFERENCES student(student_id),

    CONSTRAINT fk_attendance_class
        FOREIGN KEY (class_id)
        REFERENCES class(class_id),

    CONSTRAINT chk_attendance_status
        CHECK (status IN ('PRESENT', 'ABSENT')),

    CONSTRAINT uq_student_class
        UNIQUE (student_id, class_id)
);

CREATE TABLE payment (
    payment_id      VARCHAR2(100),
    enrollment_id   VARCHAR2(100) NOT NULL,
    amount          NUMBER(10,2) NOT NULL,
    payment_date    DATE DEFAULT SYSDATE NOT NULL,
    payment_method  VARCHAR2(20) NOT NULL,

    CONSTRAINT pk_payment
        PRIMARY KEY (payment_id),

    CONSTRAINT fk_payment_enrollment
        FOREIGN KEY (enrollment_id)
        REFERENCES enrollment(enrollment_id),

    CONSTRAINT chk_payment_amount
        CHECK (amount > 0),

    CONSTRAINT chk_payment_method
        CHECK (payment_method IN ('CASH', 'CARD', 'BANK', 'ONLINE'))
);


 