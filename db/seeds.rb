Room.delete_all

room_1 = Room.create number: 'L-26.11', fotoroom: '2-2.jpg', description: 'For cryptography'

room_2 = Room.create number: 'T-1.1', fotoroom: '53.jpg', description: 'Trifoglio'

Course.delete_all
course_1 = Course.create title: 'Maths-101', year: '1', program: 'bla bla', books: 'beep', tpcheckbox: 'Theory'
course_2 = Course.create title: 'Maths-101', year: '1', program: 'bla bla', books: 'beep', tpcheckbox: 'Practice'
course_3 = Course.create title: 'Java Programming', year: '2', program: 'bla bla', books: 'beep', tpcheckbox: 'Theory'

Teacher.delete_all
teacher_1 = Teacher.create name: 'Marco Materazzi', universita: 'Polimi-2003', tutorie: '15:00', add_info: 'param-pam-pam', foto: 'u1.jpg'
teacher_2 = Teacher.create name: 'Anna Castelazzi', universita: 'UNIMI-2003', tutorie: '17:00', add_info: 'param-pam-pam', foto: 'u2.jpg'

teacher_1.courses << course_1
teacher_1.courses << course_2
teacher_2.courses << course_3