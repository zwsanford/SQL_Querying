Select first_name, last_name From student;
    
Select instructor_id From instructor Where tenured = 1;

Select student.first_name, student.last_name, instructor.first_name, instructor.last_name From student INNER JOIN instructor ON student.advisor_id = instructor.instructor_id;

Select instructor_id, instructor.first_name, instructor.last_name From instructor LEFT JOIN student ON instructor.instructor_id = student.advisor_id WHERE student.advisor_id is NULL;

Select instructor.first_name, instructor.last_name, SUM(course.num_credits) FROM instructor LEFT JOIN course ON instructor.instructor_id = course.instructor_id GROUP BY instructor.instructor_id;

Select course_code, course_name From course Where course_code LIKE'%3___%';

Select course.course_code, instructor.first_name, instructor.last_name, course.num_credits From course INNER JOIN instructor ON instructor.instructor_id = course.instructor_id INNER JOIN student_schedule ON student_schedule.course_id = course.course_id AND student_schedule.student_id = 1;