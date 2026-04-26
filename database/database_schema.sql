IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'faculty_feedback')
BEGIN
    CREATE DATABASE faculty_feedback;
END
GO

USE faculty_feedback;
GO


CREATE TABLE users (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(100) NOT NULL,
    username NVARCHAR(50) NOT NULL UNIQUE,
    password NVARCHAR(255) NOT NULL,
    role NVARCHAR(20) NOT NULL CHECK (role IN ('ADMIN', 'HOD', 'TEACHER', 'STUDENT')),
    department NVARCHAR(100) NULL,
    created_at DATETIME DEFAULT GETDATE()
);

CREATE TABLE courses (
    id INT IDENTITY(1,1) PRIMARY KEY,
    course_code NVARCHAR(50) NOT NULL UNIQUE,
    course_name NVARCHAR(255) NOT NULL,
    department NVARCHAR(100) NOT NULL
);

CREATE TABLE course_assignments (
    id INT IDENTITY(1,1) PRIMARY KEY,
    course_id NVARCHAR(50),
    teacher_username NVARCHAR(50),
    CONSTRAINT unique_course_teacher UNIQUE (course_id, teacher_username),
    CONSTRAINT fk_course_assignments_course FOREIGN KEY (course_id) 
        REFERENCES courses (course_code) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_course_assignments_teacher FOREIGN KEY (teacher_username) 
        REFERENCES users (username) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE student_enrollments (
    id INT IDENTITY(1,1) PRIMARY KEY,
    assignment_id INT,
    student_username NVARCHAR(100),
    CONSTRAINT unique_student_assignment UNIQUE (assignment_id, student_username),
    CONSTRAINT fk_enrollment_assignment FOREIGN KEY (assignment_id) 
        REFERENCES course_assignments (id)
);

CREATE TABLE feedback (
    id INT IDENTITY(1,1) PRIMARY KEY,
    enrollment_id INT UNIQUE,
    clarity_rating INT,
    difficulty_rating INT,
    fairness_rating INT,
    engagement_rating INT,
    workload_rating INT,
    tags NVARCHAR(255),
    comment NVARCHAR(255),
    created_at DATETIME DEFAULT GETDATE(),
    CONSTRAINT fk_feedback_enrollment FOREIGN KEY (enrollment_id) 
        REFERENCES student_enrollments (id)
);

CREATE TABLE feedbacks (
    id INT IDENTITY(1,1) PRIMARY KEY,
    student_id INT NOT NULL,
    teacher_id INT NOT NULL,
    rating INT CHECK (rating >= 1 AND rating <= 5),
    comments NVARCHAR(MAX),
    is_deleted BIT DEFAULT 0,
    created_at DATETIME DEFAULT GETDATE(),
    CONSTRAINT fk_feedbacks_student FOREIGN KEY (student_id) REFERENCES users (id),
    CONSTRAINT fk_feedbacks_teacher FOREIGN KEY (teacher_id) REFERENCES users (id)
);

GO
-- Trigger for Insert
CREATE TRIGGER trg_check_teacher_role_insert 
ON course_assignments
AFTER INSERT
AS
BEGIN
    IF EXISTS (
        SELECT 1 FROM inserted i
        JOIN users u ON i.teacher_username = u.username
        WHERE u.role NOT IN ('TEACHER', 'HOD')
    )
    BEGIN
        RAISERROR ('User role must be TEACHER or HOD', 16, 1);
        ROLLBACK TRANSACTION;
    END
END;
GO

-- Trigger for Update
CREATE TRIGGER trg_check_teacher_role_update 
ON course_assignments
AFTER UPDATE
AS
BEGIN
    IF EXISTS (
        SELECT 1 FROM inserted i
        JOIN users u ON i.teacher_username = u.username
        WHERE u.role NOT IN ('TEACHER', 'HOD')
    )
    BEGIN
        RAISERROR ('User role must be TEACHER or HOD', 16, 1);
        ROLLBACK TRANSACTION;
    END
END;
GO

CREATE TABLE questions (
    id           INT IDENTITY(1,1) PRIMARY KEY,
    question_text NVARCHAR(500)  NOT NULL,
    question_type NVARCHAR(20)   NOT NULL
                  CHECK (question_type IN ('LIKERT','SLIDER','TEXT','BINARY')),
    perf_factor  NVARCHAR(100)  NOT NULL,
    type_metadata NVARCHAR(MAX),
    created_at   DATETIME DEFAULT GETDATE()
);

CREATE TABLE questionnaires (
    id          INT IDENTITY(1,1) PRIMARY KEY,
    name        NVARCHAR(200) NOT NULL UNIQUE,
    description NVARCHAR(500),
    created_at  DATETIME DEFAULT GETDATE()
);

CREATE TABLE questionnaire_questions (
    id               INT IDENTITY(1,1) PRIMARY KEY,
    questionnaire_id INT NOT NULL,
    question_id      INT NOT NULL,
    display_order    INT DEFAULT 0,
    CONSTRAINT fk_qq_questionnaire FOREIGN KEY (questionnaire_id)
        REFERENCES questionnaires(id) ON DELETE CASCADE,
    CONSTRAINT fk_qq_question FOREIGN KEY (question_id)
        REFERENCES questions(id),
    CONSTRAINT uq_qq UNIQUE (questionnaire_id, question_id)
);

CREATE TABLE form_schedules (
    id               INT IDENTITY(1,1) PRIMARY KEY,
    questionnaire_id INT          NOT NULL,
    department       NVARCHAR(100) NOT NULL,
    course_code      NVARCHAR(50)  NOT NULL,
    semester         NVARCHAR(20)  NULL,
    start_date       DATE          NOT NULL,
    end_date         DATE          NOT NULL,
    status           NVARCHAR(20)  DEFAULT 'ACTIVE'
                     CHECK (status IN ('ACTIVE','CLOSED','PENDING')),
    created_by       NVARCHAR(50),
    created_at       DATETIME DEFAULT GETDATE(),
    CONSTRAINT fk_fs_questionnaire FOREIGN KEY (questionnaire_id)
        REFERENCES questionnaires(id),
    CONSTRAINT fk_fs_course FOREIGN KEY (course_code)
        REFERENCES courses(course_code)
);

CREATE TABLE form_responses (
    id               INT IDENTITY(1,1) PRIMARY KEY,
    schedule_id      INT          NOT NULL,
    student_username NVARCHAR(50)  NOT NULL,
    department       NVARCHAR(100) NOT NULL,
    course_code      NVARCHAR(50)  NOT NULL,
    teacher_username NVARCHAR(50),
    questionnaire_id INT          NOT NULL,
    questionnaire_name NVARCHAR(200),
    submitted_at     DATETIME DEFAULT GETDATE(),
    CONSTRAINT fk_fr_schedule FOREIGN KEY (schedule_id)
        REFERENCES form_schedules(id),
    CONSTRAINT uq_fr UNIQUE (schedule_id, student_username)
);

CREATE TABLE response_answers (
    id            INT IDENTITY(1,1) PRIMARY KEY,
    response_id   INT          NOT NULL,
    question_id   INT          NOT NULL,
    question_text NVARCHAR(500),
    question_type NVARCHAR(20),
    perf_factor   NVARCHAR(100),
    answer_value  NVARCHAR(MAX),
    numeric_score FLOAT,
    CONSTRAINT fk_ra_response FOREIGN KEY (response_id)
        REFERENCES form_responses(id) ON DELETE CASCADE,
    CONSTRAINT fk_ra_question FOREIGN KEY (question_id)
        REFERENCES questions(id)
);

CREATE TABLE session_logs (
    id               INT IDENTITY(1,1) PRIMARY KEY,
    username         NVARCHAR(50)  NOT NULL,
    role             NVARCHAR(20),
    login_at         DATETIME DEFAULT GETDATE(),
    logout_at        DATETIME NULL,
    duration_seconds INT NULL,
    CONSTRAINT fk_sl_user FOREIGN KEY (username)
        REFERENCES users(username) ON DELETE CASCADE ON UPDATE CASCADE
);