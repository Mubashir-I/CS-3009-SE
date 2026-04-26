USE faculty_feedback;
GO

-- ============================================================
-- 1. USERS  (HODs, Teachers, Students)
-- ============================================================

SET IDENTITY_INSERT users ON;

-- ── HODs ────────────────────────────────────────────────────
INSERT INTO users (id, name, username, password, role, department, created_at) VALUES
(1,  'Dr. Furqan Nasir',      'furqan.nasir',    '1122', 'HOD', 'CS', '2020-01-05'),
(2,  'Dr. Arshad Islam',      'arshad.islam',    '1122', 'HOD', 'EE', '2020-01-05'),
(3,  'Dr. Sadia Mahmood',     'sadia.mahmood',   '1122', 'HOD', 'AI', '2020-01-05'),
(4,  'Dr. Tariq Mehmood',     'tariq.mehmood',   '1122', 'HOD', 'DS', '2020-01-05'),
(5,  'Dr. Hina Zafar',        'hina.zafar',      '1122', 'HOD', 'CY', '2020-01-05');

-- ── CS Teachers (IDs 6-15) ───────────────────────────────────
INSERT INTO users (id, name, username, password, role, department, created_at) VALUES
(6,  'Prof. Kamran Akhtar',   'kamran.akhtar',   '1122', 'TEACHER', 'CS', '2020-02-01'),
(7,  'Prof. Nadia Rasheed',   'nadia.rasheed',   '1122', 'TEACHER', 'CS', '2020-02-01'),
(8,  'Prof. Bilal Hussain',   'bilal.hussain',   '1122', 'TEACHER', 'CS', '2020-02-01'),
(9,  'Prof. Ayesha Malik',    'ayesha.malik',    '1122', 'TEACHER', 'CS', '2020-02-01'),
(10, 'Prof. Usman Farooq',    'usman.farooq',    '1122', 'TEACHER', 'CS', '2020-02-01'),
(11, 'Prof. Zainab Khattak',  'zainab.khattak',  '1122', 'TEACHER', 'CS', '2020-02-01'),
(12, 'Prof. Imran Shahzad',   'imran.shahzad',   '1122', 'TEACHER', 'CS', '2020-02-01'),
(13, 'Prof. Farah Noor',      'farah.noor',      '1122', 'TEACHER', 'CS', '2020-02-01'),
(14, 'Prof. Hassan Iqbal',    'hassan.iqbal',    '1122', 'TEACHER', 'CS', '2020-02-01'),
(15, 'Prof. Rabia Tanveer',   'rabia.tanveer',   '1122', 'TEACHER', 'CS', '2020-02-01');

-- ── EE Teachers (IDs 16-25) ──────────────────────────────────
INSERT INTO users (id, name, username, password, role, department, created_at) VALUES
(16, 'Prof. Shahid Anwar',    'shahid.anwar',    '1122', 'TEACHER', 'EE', '2020-02-01'),
(17, 'Prof. Lubna Zahoor',    'lubna.zahoor',    '1122', 'TEACHER', 'EE', '2020-02-01'),
(18, 'Prof. Omer Baig',       'omer.baig',       '1122', 'TEACHER', 'EE', '2020-02-01'),
(19, 'Prof. Sana Qureshi',    'sana.qureshi',    '1122', 'TEACHER', 'EE', '2020-02-01'),
(20, 'Prof. Waqar Saleem',    'waqar.saleem',    '1122', 'TEACHER', 'EE', '2020-02-01'),
(21, 'Prof. Amna Riaz',       'amna.riaz',       '1122', 'TEACHER', 'EE', '2020-02-01'),
(22, 'Prof. Tahir Nawaz',     'tahir.nawaz',     '1122', 'TEACHER', 'EE', '2020-02-01'),
(23, 'Prof. Mariam Hanif',    'mariam.hanif',    '1122', 'TEACHER', 'EE', '2020-02-01'),
(24, 'Prof. Zaheer Abbas',    'zaheer.abbas',    '1122', 'TEACHER', 'EE', '2020-02-01'),
(25, 'Prof. Fauzia Yousaf',   'fauzia.yousaf',   '1122', 'TEACHER', 'EE', '2020-02-01');

-- ── AI Teachers (IDs 26-35) ──────────────────────────────────
INSERT INTO users (id, name, username, password, role, department, created_at) VALUES
(26, 'Prof. Asad Raza',       'asad.raza',       '1122', 'TEACHER', 'AI', '2020-02-01'),
(27, 'Prof. Shazia Butt',     'shazia.butt',     '1122', 'TEACHER', 'AI', '2020-02-01'),
(28, 'Prof. Naveed Sultan',   'naveed.sultan',   '1122', 'TEACHER', 'AI', '2020-02-01'),
(29, 'Prof. Irum Sajid',      'irum.sajid',      '1122', 'TEACHER', 'AI', '2020-02-01'),
(30, 'Prof. Farhan Alam',     'farhan.alam',     '1122', 'TEACHER', 'AI', '2020-02-01'),
(31, 'Prof. Sumbul Haider',   'sumbul.haider',   '1122', 'TEACHER', 'AI', '2020-02-01'),
(32, 'Prof. Muzammil Khan',   'muzammil.khan',   '1122', 'TEACHER', 'AI', '2020-02-01'),
(33, 'Prof. Nosheen Arif',    'nosheen.arif',    '1122', 'TEACHER', 'AI', '2020-02-01'),
(34, 'Prof. Danish Murtaza',  'danish.murtaza',  '1122', 'TEACHER', 'AI', '2020-02-01'),
(35, 'Prof. Ghazala Parveen', 'ghazala.parveen', '1122', 'TEACHER', 'AI', '2020-02-01');

-- ── DS Teachers (IDs 36-45) ──────────────────────────────────
INSERT INTO users (id, name, username, password, role, department, created_at) VALUES
(36, 'Prof. Rehan Baig',      'rehan.baig',      '1122', 'TEACHER', 'DS', '2020-02-01'),
(37, 'Prof. Uzma Latif',      'uzma.latif',      '1122', 'TEACHER', 'DS', '2020-02-01'),
(38, 'Prof. Kashif Pervaiz',  'kashif.pervaiz',  '1122', 'TEACHER', 'DS', '2020-02-01'),
(39, 'Prof. Huma Chaudhry',   'huma.chaudhry',   '1122', 'TEACHER', 'DS', '2020-02-01'),
(40, 'Prof. Sajid Manzoor',   'sajid.manzoor',   '1122', 'TEACHER', 'DS', '2020-02-01'),
(41, 'Prof. Madiha Waseem',   'madiha.waseem',   '1122', 'TEACHER', 'DS', '2020-02-01'),
(42, 'Prof. Adil Rehman',     'adil.rehman',     '1122', 'TEACHER', 'DS', '2020-02-01'),
(43, 'Prof. Sumaira Naz',     'sumaira.naz',     '1122', 'TEACHER', 'DS', '2020-02-01'),
(44, 'Prof. Faisal Umar',     'faisal.umar',     '1122', 'TEACHER', 'DS', '2020-02-01'),
(45, 'Prof. Tehzeeb Gul',     'tehzeeb.gul',     '1122', 'TEACHER', 'DS', '2020-02-01');

-- ── CY Teachers (IDs 46-55) ──────────────────────────────────
INSERT INTO users (id, name, username, password, role, department, created_at) VALUES
(46, 'Prof. Mansoor Ali',     'mansoor.ali',     '1122', 'TEACHER', 'CY', '2020-02-01'),
(47, 'Prof. Rukhsana Toor',   'rukhsana.toor',   '1122', 'TEACHER', 'CY', '2020-02-01'),
(48, 'Prof. Fawad Cheema',    'fawad.cheema',    '1122', 'TEACHER', 'CY', '2020-02-01'),
(49, 'Prof. Nargis Awan',     'nargis.awan',     '1122', 'TEACHER', 'CY', '2020-02-01'),
(50, 'Prof. Salman Butt',     'salman.butt',     '1122', 'TEACHER', 'CY', '2020-02-01'),
(51, 'Prof. Asma Javed',      'asma.javed',      '1122', 'TEACHER', 'CY', '2020-02-01'),
(52, 'Prof. Zubair Mirza',    'zubair.mirza',    '1122', 'TEACHER', 'CY', '2020-02-01'),
(53, 'Prof. Haseena Kousar',  'haseena.kousar',  '1122', 'TEACHER', 'CY', '2020-02-01'),
(54, 'Prof. Babar Munir',     'babar.munir',     '1122', 'TEACHER', 'CY', '2020-02-01'),
(55, 'Prof. Aisha Siddiqui',  'aisha.siddiqui',  '1122', 'TEACHER', 'CY', '2020-02-01');

-- ── CS Students (IDs 56-75) ──────────────────────────────────
INSERT INTO users (id, name, username, password, role, department, created_at) VALUES
(56, 'Ali Hassan',        'ali.hassan',       '1122', 'STUDENT', 'CS', '2022-09-01'),
(57, 'Fatima Shah',       'fatima.shah',      '1122', 'STUDENT', 'CS', '2022-09-01'),
(58, 'Omar Tariq',        'omar.tariq',       '1122', 'STUDENT', 'CS', '2022-09-01'),
(59, 'Zara Anwar',        'zara.anwar',       '1122', 'STUDENT', 'CS', '2022-09-01'),
(60, 'Hamza Yousuf',      'hamza.yousuf',     '1122', 'STUDENT', 'CS', '2022-09-01'),
(61, 'Maryam Aslam',      'maryam.aslam',     '1122', 'STUDENT', 'CS', '2022-09-01'),
(62, 'Talha Raza',        'talha.raza',       '1122', 'STUDENT', 'CS', '2022-09-01'),
(63, 'Hira Iqbal',        'hira.iqbal',       '1122', 'STUDENT', 'CS', '2022-09-01'),
(64, 'Saad Mehmood',      'saad.mehmood',     '1122', 'STUDENT', 'CS', '2022-09-01'),
(65, 'Nimra Zahid',       'nimra.zahid',      '1122', 'STUDENT', 'CS', '2022-09-01'),
(66, 'Faisal Nawaz',      'faisal.nawaz',     '1122', 'STUDENT', 'CS', '2022-09-01'),
(67, 'Sana Shafiq',       'sana.shafiq',      '1122', 'STUDENT', 'CS', '2022-09-01'),
(68, 'Bilal Siddique',    'bilal.siddique',   '1122', 'STUDENT', 'CS', '2022-09-01'),
(69, 'Nadia Kamran',      'nadia.kamran',     '1122', 'STUDENT', 'CS', '2022-09-01'),
(70, 'Usman Ghani',       'usman.ghani',      '1122', 'STUDENT', 'CS', '2022-09-01'),
(71, 'Amina Bajwa',       'amina.bajwa',      '1122', 'STUDENT', 'CS', '2023-09-01'),
(72, 'Rizwan Chaudhary',  'rizwan.chaudhary', '1122', 'STUDENT', 'CS', '2023-09-01'),
(73, 'Maira Khalil',      'maira.khalil',     '1122', 'STUDENT', 'CS', '2023-09-01'),
(74, 'Shehroz Asif',      'shehroz.asif',     '1122', 'STUDENT', 'CS', '2023-09-01'),
(75, 'Warda Niazi',       'warda.niazi',      '1122', 'STUDENT', 'CS', '2023-09-01');

-- ── EE Students (IDs 76-95) ──────────────────────────────────
INSERT INTO users (id, name, username, password, role, department, created_at) VALUES
(76, 'Asim Rao',          'asim.rao',         '1122', 'STUDENT', 'EE', '2022-09-01'),
(77, 'Bushra Malik',      'bushra.malik',     '1122', 'STUDENT', 'EE', '2022-09-01'),
(78, 'Farrukh Sultan',    'farrukh.sultan',   '1122', 'STUDENT', 'EE', '2022-09-01'),
(79, 'Gulnaz Pasha',      'gulnaz.pasha',     '1122', 'STUDENT', 'EE', '2022-09-01'),
(80, 'Imtiaz Ahmad',      'imtiaz.ahmad',     '1122', 'STUDENT', 'EE', '2022-09-01'),
(81, 'Javeria Saleem',    'javeria.saleem',   '1122', 'STUDENT', 'EE', '2022-09-01'),
(82, 'Khalid Waheed',     'khalid.waheed',    '1122', 'STUDENT', 'EE', '2022-09-01'),
(83, 'Laraib Noor',       'laraib.noor',      '1122', 'STUDENT', 'EE', '2022-09-01'),
(84, 'Mohsin Rauf',       'mohsin.rauf',      '1122', 'STUDENT', 'EE', '2022-09-01'),
(85, 'Nabeela Hashmi',    'nabeela.hashmi',   '1122', 'STUDENT', 'EE', '2022-09-01'),
(86, 'Osama Cheema',      'osama.cheema',     '1122', 'STUDENT', 'EE', '2023-09-01'),
(87, 'Palwasha Afridi',   'palwasha.afridi',  '1122', 'STUDENT', 'EE', '2023-09-01'),
(88, 'Qasim Raza',        'qasim.raza',       '1122', 'STUDENT', 'EE', '2023-09-01'),
(89, 'Rabia Waqas',       'rabia.waqas',      '1122', 'STUDENT', 'EE', '2023-09-01'),
(90, 'Samiullah Khan',    'samiullah.khan',   '1122', 'STUDENT', 'EE', '2023-09-01'),
(91, 'Tayyaba Aziz',      'tayyaba.aziz',     '1122', 'STUDENT', 'EE', '2023-09-01'),
(92, 'Umer Daud',         'umer.daud',        '1122', 'STUDENT', 'EE', '2023-09-01'),
(93, 'Veena Hafeez',      'veena.hafeez',     '1122', 'STUDENT', 'EE', '2023-09-01'),
(94, 'Waseem Akram',      'waseem.akram',     '1122', 'STUDENT', 'EE', '2023-09-01'),
(95, 'Yumna Sarfraz',     'yumna.sarfraz',    '1122', 'STUDENT', 'EE', '2023-09-01');

-- ── AI Students (IDs 96-115) ─────────────────────────────────
INSERT INTO users (id, name, username, password, role, department, created_at) VALUES
(96,  'Zohaib Naseer',    'zohaib.naseer',    '1122', 'STUDENT', 'AI', '2022-09-01'),
(97,  'Anam Ghaffar',     'anam.ghaffar',     '1122', 'STUDENT', 'AI', '2022-09-01'),
(98,  'Burhan Shoukat',   'burhan.shoukat',   '1122', 'STUDENT', 'AI', '2022-09-01'),
(99,  'Chanda Rashid',    'chanda.rashid',    '1122', 'STUDENT', 'AI', '2022-09-01'),
(100, 'Danyal Fareed',    'danyal.fareed',    '1122', 'STUDENT', 'AI', '2022-09-01'),
(101, 'Erum Parvez',      'erum.parvez',      '1122', 'STUDENT', 'AI', '2022-09-01'),
(102, 'Furqan Sohail',    'furqan.sohail',    '1122', 'STUDENT', 'AI', '2022-09-01'),
(103, 'Gul Rukh',         'gul.rukh',         '1122', 'STUDENT', 'AI', '2022-09-01'),
(104, 'Hammad Zubair',    'hammad.zubair',    '1122', 'STUDENT', 'AI', '2022-09-01'),
(105, 'Iqra Farrukh',     'iqra.farrukh',     '1122', 'STUDENT', 'AI', '2022-09-01'),
(106, 'Junaid Waheed',    'junaid.waheed',    '1122', 'STUDENT', 'AI', '2023-09-01'),
(107, 'Kinza Liaqat',     'kinza.liaqat',     '1122', 'STUDENT', 'AI', '2023-09-01'),
(108, 'Luqman Tariq',     'luqman.tariq',     '1122', 'STUDENT', 'AI', '2023-09-01'),
(109, 'Mehwish Afzal',    'mehwish.afzal',    '1122', 'STUDENT', 'AI', '2023-09-01'),
(110, 'Nabeel Masood',    'nabeel.masood',    '1122', 'STUDENT', 'AI', '2023-09-01'),
(111, 'Obaid Rehman',     'obaid.rehman',     '1122', 'STUDENT', 'AI', '2023-09-01'),
(112, 'Pareesa Nadeem',   'pareesa.nadeem',   '1122', 'STUDENT', 'AI', '2023-09-01'),
(113, 'Qudsia Arshad',    'qudsia.arshad',    '1122', 'STUDENT', 'AI', '2023-09-01'),
(114, 'Ramsha Bano',      'ramsha.bano',      '1122', 'STUDENT', 'AI', '2023-09-01'),
(115, 'Sarfraz Gill',     'sarfraz.gill',     '1122', 'STUDENT', 'AI', '2023-09-01');

-- ── DS Students (IDs 116-135) ────────────────────────────────
INSERT INTO users (id, name, username, password, role, department, created_at) VALUES
(116, 'Tayyab Hussain',   'tayyab.hussain',   '1122', 'STUDENT', 'DS', '2022-09-01'),
(117, 'Ulfat Bibi',       'ulfat.bibi',       '1122', 'STUDENT', 'DS', '2022-09-01'),
(118, 'Vasim Qadri',      'vasim.qadri',      '1122', 'STUDENT', 'DS', '2022-09-01'),
(119, 'Wajeeha Sami',     'wajeeha.sami',     '1122', 'STUDENT', 'DS', '2022-09-01'),
(120, 'Xahir Baig',       'xahir.baig',       '1122', 'STUDENT', 'DS', '2022-09-01'),
(121, 'Yasmeen Gul',      'yasmeen.gul',      '1122', 'STUDENT', 'DS', '2022-09-01'),
(122, 'Zeeshan Mehar',    'zeeshan.mehar',    '1122', 'STUDENT', 'DS', '2022-09-01'),
(123, 'Abida Sultana',    'abida.sultana',    '1122', 'STUDENT', 'DS', '2022-09-01'),
(124, 'Bakhtawar Nisar',  'bakhtawar.nisar',  '1122', 'STUDENT', 'DS', '2022-09-01'),
(125, 'Cyrus Irfan',      'cyrus.irfan',      '1122', 'STUDENT', 'DS', '2022-09-01'),
(126, 'Daniyal Yaqoob',   'daniyal.yaqoob',   '1122', 'STUDENT', 'DS', '2023-09-01'),
(127, 'Emaan Tahir',      'emaan.tahir',      '1122', 'STUDENT', 'DS', '2023-09-01'),
(128, 'Fiza Azam',        'fiza.azam',        '1122', 'STUDENT', 'DS', '2023-09-01'),
(129, 'Ghulam Murtaza',   'ghulam.murtaza',   '1122', 'STUDENT', 'DS', '2023-09-01'),
(130, 'Hifza Shabbir',    'hifza.shabbir',    '1122', 'STUDENT', 'DS', '2023-09-01'),
(131, 'Ibrar Khan',       'ibrar.khan',       '1122', 'STUDENT', 'DS', '2023-09-01'),
(132, 'Jaweria Zaman',    'jaweria.zaman',    '1122', 'STUDENT', 'DS', '2023-09-01'),
(133, 'Kamil Ashraf',     'kamil.ashraf',     '1122', 'STUDENT', 'DS', '2023-09-01'),
(134, 'Liba Ghauri',      'liba.ghauri',      '1122', 'STUDENT', 'DS', '2023-09-01'),
(135, 'Muneeb Yousuf',    'muneeb.yousuf',    '1122', 'STUDENT', 'DS', '2023-09-01');

-- ── CY Students (IDs 136-155) ────────────────────────────────
INSERT INTO users (id, name, username, password, role, department, created_at) VALUES
(136, 'Nadeem Bangash',   'nadeem.bangash',   '1122', 'STUDENT', 'CY', '2022-09-01'),
(137, 'Omaima Younas',    'omaima.younas',    '1122', 'STUDENT', 'CY', '2022-09-01'),
(138, 'Pervez Lodhi',     'pervez.lodhi',     '1122', 'STUDENT', 'CY', '2022-09-01'),
(139, 'Quratulain Zaidi', 'quratulain.zaidi', '1122', 'STUDENT', 'CY', '2022-09-01'),
(140, 'Raza Haider',      'raza.haider',      '1122', 'STUDENT', 'CY', '2022-09-01'),
(141, 'Suhaib Bukhari',   'suhaib.bukhari',   '1122', 'STUDENT', 'CY', '2022-09-01'),
(142, 'Tooba Manzoor',    'tooba.manzoor',    '1122', 'STUDENT', 'CY', '2022-09-01'),
(143, 'Ubaid Masood',     'ubaid.masood',     '1122', 'STUDENT', 'CY', '2022-09-01'),
(144, 'Varda Bashir',     'varda.bashir',     '1122', 'STUDENT', 'CY', '2022-09-01'),
(145, 'Wahab Naqvi',      'wahab.naqvi',      '1122', 'STUDENT', 'CY', '2022-09-01'),
(146, 'Xyla Farooqi',     'xyla.farooqi',     '1122', 'STUDENT', 'CY', '2023-09-01'),
(147, 'Yasir Zuberi',     'yasir.zuberi',     '1122', 'STUDENT', 'CY', '2023-09-01'),
(148, 'Zill Huma',        'zill.huma',        '1122', 'STUDENT', 'CY', '2023-09-01'),
(149, 'Ahmer Pirzada',    'ahmer.pirzada',    '1122', 'STUDENT', 'CY', '2023-09-01'),
(150, 'Bisma Iqbal',      'bisma.iqbal',      '1122', 'STUDENT', 'CY', '2023-09-01'),
(151, 'Calab Razzaq',     'calab.razzaq',     '1122', 'STUDENT', 'CY', '2023-09-01'),
(152, 'Dua Shaheen',      'dua.shaheen',      '1122', 'STUDENT', 'CY', '2023-09-01'),
(153, 'Ehsan Jilani',     'ehsan.jilani',     '1122', 'STUDENT', 'CY', '2023-09-01'),
(154, 'Fozia Riaz',       'fozia.riaz',       '1122', 'STUDENT', 'CY', '2023-09-01'),
(155, 'Gohar Kiani',      'gohar.kiani',      '1122','STUDENT', 'CY', '2023-09-01'),
(156,'System Admin','admin','1122','ADMIN',NULL,'2019-03-20 03:50:36');

SET IDENTITY_INSERT users OFF;
GO

-- ============================================================
-- 2. COURSES (25 total, 5 per department)
-- ============================================================

SET IDENTITY_INSERT courses ON;

INSERT INTO courses (id, course_code, course_name, department) VALUES
-- CS
(1,  'CS101', 'Introduction to Programming',      'CS'),
(2,  'CS201', 'Data Structures and Algorithms',   'CS'),
(3,  'CS301', 'Database Management Systems',      'CS'),
(4,  'CS401', 'Operating Systems',               'CS'),
(5,  'CS501', 'Software Engineering',             'CS'),
-- EE
(6,  'EE101', 'Circuit Analysis',                 'EE'),
(7,  'EE201', 'Digital Electronics',              'EE'),
(8,  'EE301', 'Signals and Systems',              'EE'),
(9,  'EE401', 'Control Systems',                  'EE'),
(10, 'EE501', 'Power Systems',                    'EE'),
-- AI
(11, 'AI101', 'Introduction to Artificial Intelligence', 'AI'),
(12, 'AI201', 'Machine Learning',                 'AI'),
(13, 'AI301', 'Deep Learning',                    'AI'),
(14, 'AI401', 'Natural Language Processing',      'AI'),
(15, 'AI501', 'Computer Vision',                  'AI'),
-- DS
(16, 'DS101', 'Statistics for Data Science',      'DS'),
(17, 'DS201', 'Data Wrangling and Visualization', 'DS'),
(18, 'DS301', 'Big Data Analytics',               'DS'),
(19, 'DS401', 'Predictive Modeling',              'DS'),
(20, 'DS501', 'Data Engineering',                 'DS'),
-- CY
(21, 'CY101', 'Fundamentals of Cybersecurity',    'CY'),
(22, 'CY201', 'Network Security',                 'CY'),
(23, 'CY301', 'Ethical Hacking',                  'CY'),
(24, 'CY401', 'Cryptography',                     'CY'),
(25, 'CY501', 'Digital Forensics',                'CY');

SET IDENTITY_INSERT courses OFF;
GO

-- ============================================================
-- 3. COURSE ASSIGNMENTS (2 sections per course = 50 total)
--    Section A = first teacher, Section B = second teacher
--    Performance tiers encoded via username:
--      HIGH  = IDs ending _A rows  (most teachers)
--      AVG   = IDs ending _B rows
--      AT RISK = a few deliberate _B teachers (imran.shahzad, tahir.nawaz, danish.murtaza, sajid.manzoor, fawad.cheema)
-- ============================================================

SET IDENTITY_INSERT course_assignments ON;

INSERT INTO course_assignments (id, course_id, teacher_username) VALUES
-- CS courses
(1,  'CS101', 'kamran.akhtar'),   -- High performer
(2,  'CS101', 'imran.shahzad'),   -- AT RISK
(3,  'CS201', 'nadia.rasheed'),   -- High
(4,  'CS201', 'bilal.hussain'),   -- Average
(5,  'CS301', 'ayesha.malik'),    -- High
(6,  'CS301', 'usman.farooq'),    -- Average
(7,  'CS401', 'zainab.khattak'),  -- High
(8,  'CS401', 'farah.noor'),      -- Average
(9,  'CS501', 'hassan.iqbal'),    -- High
(10, 'CS501', 'rabia.tanveer'),   -- Average
-- EE courses
(11, 'EE101', 'shahid.anwar'),    -- High
(12, 'EE101', 'tahir.nawaz'),     -- AT RISK
(13, 'EE201', 'lubna.zahoor'),    -- High
(14, 'EE201', 'omer.baig'),       -- Average
(15, 'EE301', 'sana.qureshi'),    -- High
(16, 'EE301', 'waqar.saleem'),    -- Average
(17, 'EE401', 'amna.riaz'),       -- High
(18, 'EE401', 'mariam.hanif'),    -- Average
(19, 'EE501', 'zaheer.abbas'),    -- High
(20, 'EE501', 'fauzia.yousaf'),   -- Average
-- AI courses
(21, 'AI101', 'asad.raza'),       -- High
(22, 'AI101', 'danish.murtaza'),  -- AT RISK
(23, 'AI201', 'shazia.butt'),     -- High
(24, 'AI201', 'naveed.sultan'),   -- Average
(25, 'AI301', 'irum.sajid'),      -- High
(26, 'AI301', 'farhan.alam'),     -- Average
(27, 'AI401', 'sumbul.haider'),   -- High
(28, 'AI401', 'muzammil.khan'),   -- Average
(29, 'AI501', 'nosheen.arif'),    -- High
(30, 'AI501', 'ghazala.parveen'), -- Average
-- DS courses
(31, 'DS101', 'rehan.baig'),      -- High
(32, 'DS101', 'sajid.manzoor'),   -- AT RISK
(33, 'DS201', 'uzma.latif'),      -- High
(34, 'DS201', 'kashif.pervaiz'),  -- Average
(35, 'DS301', 'huma.chaudhry'),   -- High
(36, 'DS301', 'madiha.waseem'),   -- Average
(37, 'DS401', 'adil.rehman'),     -- High
(38, 'DS401', 'sumaira.naz'),     -- Average
(39, 'DS501', 'faisal.umar'),     -- High
(40, 'DS501', 'tehzeeb.gul'),     -- Average
-- CY courses
(41, 'CY101', 'mansoor.ali'),     -- High
(42, 'CY101', 'fawad.cheema'),    -- AT RISK
(43, 'CY201', 'rukhsana.toor'),   -- High
(44, 'CY201', 'nargis.awan'),     -- Average
(45, 'CY301', 'salman.butt'),     -- High
(46, 'CY301', 'asma.javed'),      -- Average
(47, 'CY401', 'zubair.mirza'),    -- High
(48, 'CY401', 'haseena.kousar'),  -- Average
(49, 'CY501', 'babar.munir'),     -- High
(50, 'CY501', 'aisha.siddiqui');  -- Average

SET IDENTITY_INSERT course_assignments OFF;
GO

-- ============================================================
-- 4. STUDENT ENROLLMENTS
--    Each student enrolls in 3 courses (one section per course).
--    CS  students → assignment IDs 1-10
--    EE  students → assignment IDs 11-20
--    AI  students → assignment IDs 21-30
--    DS  students → assignment IDs 31-40
--    CY  students → assignment IDs 41-50
-- ============================================================

SET IDENTITY_INSERT student_enrollments ON;

-- ── CS Students (user IDs 56-75) enroll in CS assignments ────
-- Students 56-65 → Section A teachers (odd assignment IDs)
-- Students 66-75 → Section B teachers (even assignment IDs)
-- Each student gets 3 course enrollments

INSERT INTO student_enrollments (id, assignment_id, student_username) VALUES
(1,  1,  'ali.hassan'),    (2,  3,  'ali.hassan'),    (3,  5,  'ali.hassan'),
(4,  1,  'fatima.shah'),   (5,  7,  'fatima.shah'),   (6,  9,  'fatima.shah'),
(7,  3,  'omar.tariq'),    (8,  5,  'omar.tariq'),    (9,  7,  'omar.tariq'),
(10, 1,  'zara.anwar'),    (11, 3,  'zara.anwar'),    (12, 9,  'zara.anwar'),
(13, 5,  'hamza.yousuf'),  (14, 7,  'hamza.yousuf'),  (15, 9,  'hamza.yousuf'),
(16, 1,  'maryam.aslam'),  (17, 3,  'maryam.aslam'),  (18, 7,  'maryam.aslam'),
(19, 3,  'talha.raza'),    (20, 5,  'talha.raza'),    (21, 9,  'talha.raza'),
(22, 1,  'hira.iqbal'),    (23, 5,  'hira.iqbal'),    (24, 7,  'hira.iqbal'),
(25, 3,  'saad.mehmood'),  (26, 7,  'saad.mehmood'),  (27, 9,  'saad.mehmood'),
(28, 1,  'nimra.zahid'),   (29, 3,  'nimra.zahid'),   (30, 5,  'nimra.zahid'),
(31, 2,  'faisal.nawaz'),  (32, 4,  'faisal.nawaz'),  (33, 6,  'faisal.nawaz'),
(34, 2,  'sana.shafiq'),   (35, 8,  'sana.shafiq'),   (36, 10, 'sana.shafiq'),
(37, 4,  'bilal.siddique'),(38, 6,  'bilal.siddique'),(39, 8,  'bilal.siddique'),
(40, 2,  'nadia.kamran'),  (41, 4,  'nadia.kamran'),  (42, 10, 'nadia.kamran'),
(43, 6,  'usman.ghani'),   (44, 8,  'usman.ghani'),   (45, 10, 'usman.ghani'),
(46, 2,  'amina.bajwa'),   (47, 4,  'amina.bajwa'),   (48, 8,  'amina.bajwa'),
(49, 4,  'rizwan.chaudhary'),(50, 6, 'rizwan.chaudhary'),(51, 10,'rizwan.chaudhary'),
(52, 2,  'maira.khalil'),  (53, 6,  'maira.khalil'),  (54, 8,  'maira.khalil'),
(55, 4,  'shehroz.asif'),  (56, 8,  'shehroz.asif'),  (57, 10, 'shehroz.asif'),
(58, 2,  'warda.niazi'),   (59, 4,  'warda.niazi'),   (60, 6,  'warda.niazi'),

-- ── EE Students (IDs 76-95) → assignments 11-20 ──────────────
(61, 11, 'asim.rao'),      (62, 13, 'asim.rao'),      (63, 15, 'asim.rao'),
(64, 11, 'bushra.malik'),  (65, 17, 'bushra.malik'),  (66, 19, 'bushra.malik'),
(67, 13, 'farrukh.sultan'),(68, 15, 'farrukh.sultan'),(69, 17, 'farrukh.sultan'),
(70, 11, 'gulnaz.pasha'),  (71, 13, 'gulnaz.pasha'),  (72, 19, 'gulnaz.pasha'),
(73, 15, 'imtiaz.ahmad'),  (74, 17, 'imtiaz.ahmad'),  (75, 19, 'imtiaz.ahmad'),
(76, 11, 'javeria.saleem'),(77, 13, 'javeria.saleem'),(78, 17, 'javeria.saleem'),
(79, 13, 'khalid.waheed'), (80, 15, 'khalid.waheed'), (81, 19, 'khalid.waheed'),
(82, 11, 'laraib.noor'),   (83, 15, 'laraib.noor'),   (84, 17, 'laraib.noor'),
(85, 13, 'mohsin.rauf'),   (86, 17, 'mohsin.rauf'),   (87, 19, 'mohsin.rauf'),
(88, 11, 'nabeela.hashmi'),(89, 13, 'nabeela.hashmi'),(90, 15, 'nabeela.hashmi'),
(91, 12, 'osama.cheema'),  (92, 14, 'osama.cheema'),  (93, 16, 'osama.cheema'),
(94, 12, 'palwasha.afridi'),(95, 18, 'palwasha.afridi'),(96, 20,'palwasha.afridi'),
(97, 14, 'qasim.raza'),    (98, 16, 'qasim.raza'),    (99, 18, 'qasim.raza'),
(100,12, 'rabia.waqas'),   (101,14, 'rabia.waqas'),   (102,20, 'rabia.waqas'),
(103,16, 'samiullah.khan'),(104,18, 'samiullah.khan'),(105,20, 'samiullah.khan'),
(106,12, 'tayyaba.aziz'),  (107,14, 'tayyaba.aziz'),  (108,18, 'tayyaba.aziz'),
(109,14, 'umer.daud'),     (110,16, 'umer.daud'),     (111,20, 'umer.daud'),
(112,12, 'veena.hafeez'),  (113,16, 'veena.hafeez'),  (114,18, 'veena.hafeez'),
(115,14, 'waseem.akram'),  (116,18, 'waseem.akram'),  (117,20, 'waseem.akram'),
(118,12, 'yumna.sarfraz'), (119,14, 'yumna.sarfraz'), (120,16, 'yumna.sarfraz'),

-- ── AI Students (IDs 96-115) → assignments 21-30 ─────────────
(121,21, 'zohaib.naseer'), (122,23, 'zohaib.naseer'), (123,25, 'zohaib.naseer'),
(124,21, 'anam.ghaffar'),  (125,27, 'anam.ghaffar'),  (126,29, 'anam.ghaffar'),
(127,23, 'burhan.shoukat'),(128,25, 'burhan.shoukat'),(129,27, 'burhan.shoukat'),
(130,21, 'chanda.rashid'), (131,23, 'chanda.rashid'), (132,29, 'chanda.rashid'),
(133,25, 'danyal.fareed'), (134,27, 'danyal.fareed'), (135,29, 'danyal.fareed'),
(136,21, 'erum.parvez'),   (137,23, 'erum.parvez'),   (138,27, 'erum.parvez'),
(139,23, 'furqan.sohail'), (140,25, 'furqan.sohail'), (141,29, 'furqan.sohail'),
(142,21, 'gul.rukh'),      (143,25, 'gul.rukh'),      (144,27, 'gul.rukh'),
(145,23, 'hammad.zubair'), (146,27, 'hammad.zubair'), (147,29, 'hammad.zubair'),
(148,21, 'iqra.farrukh'),  (149,23, 'iqra.farrukh'),  (150,25, 'iqra.farrukh'),
(151,22, 'junaid.waheed'), (152,24, 'junaid.waheed'),  (153,26, 'junaid.waheed'),
(154,22, 'kinza.liaqat'),  (155,28, 'kinza.liaqat'),   (156,30, 'kinza.liaqat'),
(157,24, 'luqman.tariq'),  (158,26, 'luqman.tariq'),   (159,28, 'luqman.tariq'),
(160,22, 'mehwish.afzal'), (161,24, 'mehwish.afzal'),  (162,30, 'mehwish.afzal'),
(163,26, 'nabeel.masood'), (164,28, 'nabeel.masood'),  (165,30, 'nabeel.masood'),
(166,22, 'obaid.rehman'),  (167,24, 'obaid.rehman'),   (168,28, 'obaid.rehman'),
(169,24, 'pareesa.nadeem'),(170,26, 'pareesa.nadeem'), (171,30, 'pareesa.nadeem'),
(172,22, 'qudsia.arshad'), (173,26, 'qudsia.arshad'),  (174,28, 'qudsia.arshad'),
(175,24, 'ramsha.bano'),   (176,28, 'ramsha.bano'),    (177,30, 'ramsha.bano'),
(178,22, 'sarfraz.gill'),  (179,24, 'sarfraz.gill'),   (180,26, 'sarfraz.gill'),

-- ── DS Students (IDs 116-135) → assignments 31-40 ────────────
(181,31, 'tayyab.hussain'),(182,33, 'tayyab.hussain'),(183,35, 'tayyab.hussain'),
(184,31, 'ulfat.bibi'),    (185,37, 'ulfat.bibi'),    (186,39, 'ulfat.bibi'),
(187,33, 'vasim.qadri'),   (188,35, 'vasim.qadri'),   (189,37, 'vasim.qadri'),
(190,31, 'wajeeha.sami'),  (191,33, 'wajeeha.sami'),  (192,39, 'wajeeha.sami'),
(193,35, 'xahir.baig'),    (194,37, 'xahir.baig'),    (195,39, 'xahir.baig'),
(196,31, 'yasmeen.gul'),   (197,33, 'yasmeen.gul'),   (198,37, 'yasmeen.gul'),
(199,33, 'zeeshan.mehar'), (200,35, 'zeeshan.mehar'), (201,39, 'zeeshan.mehar'),
(202,31, 'abida.sultana'), (203,35, 'abida.sultana'), (204,37, 'abida.sultana'),
(205,33, 'bakhtawar.nisar'),(206,37,'bakhtawar.nisar'),(207,39,'bakhtawar.nisar'),
(208,31, 'cyrus.irfan'),   (209,33, 'cyrus.irfan'),   (210,35, 'cyrus.irfan'),
(211,32, 'daniyal.yaqoob'),(212,34, 'daniyal.yaqoob'),(213,36, 'daniyal.yaqoob'),
(214,32, 'emaan.tahir'),   (215,38, 'emaan.tahir'),   (216,40, 'emaan.tahir'),
(217,34, 'fiza.azam'),     (218,36, 'fiza.azam'),     (219,38, 'fiza.azam'),
(220,32, 'ghulam.murtaza'),(221,34, 'ghulam.murtaza'),(222,40, 'ghulam.murtaza'),
(223,36, 'hifza.shabbir'), (224,38, 'hifza.shabbir'), (225,40, 'hifza.shabbir'),
(226,32, 'ibrar.khan'),    (227,34, 'ibrar.khan'),    (228,38, 'ibrar.khan'),
(229,34, 'jaweria.zaman'), (230,36, 'jaweria.zaman'), (231,40, 'jaweria.zaman'),
(232,32, 'kamil.ashraf'),  (233,36, 'kamil.ashraf'),  (234,38, 'kamil.ashraf'),
(235,34, 'liba.ghauri'),   (236,38, 'liba.ghauri'),   (237,40, 'liba.ghauri'),
(238,32, 'muneeb.yousuf'), (239,34, 'muneeb.yousuf'), (240,36, 'muneeb.yousuf'),

-- ── CY Students (IDs 136-155) → assignments 41-50 ────────────
(241,41, 'nadeem.bangash'), (242,43, 'nadeem.bangash'), (243,45, 'nadeem.bangash'),
(244,41, 'omaima.younas'),  (245,47, 'omaima.younas'),  (246,49, 'omaima.younas'),
(247,43, 'pervez.lodhi'),   (248,45, 'pervez.lodhi'),   (249,47, 'pervez.lodhi'),
(250,41, 'quratulain.zaidi'),(251,43,'quratulain.zaidi'),(252,49,'quratulain.zaidi'),
(253,45, 'raza.haider'),    (254,47, 'raza.haider'),    (255,49, 'raza.haider'),
(256,41, 'suhaib.bukhari'), (257,43, 'suhaib.bukhari'), (258,47, 'suhaib.bukhari'),
(259,43, 'tooba.manzoor'),  (260,45, 'tooba.manzoor'),  (261,49, 'tooba.manzoor'),
(262,41, 'ubaid.masood'),   (263,45, 'ubaid.masood'),   (264,47, 'ubaid.masood'),
(265,43, 'varda.bashir'),   (266,47, 'varda.bashir'),   (267,49, 'varda.bashir'),
(268,41, 'wahab.naqvi'),    (269,43, 'wahab.naqvi'),    (270,45, 'wahab.naqvi'),
(271,42, 'xyla.farooqi'),   (272,44, 'xyla.farooqi'),   (273,46, 'xyla.farooqi'),
(274,42, 'yasir.zuberi'),   (275,48, 'yasir.zuberi'),   (276,50, 'yasir.zuberi'),
(277,44, 'zill.huma'),      (278,46, 'zill.huma'),      (279,48, 'zill.huma'),
(280,42, 'ahmer.pirzada'),  (281,44, 'ahmer.pirzada'),  (282,50, 'ahmer.pirzada'),
(283,46, 'bisma.iqbal'),    (284,48, 'bisma.iqbal'),    (285,50, 'bisma.iqbal'),
(286,42, 'calab.razzaq'),   (287,44, 'calab.razzaq'),   (288,48, 'calab.razzaq'),
(289,44, 'dua.shaheen'),    (290,46, 'dua.shaheen'),    (291,50, 'dua.shaheen'),
(292,42, 'ehsan.jilani'),   (293,46, 'ehsan.jilani'),   (294,48, 'ehsan.jilani'),
(295,44, 'fozia.riaz'),     (296,48, 'fozia.riaz'),     (297,50, 'fozia.riaz'),
(298,42, 'gohar.kiani'),    (299,44, 'gohar.kiani'),    (300,46, 'gohar.kiani');

SET IDENTITY_INSERT student_enrollments OFF;
GO

-- ============================================================
-- 5. QUESTIONS (15 diverse questions, mixed types)
-- ============================================================

SET IDENTITY_INSERT questions ON;

INSERT INTO questions (id, question_text, question_type, perf_factor, type_metadata, created_at) VALUES
(1,  'The teacher explains concepts clearly and in an organized manner.',
     'LIKERT', 'Teaching Quality',
     '{"scale":5,"labels":["Strongly Disagree","Disagree","Neutral","Agree","Strongly Agree"]}',
     '2020-01-01'),
(2,  'Rate the teacher''s overall communication skills on a scale of 0 to 100.',
     'SLIDER', 'Communication',
     '{"min":0,"max":100,"step":5}',
     '2020-01-01'),
(3,  'The teacher is fair and unbiased when grading assignments and exams.',
     'LIKERT', 'Fairness',
     '{"scale":5,"labels":["Strongly Disagree","Disagree","Neutral","Agree","Strongly Agree"]}',
     '2020-01-01'),
(4,  'The teacher actively engages students during lectures.',
     'LIKERT', 'Engagement',
     '{"scale":5,"labels":["Strongly Disagree","Disagree","Neutral","Agree","Strongly Agree"]}',
     '2020-01-01'),
(5,  'The course content is relevant and up-to-date with current industry practices.',
     'LIKERT', 'Content',
     '{"scale":5,"labels":["Strongly Disagree","Disagree","Neutral","Agree","Strongly Agree"]}',
     '2020-01-01'),
(6,  'The teacher arrives on time and completes the full duration of the lecture.',
     'BINARY', 'Punctuality',
     '{"options":["Yes","No"]}',
     '2020-01-01'),
(7,  'How would you rate the difficulty level of this course?',
     'LIKERT', 'Content',
     '{"scale":5,"labels":["Very Easy","Easy","Moderate","Difficult","Very Difficult"]}',
     '2020-01-01'),
(8,  'The teacher provides constructive and timely feedback on submitted work.',
     'LIKERT', 'Teaching Quality',
     '{"scale":5,"labels":["Strongly Disagree","Disagree","Neutral","Agree","Strongly Agree"]}',
     '2020-01-01'),
(9,  'Rate the teacher''s subject knowledge and expertise (0-100).',
     'SLIDER', 'Teaching Quality',
     '{"min":0,"max":100,"step":5}',
     '2020-01-01'),
(10, 'The teacher uses a variety of teaching methods (slides, demos, activities) effectively.',
     'LIKERT', 'Engagement',
     '{"scale":5,"labels":["Strongly Disagree","Disagree","Neutral","Agree","Strongly Agree"]}',
     '2020-01-01'),
(11, 'The teacher treats all students with respect and without discrimination.',
     'LIKERT', 'Fairness',
     '{"scale":5,"labels":["Strongly Disagree","Disagree","Neutral","Agree","Strongly Agree"]}',
     '2020-01-01'),
(12, 'Rate the teacher''s ability to respond to student questions clearly (0-100).',
     'SLIDER', 'Communication',
     '{"min":0,"max":100,"step":5}',
     '2020-01-01'),
(13, 'Does the teacher follow the course outline and cover all announced topics?',
     'BINARY', 'Content',
     '{"options":["Yes","No"]}',
     '2020-01-01'),
(14, 'The workload and assessments in this course are reasonable.',
     'LIKERT', 'Content',
     '{"scale":5,"labels":["Strongly Disagree","Disagree","Neutral","Agree","Strongly Agree"]}',
     '2020-01-01'),
(15, 'Please share any additional comments about this course or the instructor.',
     'TEXT', 'General',
     NULL,
     '2020-01-01');

SET IDENTITY_INSERT questions OFF;
GO

-- ============================================================
-- 6. QUESTIONNAIRES
-- ============================================================

SET IDENTITY_INSERT questionnaires ON;

INSERT INTO questionnaires (id, name, description, created_at) VALUES
(1, 'Standard Teaching Evaluation',
   'Core questionnaire measuring teaching quality, communication, fairness, engagement, content relevance, and punctuality.',
   '2020-06-01'),
(2, 'Comprehensive Instructor Assessment',
   'Extended assessment including workload evaluation, subject expertise, and open-ended feedback.',
   '2021-01-01'),
(3, 'Quick Pulse Survey',
   'A short mid-semester check capturing clarity, engagement, and open comments.',
   '2022-01-01'),
(4, 'Quick Pulse Survey 2',
   'A short mid-semester check capturing clarity, engagement, teching quality and fairness.',
   '2020-06-01');

SET IDENTITY_INSERT questionnaires OFF;
GO

-- ============================================================
-- 7. QUESTIONNAIRE_QUESTIONS
-- ============================================================

SET IDENTITY_INSERT questionnaire_questions ON;

-- Questionnaire 1 (Standard): Q1-Q6, Q9, Q11
INSERT INTO questionnaire_questions (id, questionnaire_id, question_id, display_order) VALUES
(1,  1, 1,  1),
(2,  1, 2,  2),
(3,  1, 3,  3),
(4,  1, 4,  4),
(5,  1, 5,  5),
(6,  1, 6,  6),
(7,  1, 9,  7),
(8,  1, 11, 8),
(9,  1, 15, 9),

-- Questionnaire 2 (Comprehensive): All 15 questions
(10, 2, 1,  1),
(11, 2, 2,  2),
(12, 2, 3,  3),
(13, 2, 4,  4),
(14, 2, 5,  5),
(15, 2, 6,  6),
(16, 2, 7,  7),
(17, 2, 8,  8),
(18, 2, 9,  9),
(19, 2, 10, 10),
(20, 2, 11, 11),
(21, 2, 12, 12),
(22, 2, 13, 13),
(23, 2, 14, 14),
(24, 2, 15, 15),

-- Questionnaire 3 (Quick Pulse): Q1, Q4, Q9, Q15
(25, 3, 1,  1),
(26, 3, 4,  2),
(27, 3, 9,  3),
(28, 3, 15, 4),

-- Questionnaire 4 (Quick Pulse 2): Q1, Q2, Q3, Q4, Q5, Q6
(29, 4, 1,  1),
(30, 4, 2,  2),
(31, 4, 3,  3),
(32, 4, 4,  4),
(33, 4, 5,  5),
(34, 4, 6,  6);

SET IDENTITY_INSERT questionnaire_questions OFF;
GO

-- ============================================================
-- 8. FORM SCHEDULES  (8 semesters across 5 departments)
--    Semesters: Fall2021, Spr2022, Fall2022, Spr2023,
--               Fall2023, Spr2024, Fall2024, Spr2025
--    Questionnaire 1 used for odd semesters, 2 for even semesters
-- ============================================================

SET IDENTITY_INSERT form_schedules ON;

-- Helper: each dept gets 8 semester schedules = 40 rows total
-- IDs: dept_offset*8 + semester_index (1-based)
-- CS=1-8, EE=9-16, AI=17-24, DS=25-32, CY=33-40

INSERT INTO form_schedules
  (id, questionnaire_id, department, course_code, semester, start_date, end_date, status, created_by, created_at)
VALUES
-- ── CS ──────────────────────────────────────────────────────
(1,  4,'CS','CS101','Fall 2021',  '2021-12-01','2021-12-15','CLOSED','furqan.nasir','2021-11-28'),
(2,  4,'CS','CS201','Spring 2022','2022-05-10','2022-05-24','CLOSED','furqan.nasir','2022-05-08'),
(3,  4,'CS','CS301','Fall 2022',  '2022-12-01','2022-12-15','CLOSED','furqan.nasir','2022-11-28'),
(4,  4,'CS','CS401','Spring 2023','2023-05-10','2023-05-24','CLOSED','furqan.nasir','2023-05-08'),
(5,  4,'CS','CS501','Fall 2023',  '2023-12-01','2023-12-15','CLOSED','furqan.nasir','2023-11-28'),
(6,  4,'CS','CS101','Spring 2024','2024-05-10','2024-05-24','CLOSED','furqan.nasir','2024-05-08'),
(7,  1,'CS','CS201','Fall 2024',  '2024-12-01','2024-12-15','CLOSED','furqan.nasir','2024-11-28'),
(8,  4,'CS','CS301','Spring 2025','2025-05-10','2025-05-24','ACTIVE','furqan.nasir','2026-05-08'),

-- ── EE ──────────────────────────────────────────────────────
(9,  4,'EE','EE101','Fall 2021',  '2021-12-01','2021-12-15','CLOSED','arshad.islam','2021-11-28'),
(10, 4,'EE','EE201','Spring 2022','2022-05-10','2022-05-24','CLOSED','arshad.islam','2022-05-08'),
(11, 4,'EE','EE301','Fall 2022',  '2022-12-01','2022-12-15','CLOSED','arshad.islam','2022-11-28'),
(12, 4,'EE','EE401','Spring 2023','2023-05-10','2023-05-24','CLOSED','arshad.islam','2023-05-08'),
(13, 4,'EE','EE501','Fall 2023',  '2023-12-01','2023-12-15','CLOSED','arshad.islam','2023-11-28'),
(14, 4,'EE','EE101','Spring 2024','2024-05-10','2024-05-24','CLOSED','arshad.islam','2024-05-08'),
(15, 1,'EE','EE201','Fall 2024',  '2024-12-01','2024-12-15','CLOSED','arshad.islam','2024-11-28'),
(16, 4,'EE','EE301','Spring 2025','2025-05-10','2025-05-24','ACTIVE','arshad.islam','2026-05-08'),

-- ── AI ──────────────────────────────────────────────────────
(17, 4,'AI','AI101','Fall 2021',  '2021-12-01','2021-12-15','CLOSED','sadia.mahmood','2021-11-28'),
(18, 4,'AI','AI201','Spring 2022','2022-05-10','2022-05-24','CLOSED','sadia.mahmood','2022-05-08'),
(19, 4,'AI','AI301','Fall 2022',  '2022-12-01','2022-12-15','CLOSED','sadia.mahmood','2022-11-28'),
(20, 4,'AI','AI401','Spring 2023','2023-05-10','2023-05-24','CLOSED','sadia.mahmood','2023-05-08'),
(21, 4,'AI','AI501','Fall 2023',  '2023-12-01','2023-12-15','CLOSED','sadia.mahmood','2023-11-28'),
(22, 4,'AI','AI101','Spring 2024','2024-05-10','2024-05-24','CLOSED','sadia.mahmood','2024-05-08'),
(23, 1,'AI','AI201','Fall 2024',  '2024-12-01','2024-12-15','CLOSED','sadia.mahmood','2024-11-28'),
(24, 4,'AI','AI301','Spring 2025','2025-05-10','2025-05-24','ACTIVE','sadia.mahmood','2025-05-08'),

-- ── DS ──────────────────────────────────────────────────────
(25, 4,'DS','DS101','Fall 2021',  '2021-12-01','2021-12-15','CLOSED','tariq.mehmood','2021-11-28'),
(26, 4,'DS','DS201','Spring 2022','2022-05-10','2022-05-24','CLOSED','tariq.mehmood','2022-05-08'),
(27, 4,'DS','DS301','Fall 2022',  '2022-12-01','2022-12-15','CLOSED','tariq.mehmood','2022-11-28'),
(28, 4,'DS','DS401','Spring 2023','2023-05-10','2023-05-24','CLOSED','tariq.mehmood','2023-05-08'),
(29, 4,'DS','DS501','Fall 2023',  '2023-12-01','2023-12-15','CLOSED','tariq.mehmood','2023-11-28'),
(30, 4,'DS','DS101','Spring 2024','2024-05-10','2024-05-24','CLOSED','tariq.mehmood','2024-05-08'),
(31, 1,'DS','DS201','Fall 2024',  '2024-12-01','2024-12-15','CLOSED','tariq.mehmood','2024-11-28'),
(32, 4,'DS','DS301','Spring 2025','2025-05-10','2025-05-24','ACTIVE','tariq.mehmood','2025-05-08'),

-- ── CY ──────────────────────────────────────────────────────
(33, 4,'CY','CY101','Fall 2021',  '2021-12-01','2021-12-15','CLOSED','hina.zafar','2021-11-28'),
(34, 4,'CY','CY201','Spring 2022','2022-05-10','2022-05-24','CLOSED','hina.zafar','2022-05-08'),
(35, 4,'CY','CY301','Fall 2022',  '2022-12-01','2022-12-15','CLOSED','hina.zafar','2022-11-28'),
(36, 4,'CY','CY401','Spring 2023','2023-05-10','2023-05-24','CLOSED','hina.zafar','2023-05-08'),
(37, 4,'CY','CY501','Fall 2023',  '2023-12-01','2023-12-15','CLOSED','hina.zafar','2023-11-28'),
(38, 4,'CY','CY101','Spring 2024','2024-05-10','2024-05-24','CLOSED','hina.zafar','2024-05-08'),
(39, 1,'CY','CY201','Fall 2024',  '2024-12-01','2024-12-15','CLOSED','hina.zafar','2024-11-28'),
(40, 4,'CY','CY301','Spring 2025','2025-05-10','2025-05-24','ACTIVE','hina.zafar','2025-05-08');

SET IDENTITY_INSERT form_schedules OFF;
GO

SET IDENTITY_INSERT form_responses ON;

-- ── CS Students → schedule 7 (CS201, Fall 2024, Q1) ──────────
INSERT INTO form_responses
  (id, schedule_id, student_username, department, course_code,
   teacher_username, questionnaire_id, questionnaire_name, submitted_at)
VALUES
(1,  7,'ali.hassan',       'CS','CS201','nadia.rasheed',  1,'Standard Teaching Evaluation','2024-12-05'),
(2,  7,'fatima.shah',      'CS','CS201','nadia.rasheed',  1,'Standard Teaching Evaluation','2024-12-06'),
(3,  7,'omar.tariq',       'CS','CS201','nadia.rasheed',  1,'Standard Teaching Evaluation','2024-12-05'),
(4,  7,'zara.anwar',       'CS','CS201','nadia.rasheed',  1,'Standard Teaching Evaluation','2024-12-06'),
(5,  7,'hamza.yousuf',     'CS','CS201','nadia.rasheed',  1,'Standard Teaching Evaluation','2024-12-07'),
(6,  7,'maryam.aslam',     'CS','CS201','nadia.rasheed',  1,'Standard Teaching Evaluation','2024-12-07'),
(7,  7,'talha.raza',       'CS','CS201','nadia.rasheed',  1,'Standard Teaching Evaluation','2024-12-08'),
(8,  7,'hira.iqbal',       'CS','CS201','nadia.rasheed',  1,'Standard Teaching Evaluation','2024-12-08'),
(9,  7,'saad.mehmood',     'CS','CS201','nadia.rasheed',  1,'Standard Teaching Evaluation','2024-12-09'),
(10, 7,'nimra.zahid',      'CS','CS201','nadia.rasheed',  1,'Standard Teaching Evaluation','2024-12-09'),
(11, 7,'faisal.nawaz',     'CS','CS201','imran.shahzad',  1,'Standard Teaching Evaluation','2024-12-05'),
(12, 7,'sana.shafiq',      'CS','CS201','imran.shahzad',  1,'Standard Teaching Evaluation','2024-12-06'),
(13, 7,'bilal.siddique',   'CS','CS201','imran.shahzad',  1,'Standard Teaching Evaluation','2024-12-06'),
(14, 7,'nadia.kamran',     'CS','CS201','imran.shahzad',  1,'Standard Teaching Evaluation','2024-12-07'),
(15, 7,'usman.ghani',      'CS','CS201','imran.shahzad',  1,'Standard Teaching Evaluation','2024-12-07'),
(16, 7,'amina.bajwa',      'CS','CS201','imran.shahzad',  1,'Standard Teaching Evaluation','2024-12-08'),
(17, 7,'rizwan.chaudhary', 'CS','CS201','imran.shahzad',  1,'Standard Teaching Evaluation','2024-12-08'),
(18, 7,'maira.khalil',     'CS','CS201','imran.shahzad',  1,'Standard Teaching Evaluation','2024-12-09'),
(19, 7,'shehroz.asif',     'CS','CS201','imran.shahzad',  1,'Standard Teaching Evaluation','2024-12-09'),
(20, 7,'warda.niazi',      'CS','CS201','imran.shahzad',  1,'Standard Teaching Evaluation','2024-12-10'),

-- ── EE Students → schedule 15 (EE201, Fall 2024, Q1) ─────────
(21, 15,'asim.rao',        'EE','EE201','lubna.zahoor',  1,'Standard Teaching Evaluation','2024-12-05'),
(22, 15,'bushra.malik',    'EE','EE201','lubna.zahoor',  1,'Standard Teaching Evaluation','2024-12-06'),
(23, 15,'farrukh.sultan',  'EE','EE201','lubna.zahoor',  1,'Standard Teaching Evaluation','2024-12-05'),
(24, 15,'gulnaz.pasha',    'EE','EE201','lubna.zahoor',  1,'Standard Teaching Evaluation','2024-12-06'),
(25, 15,'imtiaz.ahmad',    'EE','EE201','lubna.zahoor',  1,'Standard Teaching Evaluation','2024-12-07'),
(26, 15,'javeria.saleem',  'EE','EE201','lubna.zahoor',  1,'Standard Teaching Evaluation','2024-12-07'),
(27, 15,'khalid.waheed',   'EE','EE201','lubna.zahoor',  1,'Standard Teaching Evaluation','2024-12-08'),
(28, 15,'laraib.noor',     'EE','EE201','lubna.zahoor',  1,'Standard Teaching Evaluation','2024-12-08'),
(29, 15,'mohsin.rauf',     'EE','EE201','lubna.zahoor',  1,'Standard Teaching Evaluation','2024-12-09'),
(30, 15,'nabeela.hashmi',  'EE','EE201','lubna.zahoor',  1,'Standard Teaching Evaluation','2024-12-09'),
(31, 15,'osama.cheema',    'EE','EE201','tahir.nawaz',   1,'Standard Teaching Evaluation','2024-12-05'),
(32, 15,'palwasha.afridi', 'EE','EE201','tahir.nawaz',   1,'Standard Teaching Evaluation','2024-12-06'),
(33, 15,'qasim.raza',      'EE','EE201','tahir.nawaz',   1,'Standard Teaching Evaluation','2024-12-06'),
(34, 15,'rabia.waqas',     'EE','EE201','tahir.nawaz',   1,'Standard Teaching Evaluation','2024-12-07'),
(35, 15,'samiullah.khan',  'EE','EE201','tahir.nawaz',   1,'Standard Teaching Evaluation','2024-12-07'),
(36, 15,'tayyaba.aziz',    'EE','EE201','tahir.nawaz',   1,'Standard Teaching Evaluation','2024-12-08'),
(37, 15,'umer.daud',       'EE','EE201','tahir.nawaz',   1,'Standard Teaching Evaluation','2024-12-08'),
(38, 15,'veena.hafeez',    'EE','EE201','tahir.nawaz',   1,'Standard Teaching Evaluation','2024-12-09'),
(39, 15,'waseem.akram',    'EE','EE201','tahir.nawaz',   1,'Standard Teaching Evaluation','2024-12-09'),
(40, 15,'yumna.sarfraz',   'EE','EE201','tahir.nawaz',   1,'Standard Teaching Evaluation','2024-12-10'),

-- ── AI Students → schedule 23 (AI201, Fall 2024, Q1) ─────────
(41, 23,'zohaib.naseer',   'AI','AI201','shazia.butt',   1,'Standard Teaching Evaluation','2024-12-05'),
(42, 23,'anam.ghaffar',    'AI','AI201','shazia.butt',   1,'Standard Teaching Evaluation','2024-12-06'),
(43, 23,'burhan.shoukat',  'AI','AI201','shazia.butt',   1,'Standard Teaching Evaluation','2024-12-05'),
(44, 23,'chanda.rashid',   'AI','AI201','shazia.butt',   1,'Standard Teaching Evaluation','2024-12-06'),
(45, 23,'danyal.fareed',   'AI','AI201','shazia.butt',   1,'Standard Teaching Evaluation','2024-12-07'),
(46, 23,'erum.parvez',     'AI','AI201','shazia.butt',   1,'Standard Teaching Evaluation','2024-12-07'),
(47, 23,'furqan.sohail',   'AI','AI201','shazia.butt',   1,'Standard Teaching Evaluation','2024-12-08'),
(48, 23,'gul.rukh',        'AI','AI201','shazia.butt',   1,'Standard Teaching Evaluation','2024-12-08'),
(49, 23,'hammad.zubair',   'AI','AI201','shazia.butt',   1,'Standard Teaching Evaluation','2024-12-09'),
(50, 23,'iqra.farrukh',    'AI','AI201','shazia.butt',   1,'Standard Teaching Evaluation','2024-12-09'),
(51, 23,'junaid.waheed',   'AI','AI201','danish.murtaza',1,'Standard Teaching Evaluation','2024-12-05'),
(52, 23,'kinza.liaqat',    'AI','AI201','danish.murtaza',1,'Standard Teaching Evaluation','2024-12-06'),
(53, 23,'luqman.tariq',    'AI','AI201','danish.murtaza',1,'Standard Teaching Evaluation','2024-12-06'),
(54, 23,'mehwish.afzal',   'AI','AI201','danish.murtaza',1,'Standard Teaching Evaluation','2024-12-07'),
(55, 23,'nabeel.masood',   'AI','AI201','danish.murtaza',1,'Standard Teaching Evaluation','2024-12-07'),
(56, 23,'obaid.rehman',    'AI','AI201','danish.murtaza',1,'Standard Teaching Evaluation','2024-12-08'),
(57, 23,'pareesa.nadeem',  'AI','AI201','danish.murtaza',1,'Standard Teaching Evaluation','2024-12-08'),
(58, 23,'qudsia.arshad',   'AI','AI201','danish.murtaza',1,'Standard Teaching Evaluation','2024-12-09'),
(59, 23,'ramsha.bano',     'AI','AI201','danish.murtaza',1,'Standard Teaching Evaluation','2024-12-09'),
(60, 23,'sarfraz.gill',    'AI','AI201','danish.murtaza',1,'Standard Teaching Evaluation','2024-12-10'),

-- ── DS Students → schedule 31 (DS201, Fall 2024, Q1) ─────────
(61, 31,'tayyab.hussain',  'DS','DS201','uzma.latif',    1,'Standard Teaching Evaluation','2024-12-05'),
(62, 31,'ulfat.bibi',      'DS','DS201','uzma.latif',    1,'Standard Teaching Evaluation','2024-12-06'),
(63, 31,'vasim.qadri',     'DS','DS201','uzma.latif',    1,'Standard Teaching Evaluation','2024-12-05'),
(64, 31,'wajeeha.sami',    'DS','DS201','uzma.latif',    1,'Standard Teaching Evaluation','2024-12-06'),
(65, 31,'xahir.baig',      'DS','DS201','uzma.latif',    1,'Standard Teaching Evaluation','2024-12-07'),
(66, 31,'yasmeen.gul',     'DS','DS201','uzma.latif',    1,'Standard Teaching Evaluation','2024-12-07'),
(67, 31,'zeeshan.mehar',   'DS','DS201','uzma.latif',    1,'Standard Teaching Evaluation','2024-12-08'),
(68, 31,'abida.sultana',   'DS','DS201','uzma.latif',    1,'Standard Teaching Evaluation','2024-12-08'),
(69, 31,'bakhtawar.nisar', 'DS','DS201','uzma.latif',    1,'Standard Teaching Evaluation','2024-12-09'),
(70, 31,'cyrus.irfan',     'DS','DS201','uzma.latif',    1,'Standard Teaching Evaluation','2024-12-09'),
(71, 31,'daniyal.yaqoob',  'DS','DS201','sajid.manzoor', 1,'Standard Teaching Evaluation','2024-12-05'),
(72, 31,'emaan.tahir',     'DS','DS201','sajid.manzoor', 1,'Standard Teaching Evaluation','2024-12-06'),
(73, 31,'fiza.azam',       'DS','DS201','sajid.manzoor', 1,'Standard Teaching Evaluation','2024-12-06'),
(74, 31,'ghulam.murtaza',  'DS','DS201','sajid.manzoor', 1,'Standard Teaching Evaluation','2024-12-07'),
(75, 31,'hifza.shabbir',   'DS','DS201','sajid.manzoor', 1,'Standard Teaching Evaluation','2024-12-07'),
(76, 31,'ibrar.khan',      'DS','DS201','sajid.manzoor', 1,'Standard Teaching Evaluation','2024-12-08'),
(77, 31,'jaweria.zaman',   'DS','DS201','sajid.manzoor', 1,'Standard Teaching Evaluation','2024-12-08'),
(78, 31,'kamil.ashraf',    'DS','DS201','sajid.manzoor', 1,'Standard Teaching Evaluation','2024-12-09'),
(79, 31,'liba.ghauri',     'DS','DS201','sajid.manzoor', 1,'Standard Teaching Evaluation','2024-12-09'),
(80, 31,'muneeb.yousuf',   'DS','DS201','sajid.manzoor', 1,'Standard Teaching Evaluation','2024-12-10'),

-- ── CY Students → schedule 39 (CY201, Fall 2024, Q1) ─────────
(81,  39,'nadeem.bangash',  'CY','CY201','rukhsana.toor', 1,'Standard Teaching Evaluation','2024-12-05'),
(82,  39,'omaima.younas',   'CY','CY201','rukhsana.toor', 1,'Standard Teaching Evaluation','2024-12-06'),
(83,  39,'pervez.lodhi',    'CY','CY201','rukhsana.toor', 1,'Standard Teaching Evaluation','2024-12-05'),
(84,  39,'quratulain.zaidi','CY','CY201','rukhsana.toor', 1,'Standard Teaching Evaluation','2024-12-06'),
(85,  39,'raza.haider',     'CY','CY201','rukhsana.toor', 1,'Standard Teaching Evaluation','2024-12-07'),
(86,  39,'suhaib.bukhari',  'CY','CY201','rukhsana.toor', 1,'Standard Teaching Evaluation','2024-12-07'),
(87,  39,'tooba.manzoor',   'CY','CY201','rukhsana.toor', 1,'Standard Teaching Evaluation','2024-12-08'),
(88,  39,'ubaid.masood',    'CY','CY201','rukhsana.toor', 1,'Standard Teaching Evaluation','2024-12-08'),
(89,  39,'varda.bashir',    'CY','CY201','rukhsana.toor', 1,'Standard Teaching Evaluation','2024-12-09'),
(90,  39,'wahab.naqvi',     'CY','CY201','rukhsana.toor', 1,'Standard Teaching Evaluation','2024-12-09'),
(91,  39,'xyla.farooqi',    'CY','CY201','fawad.cheema',  1,'Standard Teaching Evaluation','2024-12-05'),
(92,  39,'yasir.zuberi',    'CY','CY201','fawad.cheema',  1,'Standard Teaching Evaluation','2024-12-06'),
(93,  39,'zill.huma',       'CY','CY201','fawad.cheema',  1,'Standard Teaching Evaluation','2024-12-06'),
(94,  39,'ahmer.pirzada',   'CY','CY201','fawad.cheema',  1,'Standard Teaching Evaluation','2024-12-07'),
(95,  39,'bisma.iqbal',     'CY','CY201','fawad.cheema',  1,'Standard Teaching Evaluation','2024-12-07'),
(96,  39,'calab.razzaq',    'CY','CY201','fawad.cheema',  1,'Standard Teaching Evaluation','2024-12-08'),
(97,  39,'dua.shaheen',     'CY','CY201','fawad.cheema',  1,'Standard Teaching Evaluation','2024-12-08'),
(98,  39,'ehsan.jilani',    'CY','CY201','fawad.cheema',  1,'Standard Teaching Evaluation','2024-12-09'),
(99,  39,'fozia.riaz',      'CY','CY201','fawad.cheema',  1,'Standard Teaching Evaluation','2024-12-09'),
(100, 39,'gohar.kiani',     'CY','CY201','fawad.cheema',  1,'Standard Teaching Evaluation','2024-12-10'),

-- ============================================================
-- SPRING 2024  FORM RESPONSES  (IDs 101-200)
-- ============================================================

(101, 6,'ali.hassan',       'CS','CS101','kamran.akhtar',  4,'Quick Pulse Survey 2','2024-05-14'),
(102, 6,'fatima.shah',      'CS','CS101','kamran.akhtar',  4,'Quick Pulse Survey 2','2024-05-14'),
(103, 6,'omar.tariq',       'CS','CS101','kamran.akhtar',  4,'Quick Pulse Survey 2','2024-05-15'),
(104, 6,'zara.anwar',       'CS','CS101','kamran.akhtar',  4,'Quick Pulse Survey 2','2024-05-15'),
(105, 6,'hamza.yousuf',     'CS','CS101','kamran.akhtar',  4,'Quick Pulse Survey 2','2024-05-16'),
(106, 6,'maryam.aslam',     'CS','CS101','kamran.akhtar',  4,'Quick Pulse Survey 2','2024-05-16'),
(107, 6,'talha.raza',       'CS','CS101','kamran.akhtar',  4,'Quick Pulse Survey 2','2024-05-17'),
(108, 6,'hira.iqbal',       'CS','CS101','kamran.akhtar',  4,'Quick Pulse Survey 2','2024-05-17'),
(109, 6,'saad.mehmood',     'CS','CS101','kamran.akhtar',  4,'Quick Pulse Survey 2','2024-05-18'),
(110, 6,'nimra.zahid',      'CS','CS101','kamran.akhtar',  4,'Quick Pulse Survey 2','2024-05-18'),
(111, 6,'faisal.nawaz',     'CS','CS101','imran.shahzad',  4,'Quick Pulse Survey 2','2024-05-14'),
(112, 6,'sana.shafiq',      'CS','CS101','imran.shahzad',  4,'Quick Pulse Survey 2','2024-05-14'),
(113, 6,'bilal.siddique',   'CS','CS101','imran.shahzad',  4,'Quick Pulse Survey 2','2024-05-15'),
(114, 6,'nadia.kamran',     'CS','CS101','imran.shahzad',  4,'Quick Pulse Survey 2','2024-05-15'),
(115, 6,'usman.ghani',      'CS','CS101','imran.shahzad',  4,'Quick Pulse Survey 2','2024-05-16'),
(116, 6,'amina.bajwa',      'CS','CS101','imran.shahzad',  4,'Quick Pulse Survey 2','2024-05-16'),
(117, 6,'rizwan.chaudhary', 'CS','CS101','imran.shahzad',  4,'Quick Pulse Survey 2','2024-05-17'),
(118, 6,'maira.khalil',     'CS','CS101','imran.shahzad',  4,'Quick Pulse Survey 2','2024-05-17'),
(119, 6,'shehroz.asif',     'CS','CS101','imran.shahzad',  4,'Quick Pulse Survey 2','2024-05-18'),
(120, 6,'warda.niazi',      'CS','CS101','imran.shahzad',  4,'Quick Pulse Survey 2','2024-05-18'),

-- ── EE Students → schedule 14 (EE101, Spring 2024, Q4) ───────
-- Section A → shahid.anwar (HIGH), Section B → tahir.nawaz (AT RISK)
(121, 14,'asim.rao',        'EE','EE101','shahid.anwar',   4,'Quick Pulse Survey 2','2024-05-14'),
(122, 14,'bushra.malik',    'EE','EE101','shahid.anwar',   4,'Quick Pulse Survey 2','2024-05-14'),
(123, 14,'farrukh.sultan',  'EE','EE101','shahid.anwar',   4,'Quick Pulse Survey 2','2024-05-15'),
(124, 14,'gulnaz.pasha',    'EE','EE101','shahid.anwar',   4,'Quick Pulse Survey 2','2024-05-15'),
(125, 14,'imtiaz.ahmad',    'EE','EE101','shahid.anwar',   4,'Quick Pulse Survey 2','2024-05-16'),
(126, 14,'javeria.saleem',  'EE','EE101','shahid.anwar',   4,'Quick Pulse Survey 2','2024-05-16'),
(127, 14,'khalid.waheed',   'EE','EE101','shahid.anwar',   4,'Quick Pulse Survey 2','2024-05-17'),
(128, 14,'laraib.noor',     'EE','EE101','shahid.anwar',   4,'Quick Pulse Survey 2','2024-05-17'),
(129, 14,'mohsin.rauf',     'EE','EE101','shahid.anwar',   4,'Quick Pulse Survey 2','2024-05-18'),
(130, 14,'nabeela.hashmi',  'EE','EE101','shahid.anwar',   4,'Quick Pulse Survey 2','2024-05-18'),
(131, 14,'osama.cheema',    'EE','EE101','tahir.nawaz',    4,'Quick Pulse Survey 2','2024-05-14'),
(132, 14,'palwasha.afridi', 'EE','EE101','tahir.nawaz',    4,'Quick Pulse Survey 2','2024-05-14'),
(133, 14,'qasim.raza',      'EE','EE101','tahir.nawaz',    4,'Quick Pulse Survey 2','2024-05-15'),
(134, 14,'rabia.waqas',     'EE','EE101','tahir.nawaz',    4,'Quick Pulse Survey 2','2024-05-15'),
(135, 14,'samiullah.khan',  'EE','EE101','tahir.nawaz',    4,'Quick Pulse Survey 2','2024-05-16'),
(136, 14,'tayyaba.aziz',    'EE','EE101','tahir.nawaz',    4,'Quick Pulse Survey 2','2024-05-16'),
(137, 14,'umer.daud',       'EE','EE101','tahir.nawaz',    4,'Quick Pulse Survey 2','2024-05-17'),
(138, 14,'veena.hafeez',    'EE','EE101','tahir.nawaz',    4,'Quick Pulse Survey 2','2024-05-17'),
(139, 14,'waseem.akram',    'EE','EE101','tahir.nawaz',    4,'Quick Pulse Survey 2','2024-05-18'),
(140, 14,'yumna.sarfraz',   'EE','EE101','tahir.nawaz',    4,'Quick Pulse Survey 2','2024-05-18'),

-- ── AI Students → schedule 22 (AI101, Spring 2024, Q4) ───────
-- Section A → asad.raza (HIGH), Section B → danish.murtaza (AT RISK)
(141, 22,'zohaib.naseer',   'AI','AI101','asad.raza',      4,'Quick Pulse Survey 2','2024-05-14'),
(142, 22,'anam.ghaffar',    'AI','AI101','asad.raza',      4,'Quick Pulse Survey 2','2024-05-14'),
(143, 22,'burhan.shoukat',  'AI','AI101','asad.raza',      4,'Quick Pulse Survey 2','2024-05-15'),
(144, 22,'chanda.rashid',   'AI','AI101','asad.raza',      4,'Quick Pulse Survey 2','2024-05-15'),
(145, 22,'danyal.fareed',   'AI','AI101','asad.raza',      4,'Quick Pulse Survey 2','2024-05-16'),
(146, 22,'erum.parvez',     'AI','AI101','asad.raza',      4,'Quick Pulse Survey 2','2024-05-16'),
(147, 22,'furqan.sohail',   'AI','AI101','asad.raza',      4,'Quick Pulse Survey 2','2024-05-17'),
(148, 22,'gul.rukh',        'AI','AI101','asad.raza',      4,'Quick Pulse Survey 2','2024-05-17'),
(149, 22,'hammad.zubair',   'AI','AI101','asad.raza',      4,'Quick Pulse Survey 2','2024-05-18'),
(150, 22,'iqra.farrukh',    'AI','AI101','asad.raza',      4,'Quick Pulse Survey 2','2024-05-18'),
(151, 22,'junaid.waheed',   'AI','AI101','danish.murtaza', 4,'Quick Pulse Survey 2','2024-05-14'),
(152, 22,'kinza.liaqat',    'AI','AI101','danish.murtaza', 4,'Quick Pulse Survey 2','2024-05-14'),
(153, 22,'luqman.tariq',    'AI','AI101','danish.murtaza', 4,'Quick Pulse Survey 2','2024-05-15'),
(154, 22,'mehwish.afzal',   'AI','AI101','danish.murtaza', 4,'Quick Pulse Survey 2','2024-05-15'),
(155, 22,'nabeel.masood',   'AI','AI101','danish.murtaza', 4,'Quick Pulse Survey 2','2024-05-16'),
(156, 22,'obaid.rehman',    'AI','AI101','danish.murtaza', 4,'Quick Pulse Survey 2','2024-05-16'),
(157, 22,'pareesa.nadeem',  'AI','AI101','danish.murtaza', 4,'Quick Pulse Survey 2','2024-05-17'),
(158, 22,'qudsia.arshad',   'AI','AI101','danish.murtaza', 4,'Quick Pulse Survey 2','2024-05-17'),
(159, 22,'ramsha.bano',     'AI','AI101','danish.murtaza', 4,'Quick Pulse Survey 2','2024-05-18'),
(160, 22,'sarfraz.gill',    'AI','AI101','danish.murtaza', 4,'Quick Pulse Survey 2','2024-05-18'),

-- ── DS Students → schedule 30 (DS101, Spring 2024, Q4) ───────
-- Section A → rehan.baig (HIGH), Section B → sajid.manzoor (AT RISK)
(161, 30,'tayyab.hussain',  'DS','DS101','rehan.baig',     4,'Quick Pulse Survey 2','2024-05-14'),
(162, 30,'ulfat.bibi',      'DS','DS101','rehan.baig',     4,'Quick Pulse Survey 2','2024-05-14'),
(163, 30,'vasim.qadri',     'DS','DS101','rehan.baig',     4,'Quick Pulse Survey 2','2024-05-15'),
(164, 30,'wajeeha.sami',    'DS','DS101','rehan.baig',     4,'Quick Pulse Survey 2','2024-05-15'),
(165, 30,'xahir.baig',      'DS','DS101','rehan.baig',     4,'Quick Pulse Survey 2','2024-05-16'),
(166, 30,'yasmeen.gul',     'DS','DS101','rehan.baig',     4,'Quick Pulse Survey 2','2024-05-16'),
(167, 30,'zeeshan.mehar',   'DS','DS101','rehan.baig',     4,'Quick Pulse Survey 2','2024-05-17'),
(168, 30,'abida.sultana',   'DS','DS101','rehan.baig',     4,'Quick Pulse Survey 2','2024-05-17'),
(169, 30,'bakhtawar.nisar', 'DS','DS101','rehan.baig',     4,'Quick Pulse Survey 2','2024-05-18'),
(170, 30,'cyrus.irfan',     'DS','DS101','rehan.baig',     4,'Quick Pulse Survey 2','2024-05-18'),
(171, 30,'daniyal.yaqoob',  'DS','DS101','sajid.manzoor',  4,'Quick Pulse Survey 2','2024-05-14'),
(172, 30,'emaan.tahir',     'DS','DS101','sajid.manzoor',  4,'Quick Pulse Survey 2','2024-05-14'),
(173, 30,'fiza.azam',       'DS','DS101','sajid.manzoor',  4,'Quick Pulse Survey 2','2024-05-15'),
(174, 30,'ghulam.murtaza',  'DS','DS101','sajid.manzoor',  4,'Quick Pulse Survey 2','2024-05-15'),
(175, 30,'hifza.shabbir',   'DS','DS101','sajid.manzoor',  4,'Quick Pulse Survey 2','2024-05-16'),
(176, 30,'ibrar.khan',      'DS','DS101','sajid.manzoor',  4,'Quick Pulse Survey 2','2024-05-16'),
(177, 30,'jaweria.zaman',   'DS','DS101','sajid.manzoor',  4,'Quick Pulse Survey 2','2024-05-17'),
(178, 30,'kamil.ashraf',    'DS','DS101','sajid.manzoor',  4,'Quick Pulse Survey 2','2024-05-17'),
(179, 30,'liba.ghauri',     'DS','DS101','sajid.manzoor',  4,'Quick Pulse Survey 2','2024-05-18'),
(180, 30,'muneeb.yousuf',   'DS','DS101','sajid.manzoor',  4,'Quick Pulse Survey 2','2024-05-18'),

-- ── CY Students → schedule 38 (CY101, Spring 2024, Q4) ───────
-- Section A → mansoor.ali (HIGH), Section B → fawad.cheema (AT RISK)
(181, 38,'nadeem.bangash',  'CY','CY101','mansoor.ali',    4,'Quick Pulse Survey 2','2024-05-14'),
(182, 38,'omaima.younas',   'CY','CY101','mansoor.ali',    4,'Quick Pulse Survey 2','2024-05-14'),
(183, 38,'pervez.lodhi',    'CY','CY101','mansoor.ali',    4,'Quick Pulse Survey 2','2024-05-15'),
(184, 38,'quratulain.zaidi','CY','CY101','mansoor.ali',    4,'Quick Pulse Survey 2','2024-05-15'),
(185, 38,'raza.haider',     'CY','CY101','mansoor.ali',    4,'Quick Pulse Survey 2','2024-05-16'),
(186, 38,'suhaib.bukhari',  'CY','CY101','mansoor.ali',    4,'Quick Pulse Survey 2','2024-05-16'),
(187, 38,'tooba.manzoor',   'CY','CY101','mansoor.ali',    4,'Quick Pulse Survey 2','2024-05-17'),
(188, 38,'ubaid.masood',    'CY','CY101','mansoor.ali',    4,'Quick Pulse Survey 2','2024-05-17'),
(189, 38,'varda.bashir',    'CY','CY101','mansoor.ali',    4,'Quick Pulse Survey 2','2024-05-18'),
(190, 38,'wahab.naqvi',     'CY','CY101','mansoor.ali',    4,'Quick Pulse Survey 2','2024-05-18'),
(191, 38,'xyla.farooqi',    'CY','CY101','fawad.cheema',   4,'Quick Pulse Survey 2','2024-05-14'),
(192, 38,'yasir.zuberi',    'CY','CY101','fawad.cheema',   4,'Quick Pulse Survey 2','2024-05-14'),
(193, 38,'zill.huma',       'CY','CY101','fawad.cheema',   4,'Quick Pulse Survey 2','2024-05-15'),
(194, 38,'ahmer.pirzada',   'CY','CY101','fawad.cheema',   4,'Quick Pulse Survey 2','2024-05-15'),
(195, 38,'bisma.iqbal',     'CY','CY101','fawad.cheema',   4,'Quick Pulse Survey 2','2024-05-16'),
(196, 38,'calab.razzaq',    'CY','CY101','fawad.cheema',   4,'Quick Pulse Survey 2','2024-05-16'),
(197, 38,'dua.shaheen',     'CY','CY101','fawad.cheema',   4,'Quick Pulse Survey 2','2024-05-17'),
(198, 38,'ehsan.jilani',    'CY','CY101','fawad.cheema',   4,'Quick Pulse Survey 2','2024-05-17'),
(199, 38,'fozia.riaz',      'CY','CY101','fawad.cheema',   4,'Quick Pulse Survey 2','2024-05-18'),
(200, 38,'gohar.kiani',     'CY','CY101','fawad.cheema',   4,'Quick Pulse Survey 2','2024-05-18'),

-- ============================================================
-- SPRING 2025  FORM RESPONSES  (IDs 201-300)
-- ============================================================

-- ── CS Students → schedule 8 (CS301, Spring 2025, Q4) ────────
-- Section A → ayesha.malik (HIGH), Section B → usman.farooq (AVG)
(201, 8,'ali.hassan',       'CS','CS301','ayesha.malik',   4,'Quick Pulse Survey 2','2025-05-14'),
(202, 8,'fatima.shah',      'CS','CS301','ayesha.malik',   4,'Quick Pulse Survey 2','2025-05-14'),
(203, 8,'omar.tariq',       'CS','CS301','ayesha.malik',   4,'Quick Pulse Survey 2','2025-05-15'),
(204, 8,'zara.anwar',       'CS','CS301','ayesha.malik',   4,'Quick Pulse Survey 2','2025-05-15'),
(205, 8,'hamza.yousuf',     'CS','CS301','ayesha.malik',   4,'Quick Pulse Survey 2','2025-05-16'),
(206, 8,'maryam.aslam',     'CS','CS301','ayesha.malik',   4,'Quick Pulse Survey 2','2025-05-16'),
(207, 8,'talha.raza',       'CS','CS301','ayesha.malik',   4,'Quick Pulse Survey 2','2025-05-17'),
(208, 8,'hira.iqbal',       'CS','CS301','ayesha.malik',   4,'Quick Pulse Survey 2','2025-05-17'),
(209, 8,'saad.mehmood',     'CS','CS301','ayesha.malik',   4,'Quick Pulse Survey 2','2025-05-18'),
(210, 8,'nimra.zahid',      'CS','CS301','ayesha.malik',   4,'Quick Pulse Survey 2','2025-05-18'),
(211, 8,'faisal.nawaz',     'CS','CS301','usman.farooq',   4,'Quick Pulse Survey 2','2025-05-14'),
(212, 8,'sana.shafiq',      'CS','CS301','usman.farooq',   4,'Quick Pulse Survey 2','2025-05-14'),
(213, 8,'bilal.siddique',   'CS','CS301','usman.farooq',   4,'Quick Pulse Survey 2','2025-05-15'),
(214, 8,'nadia.kamran',     'CS','CS301','usman.farooq',   4,'Quick Pulse Survey 2','2025-05-15'),
(215, 8,'usman.ghani',      'CS','CS301','usman.farooq',   4,'Quick Pulse Survey 2','2025-05-16'),
(216, 8,'amina.bajwa',      'CS','CS301','usman.farooq',   4,'Quick Pulse Survey 2','2025-05-16'),
(217, 8,'rizwan.chaudhary', 'CS','CS301','usman.farooq',   4,'Quick Pulse Survey 2','2025-05-17'),
(218, 8,'maira.khalil',     'CS','CS301','usman.farooq',   4,'Quick Pulse Survey 2','2025-05-17'),
(219, 8,'shehroz.asif',     'CS','CS301','usman.farooq',   4,'Quick Pulse Survey 2','2025-05-18'),
(220, 8,'warda.niazi',      'CS','CS301','usman.farooq',   4,'Quick Pulse Survey 2','2025-05-18'),

-- ── EE Students → schedule 16 (EE301, Spring 2025, Q4) ───────
-- Section A → sana.qureshi (HIGH), Section B → waqar.saleem (AVG)
(221, 16,'asim.rao',        'EE','EE301','sana.qureshi',   4,'Quick Pulse Survey 2','2025-05-14'),
(222, 16,'bushra.malik',    'EE','EE301','sana.qureshi',   4,'Quick Pulse Survey 2','2025-05-14'),
(223, 16,'farrukh.sultan',  'EE','EE301','sana.qureshi',   4,'Quick Pulse Survey 2','2025-05-15'),
(224, 16,'gulnaz.pasha',    'EE','EE301','sana.qureshi',   4,'Quick Pulse Survey 2','2025-05-15'),
(225, 16,'imtiaz.ahmad',    'EE','EE301','sana.qureshi',   4,'Quick Pulse Survey 2','2025-05-16'),
(226, 16,'javeria.saleem',  'EE','EE301','sana.qureshi',   4,'Quick Pulse Survey 2','2025-05-16'),
(227, 16,'khalid.waheed',   'EE','EE301','sana.qureshi',   4,'Quick Pulse Survey 2','2025-05-17'),
(228, 16,'laraib.noor',     'EE','EE301','sana.qureshi',   4,'Quick Pulse Survey 2','2025-05-17'),
(229, 16,'mohsin.rauf',     'EE','EE301','sana.qureshi',   4,'Quick Pulse Survey 2','2025-05-18'),
(230, 16,'nabeela.hashmi',  'EE','EE301','sana.qureshi',   4,'Quick Pulse Survey 2','2025-05-18'),
(231, 16,'osama.cheema',    'EE','EE301','waqar.saleem',   4,'Quick Pulse Survey 2','2025-05-14'),
(232, 16,'palwasha.afridi', 'EE','EE301','waqar.saleem',   4,'Quick Pulse Survey 2','2025-05-14'),
(233, 16,'qasim.raza',      'EE','EE301','waqar.saleem',   4,'Quick Pulse Survey 2','2025-05-15'),
(234, 16,'rabia.waqas',     'EE','EE301','waqar.saleem',   4,'Quick Pulse Survey 2','2025-05-15'),
(235, 16,'samiullah.khan',  'EE','EE301','waqar.saleem',   4,'Quick Pulse Survey 2','2025-05-16'),
(236, 16,'tayyaba.aziz',    'EE','EE301','waqar.saleem',   4,'Quick Pulse Survey 2','2025-05-16'),
(237, 16,'umer.daud',       'EE','EE301','waqar.saleem',   4,'Quick Pulse Survey 2','2025-05-17'),
(238, 16,'veena.hafeez',    'EE','EE301','waqar.saleem',   4,'Quick Pulse Survey 2','2025-05-17'),
(239, 16,'waseem.akram',    'EE','EE301','waqar.saleem',   4,'Quick Pulse Survey 2','2025-05-18'),
(240, 16,'yumna.sarfraz',   'EE','EE301','waqar.saleem',   4,'Quick Pulse Survey 2','2025-05-18'),

-- ── AI Students → schedule 24 (AI301, Spring 2025, Q4) ───────
-- Section A → irum.sajid (HIGH), Section B → farhan.alam (AVG)
(241, 24,'zohaib.naseer',   'AI','AI301','irum.sajid',     4,'Quick Pulse Survey 2','2025-05-14'),
(242, 24,'anam.ghaffar',    'AI','AI301','irum.sajid',     4,'Quick Pulse Survey 2','2025-05-14'),
(243, 24,'burhan.shoukat',  'AI','AI301','irum.sajid',     4,'Quick Pulse Survey 2','2025-05-15'),
(244, 24,'chanda.rashid',   'AI','AI301','irum.sajid',     4,'Quick Pulse Survey 2','2025-05-15'),
(245, 24,'danyal.fareed',   'AI','AI301','irum.sajid',     4,'Quick Pulse Survey 2','2025-05-16'),
(246, 24,'erum.parvez',     'AI','AI301','irum.sajid',     4,'Quick Pulse Survey 2','2025-05-16'),
(247, 24,'furqan.sohail',   'AI','AI301','irum.sajid',     4,'Quick Pulse Survey 2','2025-05-17'),
(248, 24,'gul.rukh',        'AI','AI301','irum.sajid',     4,'Quick Pulse Survey 2','2025-05-17'),
(249, 24,'hammad.zubair',   'AI','AI301','irum.sajid',     4,'Quick Pulse Survey 2','2025-05-18'),
(250, 24,'iqra.farrukh',    'AI','AI301','irum.sajid',     4,'Quick Pulse Survey 2','2025-05-18'),
(251, 24,'junaid.waheed',   'AI','AI301','farhan.alam',    4,'Quick Pulse Survey 2','2025-05-14'),
(252, 24,'kinza.liaqat',    'AI','AI301','farhan.alam',    4,'Quick Pulse Survey 2','2025-05-14'),
(253, 24,'luqman.tariq',    'AI','AI301','farhan.alam',    4,'Quick Pulse Survey 2','2025-05-15'),
(254, 24,'mehwish.afzal',   'AI','AI301','farhan.alam',    4,'Quick Pulse Survey 2','2025-05-15'),
(255, 24,'nabeel.masood',   'AI','AI301','farhan.alam',    4,'Quick Pulse Survey 2','2025-05-16'),
(256, 24,'obaid.rehman',    'AI','AI301','farhan.alam',    4,'Quick Pulse Survey 2','2025-05-16'),
(257, 24,'pareesa.nadeem',  'AI','AI301','farhan.alam',    4,'Quick Pulse Survey 2','2025-05-17'),
(258, 24,'qudsia.arshad',   'AI','AI301','farhan.alam',    4,'Quick Pulse Survey 2','2025-05-17'),
(259, 24,'ramsha.bano',     'AI','AI301','farhan.alam',    4,'Quick Pulse Survey 2','2025-05-18'),
(260, 24,'sarfraz.gill',    'AI','AI301','farhan.alam',    4,'Quick Pulse Survey 2','2025-05-18'),

-- ── DS Students → schedule 32 (DS301, Spring 2025, Q4) ───────
-- Section A → huma.chaudhry (HIGH), Section B → madiha.waseem (AVG)
(261, 32,'tayyab.hussain',  'DS','DS301','huma.chaudhry',  4,'Quick Pulse Survey 2','2025-05-14'),
(262, 32,'ulfat.bibi',      'DS','DS301','huma.chaudhry',  4,'Quick Pulse Survey 2','2025-05-14'),
(263, 32,'vasim.qadri',     'DS','DS301','huma.chaudhry',  4,'Quick Pulse Survey 2','2025-05-15'),
(264, 32,'wajeeha.sami',    'DS','DS301','huma.chaudhry',  4,'Quick Pulse Survey 2','2025-05-15'),
(265, 32,'xahir.baig',      'DS','DS301','huma.chaudhry',  4,'Quick Pulse Survey 2','2025-05-16'),
(266, 32,'yasmeen.gul',     'DS','DS301','huma.chaudhry',  4,'Quick Pulse Survey 2','2025-05-16'),
(267, 32,'zeeshan.mehar',   'DS','DS301','huma.chaudhry',  4,'Quick Pulse Survey 2','2025-05-17'),
(268, 32,'abida.sultana',   'DS','DS301','huma.chaudhry',  4,'Quick Pulse Survey 2','2025-05-17'),
(269, 32,'bakhtawar.nisar', 'DS','DS301','huma.chaudhry',  4,'Quick Pulse Survey 2','2025-05-18'),
(270, 32,'cyrus.irfan',     'DS','DS301','huma.chaudhry',  4,'Quick Pulse Survey 2','2025-05-18'),
(271, 32,'daniyal.yaqoob',  'DS','DS301','madiha.waseem',  4,'Quick Pulse Survey 2','2025-05-14'),
(272, 32,'emaan.tahir',     'DS','DS301','madiha.waseem',  4,'Quick Pulse Survey 2','2025-05-14'),
(273, 32,'fiza.azam',       'DS','DS301','madiha.waseem',  4,'Quick Pulse Survey 2','2025-05-15'),
(274, 32,'ghulam.murtaza',  'DS','DS301','madiha.waseem',  4,'Quick Pulse Survey 2','2025-05-15'),
(275, 32,'hifza.shabbir',   'DS','DS301','madiha.waseem',  4,'Quick Pulse Survey 2','2025-05-16'),
(276, 32,'ibrar.khan',      'DS','DS301','madiha.waseem',  4,'Quick Pulse Survey 2','2025-05-16'),
(277, 32,'jaweria.zaman',   'DS','DS301','madiha.waseem',  4,'Quick Pulse Survey 2','2025-05-17'),
(278, 32,'kamil.ashraf',    'DS','DS301','madiha.waseem',  4,'Quick Pulse Survey 2','2025-05-17'),
(279, 32,'liba.ghauri',     'DS','DS301','madiha.waseem',  4,'Quick Pulse Survey 2','2025-05-18'),
(280, 32,'muneeb.yousuf',   'DS','DS301','madiha.waseem',  4,'Quick Pulse Survey 2','2025-05-18'),

-- ── CY Students → schedule 40 (CY301, Spring 2025, Q4) ───────
-- Section A → salman.butt (HIGH), Section B → asma.javed (AVG)
(281, 40,'nadeem.bangash',  'CY','CY301','salman.butt',    4,'Quick Pulse Survey 2','2025-05-14'),
(282, 40,'omaima.younas',   'CY','CY301','salman.butt',    4,'Quick Pulse Survey 2','2025-05-14'),
(283, 40,'pervez.lodhi',    'CY','CY301','salman.butt',    4,'Quick Pulse Survey 2','2025-05-15'),
(284, 40,'quratulain.zaidi','CY','CY301','salman.butt',    4,'Quick Pulse Survey 2','2025-05-15'),
(285, 40,'raza.haider',     'CY','CY301','salman.butt',    4,'Quick Pulse Survey 2','2025-05-16'),
(286, 40,'suhaib.bukhari',  'CY','CY301','salman.butt',    4,'Quick Pulse Survey 2','2025-05-16'),
(287, 40,'tooba.manzoor',   'CY','CY301','salman.butt',    4,'Quick Pulse Survey 2','2025-05-17'),
(288, 40,'ubaid.masood',    'CY','CY301','salman.butt',    4,'Quick Pulse Survey 2','2025-05-17'),
(289, 40,'varda.bashir',    'CY','CY301','salman.butt',    4,'Quick Pulse Survey 2','2025-05-18'),
(290, 40,'wahab.naqvi',     'CY','CY301','salman.butt',    4,'Quick Pulse Survey 2','2025-05-18'),
(291, 40,'xyla.farooqi',    'CY','CY301','asma.javed',     4,'Quick Pulse Survey 2','2025-05-14'),
(292, 40,'yasir.zuberi',    'CY','CY301','asma.javed',     4,'Quick Pulse Survey 2','2025-05-14'),
(293, 40,'zill.huma',       'CY','CY301','asma.javed',     4,'Quick Pulse Survey 2','2025-05-15'),
(294, 40,'ahmer.pirzada',   'CY','CY301','asma.javed',     4,'Quick Pulse Survey 2','2025-05-15'),
(295, 40,'bisma.iqbal',     'CY','CY301','asma.javed',     4,'Quick Pulse Survey 2','2025-05-16'),
(296, 40,'calab.razzaq',    'CY','CY301','asma.javed',     4,'Quick Pulse Survey 2','2025-05-16'),
(297, 40,'dua.shaheen',     'CY','CY301','asma.javed',     4,'Quick Pulse Survey 2','2025-05-17'),
(298, 40,'ehsan.jilani',    'CY','CY301','asma.javed',     4,'Quick Pulse Survey 2','2025-05-17'),
(299, 40,'fozia.riaz',      'CY','CY301','asma.javed',     4,'Quick Pulse Survey 2','2025-05-18'),
(300, 40,'gohar.kiani',     'CY','CY301','asma.javed',     4,'Quick Pulse Survey 2','2025-05-18'),
-- ── CS Students → schedule 4 (CS401, Spring 2023, Q4) ────────
-- Section A → zainab.khattak (HIGH)
-- Section B → farah.noor (AVG)

(301, 4,'ali.hassan',       'CS','CS401','zainab.khattak', 4,'Quick Pulse Survey 2','2023-05-14'),
(302, 4,'fatima.shah',      'CS','CS401','zainab.khattak', 4,'Quick Pulse Survey 2','2023-05-14'),
(303, 4,'omar.tariq',       'CS','CS401','zainab.khattak', 4,'Quick Pulse Survey 2','2023-05-15'),
(304, 4,'zara.anwar',       'CS','CS401','zainab.khattak', 4,'Quick Pulse Survey 2','2023-05-15'),
(305, 4,'hamza.yousuf',     'CS','CS401','zainab.khattak', 4,'Quick Pulse Survey 2','2023-05-16'),
(306, 4,'maryam.aslam',     'CS','CS401','zainab.khattak', 4,'Quick Pulse Survey 2','2023-05-16'),
(307, 4,'talha.raza',       'CS','CS401','zainab.khattak', 4,'Quick Pulse Survey 2','2023-05-17'),
(308, 4,'hira.iqbal',       'CS','CS401','zainab.khattak', 4,'Quick Pulse Survey 2','2023-05-17'),
(309, 4,'saad.mehmood',     'CS','CS401','zainab.khattak', 4,'Quick Pulse Survey 2','2023-05-18'),
(310, 4,'nimra.zahid',      'CS','CS401','zainab.khattak', 4,'Quick Pulse Survey 2','2023-05-18'),
(311, 4,'faisal.nawaz',     'CS','CS401','farah.noor',     4,'Quick Pulse Survey 2','2023-05-14'),
(312, 4,'sana.shafiq',      'CS','CS401','farah.noor',     4,'Quick Pulse Survey 2','2023-05-14'),
(313, 4,'bilal.siddique',   'CS','CS401','farah.noor',     4,'Quick Pulse Survey 2','2023-05-15'),
(314, 4,'nadia.kamran',     'CS','CS401','farah.noor',     4,'Quick Pulse Survey 2','2023-05-15'),
(315, 4,'usman.ghani',      'CS','CS401','farah.noor',     4,'Quick Pulse Survey 2','2023-05-16'),
(316, 4,'amina.bajwa',      'CS','CS401','farah.noor',     4,'Quick Pulse Survey 2','2023-05-16'),
(317, 4,'rizwan.chaudhary', 'CS','CS401','farah.noor',     4,'Quick Pulse Survey 2','2023-05-17'),
(318, 4,'maira.khalil',     'CS','CS401','farah.noor',     4,'Quick Pulse Survey 2','2023-05-17'),
(319, 4,'shehroz.asif',     'CS','CS401','farah.noor',     4,'Quick Pulse Survey 2','2023-05-18'),
(320, 4,'warda.niazi',      'CS','CS401','farah.noor',     4,'Quick Pulse Survey 2','2023-05-18'),

-- ── EE Students → schedule 12 (EE401, Spring 2023, Q4) ───────
-- Section A → amna.riaz (HIGH)
-- Section B → mariam.hanif (AVG)
(321, 12,'asim.rao',        'EE','EE401','amna.riaz',      4,'Quick Pulse Survey 2','2023-05-14'),
(322, 12,'bushra.malik',    'EE','EE401','amna.riaz',      4,'Quick Pulse Survey 2','2023-05-14'),
(323, 12,'farrukh.sultan',  'EE','EE401','amna.riaz',      4,'Quick Pulse Survey 2','2023-05-15'),
(324, 12,'gulnaz.pasha',    'EE','EE401','amna.riaz',      4,'Quick Pulse Survey 2','2023-05-15'),
(325, 12,'imtiaz.ahmad',    'EE','EE401','amna.riaz',      4,'Quick Pulse Survey 2','2023-05-16'),
(326, 12,'javeria.saleem',  'EE','EE401','amna.riaz',      4,'Quick Pulse Survey 2','2023-05-16'),
(327, 12,'khalid.waheed',   'EE','EE401','amna.riaz',      4,'Quick Pulse Survey 2','2023-05-17'),
(328, 12,'laraib.noor',     'EE','EE401','amna.riaz',      4,'Quick Pulse Survey 2','2023-05-17'),
(329, 12,'mohsin.rauf',     'EE','EE401','amna.riaz',      4,'Quick Pulse Survey 2','2023-05-18'),
(330, 12,'nabeela.hashmi',  'EE','EE401','amna.riaz',      4,'Quick Pulse Survey 2','2023-05-18'),
(331, 12,'osama.cheema',    'EE','EE401','mariam.hanif',   4,'Quick Pulse Survey 2','2023-05-14'),
(332, 12,'palwasha.afridi', 'EE','EE401','mariam.hanif',   4,'Quick Pulse Survey 2','2023-05-14'),
(333, 12,'qasim.raza',      'EE','EE401','mariam.hanif',   4,'Quick Pulse Survey 2','2023-05-15'),
(334, 12,'rabia.waqas',     'EE','EE401','mariam.hanif',   4,'Quick Pulse Survey 2','2023-05-15'),
(335, 12,'samiullah.khan',  'EE','EE401','mariam.hanif',   4,'Quick Pulse Survey 2','2023-05-16'),
(336, 12,'tayyaba.aziz',    'EE','EE401','mariam.hanif',   4,'Quick Pulse Survey 2','2023-05-16'),
(337, 12,'umer.daud',       'EE','EE401','mariam.hanif',   4,'Quick Pulse Survey 2','2023-05-17'),
(338, 12,'veena.hafeez',    'EE','EE401','mariam.hanif',   4,'Quick Pulse Survey 2','2023-05-17'),
(339, 12,'waseem.akram',    'EE','EE401','mariam.hanif',   4,'Quick Pulse Survey 2','2023-05-18'),
(340, 12,'yumna.sarfraz',   'EE','EE401','mariam.hanif',   4,'Quick Pulse Survey 2','2023-05-18'),

-- ── AI Students → schedule 20 (AI401, Spring 2023, Q4) ───────
-- Section A → sumbul.haider (HIGH)
-- Section B → muzammil.khan (AVG)
(341, 20,'zohaib.naseer',   'AI','AI401','sumbul.haider',  4,'Quick Pulse Survey 2','2023-05-14'),
(342, 20,'anam.ghaffar',    'AI','AI401','sumbul.haider',  4,'Quick Pulse Survey 2','2023-05-14'),
(343, 20,'burhan.shoukat',  'AI','AI401','sumbul.haider',  4,'Quick Pulse Survey 2','2023-05-15'),
(344, 20,'chanda.rashid',   'AI','AI401','sumbul.haider',  4,'Quick Pulse Survey 2','2023-05-15'),
(345, 20,'danyal.fareed',   'AI','AI401','sumbul.haider',  4,'Quick Pulse Survey 2','2023-05-16'),
(346, 20,'erum.parvez',     'AI','AI401','sumbul.haider',  4,'Quick Pulse Survey 2','2023-05-16'),
(347, 20,'furqan.sohail',   'AI','AI401','sumbul.haider',  4,'Quick Pulse Survey 2','2023-05-17'),
(348, 20,'gul.rukh',        'AI','AI401','sumbul.haider',  4,'Quick Pulse Survey 2','2023-05-17'),
(349, 20,'hammad.zubair',   'AI','AI401','sumbul.haider',  4,'Quick Pulse Survey 2','2023-05-18'),
(350, 20,'iqra.farrukh',    'AI','AI401','sumbul.haider',  4,'Quick Pulse Survey 2','2023-05-18'),
(351, 20,'junaid.waheed',   'AI','AI401','muzammil.khan',  4,'Quick Pulse Survey 2','2023-05-14'),
(352, 20,'kinza.liaqat',    'AI','AI401','muzammil.khan',  4,'Quick Pulse Survey 2','2023-05-14'),
(353, 20,'luqman.tariq',    'AI','AI401','muzammil.khan',  4,'Quick Pulse Survey 2','2023-05-15'),
(354, 20,'mehwish.afzal',   'AI','AI401','muzammil.khan',  4,'Quick Pulse Survey 2','2023-05-15'),
(355, 20,'nabeel.masood',   'AI','AI401','muzammil.khan',  4,'Quick Pulse Survey 2','2023-05-16'),
(356, 20,'obaid.rehman',    'AI','AI401','muzammil.khan',  4,'Quick Pulse Survey 2','2023-05-16'),
(357, 20,'pareesa.nadeem',  'AI','AI401','muzammil.khan',  4,'Quick Pulse Survey 2','2023-05-17'),
(358, 20,'qudsia.arshad',   'AI','AI401','muzammil.khan',  4,'Quick Pulse Survey 2','2023-05-17'),
(359, 20,'ramsha.bano',     'AI','AI401','muzammil.khan',  4,'Quick Pulse Survey 2','2023-05-18'),
(360, 20,'sarfraz.gill',    'AI','AI401','muzammil.khan',  4,'Quick Pulse Survey 2','2023-05-18'),

-- ── DS Students → schedule 28 (DS401, Spring 2023, Q4) ───────
-- Section A → adil.rehman (HIGH)
-- Section B → sumaira.naz (AVG)
(361, 28,'tayyab.hussain',  'DS','DS401','adil.rehman',    4,'Quick Pulse Survey 2','2023-05-14'),
(362, 28,'ulfat.bibi',      'DS','DS401','adil.rehman',    4,'Quick Pulse Survey 2','2023-05-14'),
(363, 28,'vasim.qadri',     'DS','DS401','adil.rehman',    4,'Quick Pulse Survey 2','2023-05-15'),
(364, 28,'wajeeha.sami',    'DS','DS401','adil.rehman',    4,'Quick Pulse Survey 2','2023-05-15'),
(365, 28,'xahir.baig',      'DS','DS401','adil.rehman',    4,'Quick Pulse Survey 2','2023-05-16'),
(366, 28,'yasmeen.gul',     'DS','DS401','adil.rehman',    4,'Quick Pulse Survey 2','2023-05-16'),
(367, 28,'zeeshan.mehar',   'DS','DS401','adil.rehman',    4,'Quick Pulse Survey 2','2023-05-17'),
(368, 28,'abida.sultana',   'DS','DS401','adil.rehman',    4,'Quick Pulse Survey 2','2023-05-17'),
(369, 28,'bakhtawar.nisar', 'DS','DS401','adil.rehman',    4,'Quick Pulse Survey 2','2023-05-18'),
(370, 28,'cyrus.irfan',     'DS','DS401','adil.rehman',    4,'Quick Pulse Survey 2','2023-05-18'),
(371, 28,'daniyal.yaqoob',  'DS','DS401','sumaira.naz',    4,'Quick Pulse Survey 2','2023-05-14'),
(372, 28,'emaan.tahir',     'DS','DS401','sumaira.naz',    4,'Quick Pulse Survey 2','2023-05-14'),
(373, 28,'fiza.azam',       'DS','DS401','sumaira.naz',    4,'Quick Pulse Survey 2','2023-05-15'),
(374, 28,'ghulam.murtaza',  'DS','DS401','sumaira.naz',    4,'Quick Pulse Survey 2','2023-05-15'),
(375, 28,'hifza.shabbir',   'DS','DS401','sumaira.naz',    4,'Quick Pulse Survey 2','2023-05-16'),
(376, 28,'ibrar.khan',      'DS','DS401','sumaira.naz',    4,'Quick Pulse Survey 2','2023-05-16'),
(377, 28,'jaweria.zaman',   'DS','DS401','sumaira.naz',    4,'Quick Pulse Survey 2','2023-05-17'),
(378, 28,'kamil.ashraf',    'DS','DS401','sumaira.naz',    4,'Quick Pulse Survey 2','2023-05-17'),
(379, 28,'liba.ghauri',     'DS','DS401','sumaira.naz',    4,'Quick Pulse Survey 2','2023-05-18'),
(380, 28,'muneeb.yousuf',   'DS','DS401','sumaira.naz',    4,'Quick Pulse Survey 2','2023-05-18'),

-- ── CY Students → schedule 36 (CY401, Spring 2023, Q4) ───────
-- Section A → zubair.mirza (HIGH)
-- Section B → haseena.kousar (AVG)
(381, 36,'nadeem.bangash',  'CY','CY401','zubair.mirza',   4,'Quick Pulse Survey 2','2023-05-14'),
(382, 36,'omaima.younas',   'CY','CY401','zubair.mirza',   4,'Quick Pulse Survey 2','2023-05-14'),
(383, 36,'pervez.lodhi',    'CY','CY401','zubair.mirza',   4,'Quick Pulse Survey 2','2023-05-15'),
(384, 36,'quratulain.zaidi','CY','CY401','zubair.mirza',   4,'Quick Pulse Survey 2','2023-05-15'),
(385, 36,'raza.haider',     'CY','CY401','zubair.mirza',   4,'Quick Pulse Survey 2','2023-05-16'),
(386, 36,'suhaib.bukhari',  'CY','CY401','zubair.mirza',   4,'Quick Pulse Survey 2','2023-05-16'),
(387, 36,'tooba.manzoor',   'CY','CY401','zubair.mirza',   4,'Quick Pulse Survey 2','2023-05-17'),
(388, 36,'ubaid.masood',    'CY','CY401','zubair.mirza',   4,'Quick Pulse Survey 2','2023-05-17'),
(389, 36,'varda.bashir',    'CY','CY401','zubair.mirza',   4,'Quick Pulse Survey 2','2023-05-18'),
(390, 36,'wahab.naqvi',     'CY','CY401','zubair.mirza',   4,'Quick Pulse Survey 2','2023-05-18'),
(391, 36,'xyla.farooqi',    'CY','CY401','haseena.kousar', 4,'Quick Pulse Survey 2','2023-05-14'),
(392, 36,'yasir.zuberi',    'CY','CY401','haseena.kousar', 4,'Quick Pulse Survey 2','2023-05-14'),
(393, 36,'zill.huma',       'CY','CY401','haseena.kousar', 4,'Quick Pulse Survey 2','2023-05-15'),
(394, 36,'ahmer.pirzada',   'CY','CY401','haseena.kousar', 4,'Quick Pulse Survey 2','2023-05-15'),
(395, 36,'bisma.iqbal',     'CY','CY401','haseena.kousar', 4,'Quick Pulse Survey 2','2023-05-16'),
(396, 36,'calab.razzaq',    'CY','CY401','haseena.kousar', 4,'Quick Pulse Survey 2','2023-05-16'),
(397, 36,'dua.shaheen',     'CY','CY401','haseena.kousar', 4,'Quick Pulse Survey 2','2023-05-17'),
(398, 36,'ehsan.jilani',    'CY','CY401','haseena.kousar', 4,'Quick Pulse Survey 2','2023-05-17'),
(399, 36,'fozia.riaz',      'CY','CY401','haseena.kousar', 4,'Quick Pulse Survey 2','2023-05-18'),
(400, 36,'gohar.kiani',     'CY','CY401','haseena.kousar', 4,'Quick Pulse Survey 2','2023-05-18'),
-- ============================================================
-- FALL 2023  FORM RESPONSES  (IDs 401–500)
-- ============================================================
-- ── CS Students → schedule 5 (CS501, Fall 2023, Q4) ──────────
-- Section A → hassan.iqbal (HIGH)
-- Section B → rabia.tanveer (AVG)
(401, 5,'ali.hassan',       'CS','CS501','hassan.iqbal',   4,'Quick Pulse Survey 2','2023-12-05'),
(402, 5,'fatima.shah',      'CS','CS501','hassan.iqbal',   4,'Quick Pulse Survey 2','2023-12-06'),
(403, 5,'omar.tariq',       'CS','CS501','hassan.iqbal',   4,'Quick Pulse Survey 2','2023-12-05'),
(404, 5,'zara.anwar',       'CS','CS501','hassan.iqbal',   4,'Quick Pulse Survey 2','2023-12-06'),
(405, 5,'hamza.yousuf',     'CS','CS501','hassan.iqbal',   4,'Quick Pulse Survey 2','2023-12-07'),
(406, 5,'maryam.aslam',     'CS','CS501','hassan.iqbal',   4,'Quick Pulse Survey 2','2023-12-07'),
(407, 5,'talha.raza',       'CS','CS501','hassan.iqbal',   4,'Quick Pulse Survey 2','2023-12-08'),
(408, 5,'hira.iqbal',       'CS','CS501','hassan.iqbal',   4,'Quick Pulse Survey 2','2023-12-08'),
(409, 5,'saad.mehmood',     'CS','CS501','hassan.iqbal',   4,'Quick Pulse Survey 2','2023-12-09'),
(410, 5,'nimra.zahid',      'CS','CS501','hassan.iqbal',   4,'Quick Pulse Survey 2','2023-12-09'),
(411, 5,'faisal.nawaz',     'CS','CS501','rabia.tanveer',  4,'Quick Pulse Survey 2','2023-12-05'),
(412, 5,'sana.shafiq',      'CS','CS501','rabia.tanveer',  4,'Quick Pulse Survey 2','2023-12-06'),
(413, 5,'bilal.siddique',   'CS','CS501','rabia.tanveer',  4,'Quick Pulse Survey 2','2023-12-06'),
(414, 5,'nadia.kamran',     'CS','CS501','rabia.tanveer',  4,'Quick Pulse Survey 2','2023-12-07'),
(415, 5,'usman.ghani',      'CS','CS501','rabia.tanveer',  4,'Quick Pulse Survey 2','2023-12-07'),
(416, 5,'amina.bajwa',      'CS','CS501','rabia.tanveer',  4,'Quick Pulse Survey 2','2023-12-08'),
(417, 5,'rizwan.chaudhary', 'CS','CS501','rabia.tanveer',  4,'Quick Pulse Survey 2','2023-12-08'),
(418, 5,'maira.khalil',     'CS','CS501','rabia.tanveer',  4,'Quick Pulse Survey 2','2023-12-09'),
(419, 5,'shehroz.asif',     'CS','CS501','rabia.tanveer',  4,'Quick Pulse Survey 2','2023-12-09'),
(420, 5,'warda.niazi',      'CS','CS501','rabia.tanveer',  4,'Quick Pulse Survey 2','2023-12-10'),

-- ── EE Students → schedule 13 (EE501, Fall 2023, Q4) ─────────
-- Section A → zaheer.abbas (HIGH)
-- Section B → fauzia.yousaf (AVG)
(421, 13,'asim.rao',        'EE','EE501','zaheer.abbas',   4,'Quick Pulse Survey 2','2023-12-05'),
(422, 13,'bushra.malik',    'EE','EE501','zaheer.abbas',   4,'Quick Pulse Survey 2','2023-12-06'),
(423, 13,'farrukh.sultan',  'EE','EE501','zaheer.abbas',   4,'Quick Pulse Survey 2','2023-12-05'),
(424, 13,'gulnaz.pasha',    'EE','EE501','zaheer.abbas',   4,'Quick Pulse Survey 2','2023-12-06'),
(425, 13,'imtiaz.ahmad',    'EE','EE501','zaheer.abbas',   4,'Quick Pulse Survey 2','2023-12-07'),
(426, 13,'javeria.saleem',  'EE','EE501','zaheer.abbas',   4,'Quick Pulse Survey 2','2023-12-07'),
(427, 13,'khalid.waheed',   'EE','EE501','zaheer.abbas',   4,'Quick Pulse Survey 2','2023-12-08'),
(428, 13,'laraib.noor',     'EE','EE501','zaheer.abbas',   4,'Quick Pulse Survey 2','2023-12-08'),
(429, 13,'mohsin.rauf',     'EE','EE501','zaheer.abbas',   4,'Quick Pulse Survey 2','2023-12-09'),
(430, 13,'nabeela.hashmi',  'EE','EE501','zaheer.abbas',   4,'Quick Pulse Survey 2','2023-12-09'),
(431, 13,'osama.cheema',    'EE','EE501','fauzia.yousaf',  4,'Quick Pulse Survey 2','2023-12-05'),
(432, 13,'palwasha.afridi', 'EE','EE501','fauzia.yousaf',  4,'Quick Pulse Survey 2','2023-12-06'),
(433, 13,'qasim.raza',      'EE','EE501','fauzia.yousaf',  4,'Quick Pulse Survey 2','2023-12-06'),
(434, 13,'rabia.waqas',     'EE','EE501','fauzia.yousaf',  4,'Quick Pulse Survey 2','2023-12-07'),
(435, 13,'samiullah.khan',  'EE','EE501','fauzia.yousaf',  4,'Quick Pulse Survey 2','2023-12-07'),
(436, 13,'tayyaba.aziz',    'EE','EE501','fauzia.yousaf',  4,'Quick Pulse Survey 2','2023-12-08'),
(437, 13,'umer.daud',       'EE','EE501','fauzia.yousaf',  4,'Quick Pulse Survey 2','2023-12-08'),
(438, 13,'veena.hafeez',    'EE','EE501','fauzia.yousaf',  4,'Quick Pulse Survey 2','2023-12-09'),
(439, 13,'waseem.akram',    'EE','EE501','fauzia.yousaf',  4,'Quick Pulse Survey 2','2023-12-09'),
(440, 13,'yumna.sarfraz',   'EE','EE501','fauzia.yousaf',  4,'Quick Pulse Survey 2','2023-12-10'),

-- ── AI Students → schedule 21 (AI501, Fall 2023, Q4) ─────────
-- Section A → nosheen.arif (HIGH)
-- Section B → ghazala.parveen (AVG)
(441, 21,'zohaib.naseer',   'AI','AI501','nosheen.arif',   4,'Quick Pulse Survey 2','2023-12-05'),
(442, 21,'anam.ghaffar',    'AI','AI501','nosheen.arif',   4,'Quick Pulse Survey 2','2023-12-06'),
(443, 21,'burhan.shoukat',  'AI','AI501','nosheen.arif',   4,'Quick Pulse Survey 2','2023-12-05'),
(444, 21,'chanda.rashid',   'AI','AI501','nosheen.arif',   4,'Quick Pulse Survey 2','2023-12-06'),
(445, 21,'danyal.fareed',   'AI','AI501','nosheen.arif',   4,'Quick Pulse Survey 2','2023-12-07'),
(446, 21,'erum.parvez',     'AI','AI501','nosheen.arif',   4,'Quick Pulse Survey 2','2023-12-07'),
(447, 21,'furqan.sohail',   'AI','AI501','nosheen.arif',   4,'Quick Pulse Survey 2','2023-12-08'),
(448, 21,'gul.rukh',        'AI','AI501','nosheen.arif',   4,'Quick Pulse Survey 2','2023-12-08'),
(449, 21,'hammad.zubair',   'AI','AI501','nosheen.arif',   4,'Quick Pulse Survey 2','2023-12-09'),
(450, 21,'iqra.farrukh',    'AI','AI501','nosheen.arif',   4,'Quick Pulse Survey 2','2023-12-09'),
(451, 21,'junaid.waheed',   'AI','AI501','ghazala.parveen',4,'Quick Pulse Survey 2','2023-12-05'),
(452, 21,'kinza.liaqat',    'AI','AI501','ghazala.parveen',4,'Quick Pulse Survey 2','2023-12-06'),
(453, 21,'luqman.tariq',    'AI','AI501','ghazala.parveen',4,'Quick Pulse Survey 2','2023-12-06'),
(454, 21,'mehwish.afzal',   'AI','AI501','ghazala.parveen',4,'Quick Pulse Survey 2','2023-12-07'),
(455, 21,'nabeel.masood',   'AI','AI501','ghazala.parveen',4,'Quick Pulse Survey 2','2023-12-07'),
(456, 21,'obaid.rehman',    'AI','AI501','ghazala.parveen',4,'Quick Pulse Survey 2','2023-12-08'),
(457, 21,'pareesa.nadeem',  'AI','AI501','ghazala.parveen',4,'Quick Pulse Survey 2','2023-12-08'),
(458, 21,'qudsia.arshad',   'AI','AI501','ghazala.parveen',4,'Quick Pulse Survey 2','2023-12-09'),
(459, 21,'ramsha.bano',     'AI','AI501','ghazala.parveen',4,'Quick Pulse Survey 2','2023-12-09'),
(460, 21,'sarfraz.gill',    'AI','AI501','ghazala.parveen',4,'Quick Pulse Survey 2','2023-12-10'),

-- ── DS Students → schedule 29 (DS501, Fall 2023, Q4) ─────────
-- Section A → faisal.umar (HIGH)
-- Section B → tehzeeb.gul (AVG)
(461, 29,'tayyab.hussain',  'DS','DS501','faisal.umar',    4,'Quick Pulse Survey 2','2023-12-05'),
(462, 29,'ulfat.bibi',      'DS','DS501','faisal.umar',    4,'Quick Pulse Survey 2','2023-12-06'),
(463, 29,'vasim.qadri',     'DS','DS501','faisal.umar',    4,'Quick Pulse Survey 2','2023-12-05'),
(464, 29,'wajeeha.sami',    'DS','DS501','faisal.umar',    4,'Quick Pulse Survey 2','2023-12-06'),
(465, 29,'xahir.baig',      'DS','DS501','faisal.umar',    4,'Quick Pulse Survey 2','2023-12-07'),
(466, 29,'yasmeen.gul',     'DS','DS501','faisal.umar',    4,'Quick Pulse Survey 2','2023-12-07'),
(467, 29,'zeeshan.mehar',   'DS','DS501','faisal.umar',    4,'Quick Pulse Survey 2','2023-12-08'),
(468, 29,'abida.sultana',   'DS','DS501','faisal.umar',    4,'Quick Pulse Survey 2','2023-12-08'),
(469, 29,'bakhtawar.nisar', 'DS','DS501','faisal.umar',    4,'Quick Pulse Survey 2','2023-12-09'),
(470, 29,'cyrus.irfan',     'DS','DS501','faisal.umar',    4,'Quick Pulse Survey 2','2023-12-09'),
(471, 29,'daniyal.yaqoob',  'DS','DS501','tehzeeb.gul',    4,'Quick Pulse Survey 2','2023-12-05'),
(472, 29,'emaan.tahir',     'DS','DS501','tehzeeb.gul',    4,'Quick Pulse Survey 2','2023-12-06'),
(473, 29,'fiza.azam',       'DS','DS501','tehzeeb.gul',    4,'Quick Pulse Survey 2','2023-12-06'),
(474, 29,'ghulam.murtaza',  'DS','DS501','tehzeeb.gul',    4,'Quick Pulse Survey 2','2023-12-07'),
(475, 29,'hifza.shabbir',   'DS','DS501','tehzeeb.gul',    4,'Quick Pulse Survey 2','2023-12-07'),
(476, 29,'ibrar.khan',      'DS','DS501','tehzeeb.gul',    4,'Quick Pulse Survey 2','2023-12-08'),
(477, 29,'jaweria.zaman',   'DS','DS501','tehzeeb.gul',    4,'Quick Pulse Survey 2','2023-12-08'),
(478, 29,'kamil.ashraf',    'DS','DS501','tehzeeb.gul',    4,'Quick Pulse Survey 2','2023-12-09'),
(479, 29,'liba.ghauri',     'DS','DS501','tehzeeb.gul',    4,'Quick Pulse Survey 2','2023-12-09'),
(480, 29,'muneeb.yousuf',   'DS','DS501','tehzeeb.gul',    4,'Quick Pulse Survey 2','2023-12-10'),

-- ── CY Students → schedule 37 (CY501, Fall 2023, Q4) ─────────
-- Section A → babar.munir (HIGH)
-- Section B → aisha.siddiqui (AVG)
(481, 37,'nadeem.bangash',  'CY','CY501','babar.munir',    4,'Quick Pulse Survey 2','2023-12-05'),
(482, 37,'omaima.younas',   'CY','CY501','babar.munir',    4,'Quick Pulse Survey 2','2023-12-06'),
(483, 37,'pervez.lodhi',    'CY','CY501','babar.munir',    4,'Quick Pulse Survey 2','2023-12-05'),
(484, 37,'quratulain.zaidi','CY','CY501','babar.munir',    4,'Quick Pulse Survey 2','2023-12-06'),
(485, 37,'raza.haider',     'CY','CY501','babar.munir',    4,'Quick Pulse Survey 2','2023-12-07'),
(486, 37,'suhaib.bukhari',  'CY','CY501','babar.munir',    4,'Quick Pulse Survey 2','2023-12-07'),
(487, 37,'tooba.manzoor',   'CY','CY501','babar.munir',    4,'Quick Pulse Survey 2','2023-12-08'),
(488, 37,'ubaid.masood',    'CY','CY501','babar.munir',    4,'Quick Pulse Survey 2','2023-12-08'),
(489, 37,'varda.bashir',    'CY','CY501','babar.munir',    4,'Quick Pulse Survey 2','2023-12-09'),
(490, 37,'wahab.naqvi',     'CY','CY501','babar.munir',    4,'Quick Pulse Survey 2','2023-12-09'),
(491, 37,'xyla.farooqi',    'CY','CY501','aisha.siddiqui', 4,'Quick Pulse Survey 2','2023-12-05'),
(492, 37,'yasir.zuberi',    'CY','CY501','aisha.siddiqui', 4,'Quick Pulse Survey 2','2023-12-06'),
(493, 37,'zill.huma',       'CY','CY501','aisha.siddiqui', 4,'Quick Pulse Survey 2','2023-12-06'),
(494, 37,'ahmer.pirzada',   'CY','CY501','aisha.siddiqui', 4,'Quick Pulse Survey 2','2023-12-07'),
(495, 37,'bisma.iqbal',     'CY','CY501','aisha.siddiqui', 4,'Quick Pulse Survey 2','2023-12-07'),
(496, 37,'calab.razzaq',    'CY','CY501','aisha.siddiqui', 4,'Quick Pulse Survey 2','2023-12-08'),
(497, 37,'dua.shaheen',     'CY','CY501','aisha.siddiqui', 4,'Quick Pulse Survey 2','2023-12-08'),
(498, 37,'ehsan.jilani',    'CY','CY501','aisha.siddiqui', 4,'Quick Pulse Survey 2','2023-12-09'),
(499, 37,'fozia.riaz',      'CY','CY501','aisha.siddiqui', 4,'Quick Pulse Survey 2','2023-12-09'),
(500, 37,'gohar.kiani',     'CY','CY501','aisha.siddiqui', 4,'Quick Pulse Survey 2','2023-12-10');

SET IDENTITY_INSERT form_responses OFF;
GO


SET IDENTITY_INSERT response_answers ON;

INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(1,  1, 1,  'The teacher explains concepts clearly.',           'LIKERT','Teaching Quality','5', 100),
(2,  1, 2,  'Rate the teacher''s communication skills.',        'SLIDER','Communication',   '90',90),
(3,  1, 3,  'The teacher is fair when grading.',                'LIKERT','Fairness',         '5', 100),
(4,  1, 4,  'The teacher actively engages students.',           'LIKERT','Engagement',       '5', 100),
(5,  1, 5,  'The course content is relevant.',                  'LIKERT','Content',          '4',  80),
(6,  1, 6,  'Teacher arrives on time.',                         'BINARY','Punctuality',      'Yes',100),
(7,  1, 9,  'Rate the teacher''s subject knowledge.',           'SLIDER','Teaching Quality', '95', 95),
(8,  1, 11, 'The teacher treats all students with respect.',    'LIKERT','Fairness',         '5', 100),
(9,  1, 15, 'Additional comments.',                             'TEXT',  'General',          'Excellent teacher, very engaging lectures.',NULL);

INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(10, 2, 1,  'The teacher explains concepts clearly.',           'LIKERT','Teaching Quality','5', 100),
(11, 2, 2,  'Rate the teacher''s communication skills.',        'SLIDER','Communication',   '88', 88),
(12, 2, 3,  'The teacher is fair when grading.',                'LIKERT','Fairness',         '5', 100),
(13, 2, 4,  'The teacher actively engages students.',           'LIKERT','Engagement',       '4',  80),
(14, 2, 5,  'The course content is relevant.',                  'LIKERT','Content',          '5', 100),
(15, 2, 6,  'Teacher arrives on time.',                         'BINARY','Punctuality',      'Yes',100),
(16, 2, 9,  'Rate the teacher''s subject knowledge.',           'SLIDER','Teaching Quality', '92', 92),
(17, 2, 11, 'The teacher treats all students with respect.',    'LIKERT','Fairness',         '5', 100),
(18, 2, 15, 'Additional comments.',                             'TEXT',  'General',          'Clear explanations and helpful office hours.',NULL);

INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(19, 3, 1,  'The teacher explains concepts clearly.',           'LIKERT','Teaching Quality','4',  80),
(20, 3, 2,  'Rate the teacher''s communication skills.',        'SLIDER','Communication',   '85', 85),
(21, 3, 3,  'The teacher is fair when grading.',                'LIKERT','Fairness',         '5', 100),
(22, 3, 4,  'The teacher actively engages students.',           'LIKERT','Engagement',       '5', 100),
(23, 3, 5,  'The course content is relevant.',                  'LIKERT','Content',          '4',  80),
(24, 3, 6,  'Teacher arrives on time.',                         'BINARY','Punctuality',      'Yes',100),
(25, 3, 9,  'Rate the teacher''s subject knowledge.',           'SLIDER','Teaching Quality', '90', 90),
(26, 3, 11, 'The teacher treats all students with respect.',    'LIKERT','Fairness',         '4',  80),
(27, 3, 15, 'Additional comments.',                             'TEXT',  'General',          'Very knowledgeable and approachable.',NULL);

INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(28, 4, 1,  'The teacher explains concepts clearly.',           'LIKERT','Teaching Quality','5', 100),
(29, 4, 2,  'Rate the teacher''s communication skills.',        'SLIDER','Communication',   '93', 93),
(30, 4, 3,  'The teacher is fair when grading.',                'LIKERT','Fairness',         '4',  80),
(31, 4, 4,  'The teacher actively engages students.',           'LIKERT','Engagement',       '5', 100),
(32, 4, 5,  'The course content is relevant.',                  'LIKERT','Content',          '5', 100),
(33, 4, 6,  'Teacher arrives on time.',                         'BINARY','Punctuality',      'Yes',100),
(34, 4, 9,  'Rate the teacher''s subject knowledge.',           'SLIDER','Teaching Quality', '88', 88),
(35, 4, 11, 'The teacher treats all students with respect.',    'LIKERT','Fairness',         '5', 100),
(36, 4, 15, 'Additional comments.',                             'TEXT',  'General',          'One of the best instructors in the department.',NULL);

INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(37, 5, 1,  'The teacher explains concepts clearly.',           'LIKERT','Teaching Quality','5', 100),
(38, 5, 2,  'Rate the teacher''s communication skills.',        'SLIDER','Communication',   '87', 87),
(39, 5, 3,  'The teacher is fair when grading.',                'LIKERT','Fairness',         '5', 100),
(40, 5, 4,  'The teacher actively engages students.',           'LIKERT','Engagement',       '4',  80),
(41, 5, 5,  'The course content is relevant.',                  'LIKERT','Content',          '5', 100),
(42, 5, 6,  'Teacher arrives on time.',                         'BINARY','Punctuality',      'Yes',100),
(43, 5, 9,  'Rate the teacher''s subject knowledge.',           'SLIDER','Teaching Quality', '91', 91),
(44, 5, 11, 'The teacher treats all students with respect.',    'LIKERT','Fairness',         '5', 100),
(45, 5, 15, 'Additional comments.',                             'TEXT',  'General',          'Highly recommended.',NULL);

INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(46, 6, 1,  'The teacher explains concepts clearly.',           'LIKERT','Teaching Quality','4',  80),
(47, 6, 2,  'Rate the teacher''s communication skills.',        'SLIDER','Communication',   '86', 86),
(48, 6, 3,  'The teacher is fair when grading.',                'LIKERT','Fairness',         '5', 100),
(49, 6, 4,  'The teacher actively engages students.',           'LIKERT','Engagement',       '5', 100),
(50, 6, 5,  'The course content is relevant.',                  'LIKERT','Content',          '4',  80),
(51, 6, 6,  'Teacher arrives on time.',                         'BINARY','Punctuality',      'Yes',100),
(52, 6, 9,  'Rate the teacher''s subject knowledge.',           'SLIDER','Teaching Quality', '94', 94),
(53, 6, 11, 'The teacher treats all students with respect.',    'LIKERT','Fairness',         '4',  80),
(54, 6, 15, 'Additional comments.',                             'TEXT',  'General',          'Clear grading criteria and fair assessments.',NULL);

INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(55, 7, 1,  'The teacher explains concepts clearly.',           'LIKERT','Teaching Quality','5', 100),
(56, 7, 2,  'Rate the teacher''s communication skills.',        'SLIDER','Communication',   '89', 89),
(57, 7, 3,  'The teacher is fair when grading.',                'LIKERT','Fairness',         '4',  80),
(58, 7, 4,  'The teacher actively engages students.',           'LIKERT','Engagement',       '4',  80),
(59, 7, 5,  'The course content is relevant.',                  'LIKERT','Content',          '5', 100),
(60, 7, 6,  'Teacher arrives on time.',                         'BINARY','Punctuality',      'Yes',100),
(61, 7, 9,  'Rate the teacher''s subject knowledge.',           'SLIDER','Teaching Quality', '93', 93),
(62, 7, 11, 'The teacher treats all students with respect.',    'LIKERT','Fairness',         '5', 100),
(63, 7, 15, 'Additional comments.',                             'TEXT',  'General',          'Engaging lecture style with real-world examples.',NULL);

INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(64, 8, 1,  'The teacher explains concepts clearly.',           'LIKERT','Teaching Quality','5', 100),
(65, 8, 2,  'Rate the teacher''s communication skills.',        'SLIDER','Communication',   '95', 95),
(66, 8, 3,  'The teacher is fair when grading.',                'LIKERT','Fairness',         '5', 100),
(67, 8, 4,  'The teacher actively engages students.',           'LIKERT','Engagement',       '5', 100),
(68, 8, 5,  'The course content is relevant.',                  'LIKERT','Content',          '5', 100),
(69, 8, 6,  'Teacher arrives on time.',                         'BINARY','Punctuality',      'Yes',100),
(70, 8, 9,  'Rate the teacher''s subject knowledge.',           'SLIDER','Teaching Quality', '97', 97),
(71, 8, 11, 'The teacher treats all students with respect.',    'LIKERT','Fairness',         '5', 100),
(72, 8, 15, 'Additional comments.',                             'TEXT',  'General',          'Outstanding educator, inspires critical thinking.',NULL);

INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(73, 9, 1,  'The teacher explains concepts clearly.',           'LIKERT','Teaching Quality','4',  80),
(74, 9, 2,  'Rate the teacher''s communication skills.',        'SLIDER','Communication',   '88', 88),
(75, 9, 3,  'The teacher is fair when grading.',                'LIKERT','Fairness',         '4',  80),
(76, 9, 4,  'The teacher actively engages students.',           'LIKERT','Engagement',       '5', 100),
(77, 9, 5,  'The course content is relevant.',                  'LIKERT','Content',          '4',  80),
(78, 9, 6,  'Teacher arrives on time.',                         'BINARY','Punctuality',      'Yes',100),
(79, 9, 9,  'Rate the teacher''s subject knowledge.',           'SLIDER','Teaching Quality', '90', 90),
(80, 9, 11, 'The teacher treats all students with respect.',    'LIKERT','Fairness',         '4',  80),
(81, 9, 15, 'Additional comments.',                             'TEXT',  'General',          'Good pacing of lessons.',NULL);

INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(82, 10, 1, 'The teacher explains concepts clearly.',           'LIKERT','Teaching Quality','5', 100),
(83, 10, 2, 'Rate the teacher''s communication skills.',        'SLIDER','Communication',   '91', 91),
(84, 10, 3, 'The teacher is fair when grading.',                'LIKERT','Fairness',         '5', 100),
(85, 10, 4, 'The teacher actively engages students.',           'LIKERT','Engagement',       '5', 100),
(86, 10, 5, 'The course content is relevant.',                  'LIKERT','Content',          '5', 100),
(87, 10, 6, 'Teacher arrives on time.',                         'BINARY','Punctuality',      'Yes',100),
(88, 10, 9, 'Rate the teacher''s subject knowledge.',           'SLIDER','Teaching Quality', '96', 96),
(89, 10, 11,'The teacher treats all students with respect.',    'LIKERT','Fairness',         '5', 100),
(90, 10, 15,'Additional comments.',                             'TEXT',  'General',          'Best DS instructor I have had.',NULL);

-- ── AT RISK: Responses 11-20 (imran.shahzad, CS) ─────────────
-- Scores 30-48 range
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(91, 11, 1, 'The teacher explains concepts clearly.',           'LIKERT','Teaching Quality','2', 40),
(92, 11, 2, 'Rate the teacher''s communication skills.',        'SLIDER','Communication',   '35', 35),
(93, 11, 3, 'The teacher is fair when grading.',                'LIKERT','Fairness',         '2', 40),
(94, 11, 4, 'The teacher actively engages students.',           'LIKERT','Engagement',       '1', 20),
(95, 11, 5, 'The course content is relevant.',                  'LIKERT','Content',          '2', 40),
(96, 11, 6, 'Teacher arrives on time.',                         'BINARY','Punctuality',      'No',  0),
(97, 11, 9, 'Rate the teacher''s subject knowledge.',           'SLIDER','Teaching Quality', '40', 40),
(98, 11, 11,'The teacher treats all students with respect.',    'LIKERT','Fairness',         '2', 40),
(99, 11, 15,'Additional comments.',                             'TEXT',  'General',          'Often unprepared and dismisses student questions.',NULL);

INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(100,12, 1, 'The teacher explains concepts clearly.',           'LIKERT','Teaching Quality','2', 40),
(101,12, 2, 'Rate the teacher''s communication skills.',        'SLIDER','Communication',   '30', 30),
(102,12, 3, 'The teacher is fair when grading.',                'LIKERT','Fairness',         '1', 20),
(103,12, 4, 'The teacher actively engages students.',           'LIKERT','Engagement',       '2', 40),
(104,12, 5, 'The course content is relevant.',                  'LIKERT','Content',          '2', 40),
(105,12, 6, 'Teacher arrives on time.',                         'BINARY','Punctuality',      'No',  0),
(106,12, 9, 'Rate the teacher''s subject knowledge.',           'SLIDER','Teaching Quality', '38', 38),
(107,12, 11,'The teacher treats all students with respect.',    'LIKERT','Fairness',         '1', 20),
(108,12, 15,'Additional comments.',                             'TEXT',  'General',          'Lectures are confusing with no structure.',NULL);

INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(109,13, 1, 'The teacher explains concepts clearly.',           'LIKERT','Teaching Quality','1', 20),
(110,13, 2, 'Rate the teacher''s communication skills.',        'SLIDER','Communication',   '32', 32),
(111,13, 3, 'The teacher is fair when grading.',                'LIKERT','Fairness',         '2', 40),
(112,13, 4, 'The teacher actively engages students.',           'LIKERT','Engagement',       '1', 20),
(113,13, 5, 'The course content is relevant.',                  'LIKERT','Content',          '1', 20),
(114,13, 6, 'Teacher arrives on time.',                         'BINARY','Punctuality',      'No',  0),
(115,13, 9, 'Rate the teacher''s subject knowledge.',           'SLIDER','Teaching Quality', '35', 35),
(116,13, 11,'The teacher treats all students with respect.',    'LIKERT','Fairness',         '2', 40),
(117,13, 15,'Additional comments.',                             'TEXT',  'General',          'Very poor delivery, needs significant improvement.',NULL);

INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(118,14, 1, 'The teacher explains concepts clearly.',           'LIKERT','Teaching Quality','2', 40),
(119,14, 2, 'Rate the teacher''s communication skills.',        'SLIDER','Communication',   '38', 38),
(120,14, 3, 'The teacher is fair when grading.',                'LIKERT','Fairness',         '2', 40),
(121,14, 4, 'The teacher actively engages students.',           'LIKERT','Engagement',       '2', 40),
(122,14, 5, 'The course content is relevant.',                  'LIKERT','Content',          '2', 40),
(123,14, 6, 'Teacher arrives on time.',                         'BINARY','Punctuality',      'No',  0),
(124,14, 9, 'Rate the teacher''s subject knowledge.',           'SLIDER','Teaching Quality', '42', 42),
(125,14, 11,'The teacher treats all students with respect.',    'LIKERT','Fairness',         '2', 40),
(126,14, 15,'Additional comments.',                             'TEXT',  'General',          'Late to class regularly, slides are outdated.',NULL);

INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(127,15, 1, 'The teacher explains concepts clearly.',           'LIKERT','Teaching Quality','2', 40),
(128,15, 2, 'Rate the teacher''s communication skills.',        'SLIDER','Communication',   '34', 34),
(129,15, 3, 'The teacher is fair when grading.',                'LIKERT','Fairness',         '1', 20),
(130,15, 4, 'The teacher actively engages students.',           'LIKERT','Engagement',       '2', 40),
(131,15, 5, 'The course content is relevant.',                  'LIKERT','Content',          '2', 40),
(132,15, 6, 'Teacher arrives on time.',                         'BINARY','Punctuality',      'No',  0),
(133,15, 9, 'Rate the teacher''s subject knowledge.',           'SLIDER','Teaching Quality', '36', 36),
(134,15, 11,'The teacher treats all students with respect.',    'LIKERT','Fairness',         '1', 20),
(135,15, 15,'Additional comments.',                             'TEXT',  'General',          'Grades seem arbitrary and there is no feedback on work.',NULL);

INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(136,16, 1, 'The teacher explains concepts clearly.',           'LIKERT','Teaching Quality','2', 40),
(137,16, 2, 'Rate the teacher''s communication skills.',        'SLIDER','Communication',   '33', 33),
(138,16, 3, 'The teacher is fair when grading.',                'LIKERT','Fairness',         '2', 40),
(139,16, 4, 'The teacher actively engages students.',           'LIKERT','Engagement',       '1', 20),
(140,16, 5, 'The course content is relevant.',                  'LIKERT','Content',          '2', 40),
(141,16, 6, 'Teacher arrives on time.',                         'BINARY','Punctuality',      'No',  0),
(142,16, 9, 'Rate the teacher''s subject knowledge.',           'SLIDER','Teaching Quality', '41', 41),
(143,16, 11,'The teacher treats all students with respect.',    'LIKERT','Fairness',         '2', 40),
(144,16, 15,'Additional comments.',                             'TEXT',  'General',          'No class structure, topics jump around randomly.',NULL);

INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(145,17, 1, 'The teacher explains concepts clearly.',           'LIKERT','Teaching Quality','1', 20),
(146,17, 2, 'Rate the teacher''s communication skills.',        'SLIDER','Communication',   '29', 29),
(147,17, 3, 'The teacher is fair when grading.',                'LIKERT','Fairness',         '2', 40),
(148,17, 4, 'The teacher actively engages students.',           'LIKERT','Engagement',       '1', 20),
(149,17, 5, 'The course content is relevant.',                  'LIKERT','Content',          '1', 20),
(150,17, 6, 'Teacher arrives on time.',                         'BINARY','Punctuality',      'No',  0),
(151,17, 9, 'Rate the teacher''s subject knowledge.',           'SLIDER','Teaching Quality', '33', 33),
(152,17, 11,'The teacher treats all students with respect.',    'LIKERT','Fairness',         '1', 20),
(153,17, 15,'Additional comments.',                             'TEXT',  'General',          'Extremely disorganized, difficult to learn from.',NULL);

INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(154,18, 1, 'The teacher explains concepts clearly.',           'LIKERT','Teaching Quality','2', 40),
(155,18, 2, 'Rate the teacher''s communication skills.',        'SLIDER','Communication',   '37', 37),
(156,18, 3, 'The teacher is fair when grading.',                'LIKERT','Fairness',         '2', 40),
(157,18, 4, 'The teacher actively engages students.',           'LIKERT','Engagement',       '2', 40),
(158,18, 5, 'The course content is relevant.',                  'LIKERT','Content',          '2', 40),
(159,18, 6, 'Teacher arrives on time.',                         'BINARY','Punctuality',      'No',  0),
(160,18, 9, 'Rate the teacher''s subject knowledge.',           'SLIDER','Teaching Quality', '44', 44),
(161,18, 11,'The teacher treats all students with respect.',    'LIKERT','Fairness',         '2', 40),
(162,18, 15,'Additional comments.',                             'TEXT',  'General',          'Cannot explain complex topics in a simple way.',NULL);

INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(163,19, 1, 'The teacher explains concepts clearly.',           'LIKERT','Teaching Quality','2', 40),
(164,19, 2, 'Rate the teacher''s communication skills.',        'SLIDER','Communication',   '31', 31),
(165,19, 3, 'The teacher is fair when grading.',                'LIKERT','Fairness',         '1', 20),
(166,19, 4, 'The teacher actively engages students.',           'LIKERT','Engagement',       '2', 40),
(167,19, 5, 'The course content is relevant.',                  'LIKERT','Content',          '2', 40),
(168,19, 6, 'Teacher arrives on time.',                         'BINARY','Punctuality',      'No',  0),
(169,19, 9, 'Rate the teacher''s subject knowledge.',           'SLIDER','Teaching Quality', '39', 39),
(170,19, 11,'The teacher treats all students with respect.',    'LIKERT','Fairness',         '2', 40),
(171,19, 15,'Additional comments.',                             'TEXT',  'General',          'Hopes to see a more structured approach next semester.',NULL);

INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(172,20, 1, 'The teacher explains concepts clearly.',           'LIKERT','Teaching Quality','2', 40),
(173,20, 2, 'Rate the teacher''s communication skills.',        'SLIDER','Communication',   '36', 36),
(174,20, 3, 'The teacher is fair when grading.',                'LIKERT','Fairness',         '2', 40),
(175,20, 4, 'The teacher actively engages students.',           'LIKERT','Engagement',       '1', 20),
(176,20, 5, 'The course content is relevant.',                  'LIKERT','Content',          '2', 40),
(177,20, 6, 'Teacher arrives on time.',                         'BINARY','Punctuality',      'No',  0),
(178,20, 9, 'Rate the teacher''s subject knowledge.',           'SLIDER','Teaching Quality', '40', 40),
(179,20, 11,'The teacher treats all students with respect.',    'LIKERT','Fairness',         '2', 40),
(180,20, 15,'Additional comments.',                             'TEXT',  'General',          'Class feels rushed and incomplete each session.',NULL);

-- ── HIGH: Responses 21-30 (lubna.zahoor, EE) ─────────────────
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(181,21,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(182,21,2,'Rate communication.','SLIDER','Communication','92',92),
(183,21,3,'Fair grading.','LIKERT','Fairness','5',100),
(184,21,4,'Engages students.','LIKERT','Engagement','5',100),
(185,21,5,'Content relevant.','LIKERT','Content','5',100),
(186,21,6,'On time.','BINARY','Punctuality','Yes',100),
(187,21,9,'Subject knowledge.','SLIDER','Teaching Quality','94',94),
(188,21,11,'Treats with respect.','LIKERT','Fairness','5',100),
(189,21,15,'Comments.','TEXT','General','Superb command of circuit theory.',NULL);

INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(190,22,1,'Explains concepts.','LIKERT','Teaching Quality','5',100),(191,22,2,'Communication.','SLIDER','Communication','88',88),(192,22,3,'Fair grading.','LIKERT','Fairness','4',80),(193,22,4,'Engages students.','LIKERT','Engagement','5',100),(194,22,5,'Content relevant.','LIKERT','Content','5',100),(195,22,6,'On time.','BINARY','Punctuality','Yes',100),(196,22,9,'Knowledge.','SLIDER','Teaching Quality','91',91),(197,22,11,'Respect.','LIKERT','Fairness','5',100),(198,22,15,'Comments.','TEXT','General','Excellent practical demonstrations.',NULL);

INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(199,23,1,'Explains concepts.','LIKERT','Teaching Quality','4',80),(200,23,2,'Communication.','SLIDER','Communication','86',86),(201,23,3,'Fairness.','LIKERT','Fairness','5',100),(202,23,4,'Engagement.','LIKERT','Engagement','4',80),(203,23,5,'Content.','LIKERT','Content','4',80),(204,23,6,'On time.','BINARY','Punctuality','Yes',100),(205,23,9,'Knowledge.','SLIDER','Teaching Quality','89',89),(206,23,11,'Respect.','LIKERT','Fairness','4',80),(207,23,15,'Comments.','TEXT','General','Good use of lab exercises.',NULL);

INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(208,24,1,'Explains clearly.','LIKERT','Teaching Quality','5',100),(209,24,2,'Communication.','SLIDER','Communication','90',90),(210,24,3,'Fairness.','LIKERT','Fairness','5',100),(211,24,4,'Engagement.','LIKERT','Engagement','5',100),(212,24,5,'Content.','LIKERT','Content','5',100),(213,24,6,'On time.','BINARY','Punctuality','Yes',100),(214,24,9,'Knowledge.','SLIDER','Teaching Quality','93',93),(215,24,11,'Respect.','LIKERT','Fairness','5',100),(216,24,15,'Comments.','TEXT','General','Always prepared and enthusiastic.',NULL);

INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(217,25,1,'Explains clearly.','LIKERT','Teaching Quality','5',100),(218,25,2,'Communication.','SLIDER','Communication','87',87),(219,25,3,'Fairness.','LIKERT','Fairness','4',80),(220,25,4,'Engagement.','LIKERT','Engagement','5',100),(221,25,5,'Content.','LIKERT','Content','4',80),(222,25,6,'On time.','BINARY','Punctuality','Yes',100),(223,25,9,'Knowledge.','SLIDER','Teaching Quality','90',90),(224,25,11,'Respect.','LIKERT','Fairness','5',100),(225,25,15,'Comments.','TEXT','General','Complex topics made easy to grasp.',NULL);

INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(226,26,1,'Clarity.','LIKERT','Teaching Quality','4',80),(227,26,2,'Communication.','SLIDER','Communication','88',88),(228,26,3,'Fairness.','LIKERT','Fairness','5',100),(229,26,4,'Engagement.','LIKERT','Engagement','4',80),(230,26,5,'Content.','LIKERT','Content','5',100),(231,26,6,'On time.','BINARY','Punctuality','Yes',100),(232,26,9,'Knowledge.','SLIDER','Teaching Quality','92',92),(233,26,11,'Respect.','LIKERT','Fairness','5',100),(234,26,15,'Comments.','TEXT','General','Responsive to student needs.',NULL);

INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(235,27,1,'Clarity.','LIKERT','Teaching Quality','5',100),(236,27,2,'Communication.','SLIDER','Communication','95',95),(237,27,3,'Fairness.','LIKERT','Fairness','5',100),(238,27,4,'Engagement.','LIKERT','Engagement','5',100),(239,27,5,'Content.','LIKERT','Content','5',100),(240,27,6,'On time.','BINARY','Punctuality','Yes',100),(241,27,9,'Knowledge.','SLIDER','Teaching Quality','96',96),(242,27,11,'Respect.','LIKERT','Fairness','5',100),(243,27,15,'Comments.','TEXT','General','One of the most inspiring teachers I have met.',NULL);

INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(244,28,1,'Clarity.','LIKERT','Teaching Quality','4',80),(245,28,2,'Communication.','SLIDER','Communication','89',89),(246,28,3,'Fairness.','LIKERT','Fairness','4',80),(247,28,4,'Engagement.','LIKERT','Engagement','5',100),(248,28,5,'Content.','LIKERT','Content','4',80),(249,28,6,'On time.','BINARY','Punctuality','Yes',100),(250,28,9,'Knowledge.','SLIDER','Teaching Quality','91',91),(251,28,11,'Respect.','LIKERT','Fairness','4',80),(252,28,15,'Comments.','TEXT','General','Very helpful during office hours.',NULL);

INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(253,29,1,'Clarity.','LIKERT','Teaching Quality','5',100),(254,29,2,'Communication.','SLIDER','Communication','87',87),(255,29,3,'Fairness.','LIKERT','Fairness','5',100),(256,29,4,'Engagement.','LIKERT','Engagement','4',80),(257,29,5,'Content.','LIKERT','Content','5',100),(258,29,6,'On time.','BINARY','Punctuality','Yes',100),(259,29,9,'Knowledge.','SLIDER','Teaching Quality','88',88),(260,29,11,'Respect.','LIKERT','Fairness','5',100),(261,29,15,'Comments.','TEXT','General','Excellent course delivery.',NULL);

INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(262,30,1,'Clarity.','LIKERT','Teaching Quality','5',100),(263,30,2,'Communication.','SLIDER','Communication','93',93),(264,30,3,'Fairness.','LIKERT','Fairness','5',100),(265,30,4,'Engagement.','LIKERT','Engagement','5',100),(266,30,5,'Content.','LIKERT','Content','5',100),(267,30,6,'On time.','BINARY','Punctuality','Yes',100),(268,30,9,'Knowledge.','SLIDER','Teaching Quality','95',95),(269,30,11,'Respect.','LIKERT','Fairness','5',100),(270,30,15,'Comments.','TEXT','General','Sets the gold standard for EE instruction.',NULL);

-- ── AT RISK: Responses 31-40 (tahir.nawaz, EE) ───────────────
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(271,31,1,'Clarity.','LIKERT','Teaching Quality','2',40),(272,31,2,'Communication.','SLIDER','Communication','34',34),(273,31,3,'Fairness.','LIKERT','Fairness','2',40),(274,31,4,'Engagement.','LIKERT','Engagement','1',20),(275,31,5,'Content.','LIKERT','Content','2',40),(276,31,6,'On time.','BINARY','Punctuality','No',0),(277,31,9,'Knowledge.','SLIDER','Teaching Quality','38',38),(278,31,11,'Respect.','LIKERT','Fairness','2',40),(279,31,15,'Comments.','TEXT','General','Rarely finishes planned material in class.',NULL);

INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(280,32,1,'Clarity.','LIKERT','Teaching Quality','1',20),(281,32,2,'Communication.','SLIDER','Communication','31',31),(282,32,3,'Fairness.','LIKERT','Fairness','1',20),(283,32,4,'Engagement.','LIKERT','Engagement','2',40),(284,32,5,'Content.','LIKERT','Content','1',20),(285,32,6,'On time.','BINARY','Punctuality','No',0),(286,32,9,'Knowledge.','SLIDER','Teaching Quality','36',36),(287,32,11,'Respect.','LIKERT','Fairness','1',20),(288,32,15,'Comments.','TEXT','General','Lectures are mostly reading from slides.',NULL);

INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(289,33,1,'Clarity.','LIKERT','Teaching Quality','2',40),(290,33,2,'Communication.','SLIDER','Communication','33',33),(291,33,3,'Fairness.','LIKERT','Fairness','2',40),(292,33,4,'Engagement.','LIKERT','Engagement','1',20),(293,33,5,'Content.','LIKERT','Content','2',40),(294,33,6,'On time.','BINARY','Punctuality','No',0),(295,33,9,'Knowledge.','SLIDER','Teaching Quality','40',40),(296,33,11,'Respect.','LIKERT','Fairness','2',40),(297,33,15,'Comments.','TEXT','General','Very little student interaction during lectures.',NULL);

INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(298,34,1,'Clarity.','LIKERT','Teaching Quality','2',40),(299,34,2,'Communication.','SLIDER','Communication','35',35),(300,34,3,'Fairness.','LIKERT','Fairness','2',40),(301,34,4,'Engagement.','LIKERT','Engagement','2',40),(302,34,5,'Content.','LIKERT','Content','2',40),(303,34,6,'On time.','BINARY','Punctuality','No',0),(304,34,9,'Knowledge.','SLIDER','Teaching Quality','42',42),(305,34,11,'Respect.','LIKERT','Fairness','2',40),(306,34,15,'Comments.','TEXT','General','Assignments returned very late with no comments.',NULL);

INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(307,35,1,'Clarity.','LIKERT','Teaching Quality','1',20),(308,35,2,'Communication.','SLIDER','Communication','30',30),(309,35,3,'Fairness.','LIKERT','Fairness','2',40),(310,35,4,'Engagement.','LIKERT','Engagement','1',20),(311,35,5,'Content.','LIKERT','Content','1',20),(312,35,6,'On time.','BINARY','Punctuality','No',0),(313,35,9,'Knowledge.','SLIDER','Teaching Quality','35',35),(314,35,11,'Respect.','LIKERT','Fairness','1',20),(315,35,15,'Comments.','TEXT','General','Urgent attention needed for this section.',NULL);

INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(316,36,1,'Clarity.','LIKERT','Teaching Quality','2',40),(317,36,2,'Communication.','SLIDER','Communication','36',36),(318,36,3,'Fairness.','LIKERT','Fairness','2',40),(319,36,4,'Engagement.','LIKERT','Engagement','2',40),(320,36,5,'Content.','LIKERT','Content','2',40),(321,36,6,'On time.','BINARY','Punctuality','No',0),(322,36,9,'Knowledge.','SLIDER','Teaching Quality','41',41),(323,36,11,'Respect.','LIKERT','Fairness','2',40),(324,36,15,'Comments.','TEXT','General','Lacks enthusiasm and preparation.',NULL);

INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(325,37,1,'Clarity.','LIKERT','Teaching Quality','2',40),(326,37,2,'Communication.','SLIDER','Communication','32',32),(327,37,3,'Fairness.','LIKERT','Fairness','1',20),(328,37,4,'Engagement.','LIKERT','Engagement','2',40),(329,37,5,'Content.','LIKERT','Content','2',40),(330,37,6,'On time.','BINARY','Punctuality','No',0),(331,37,9,'Knowledge.','SLIDER','Teaching Quality','37',37),(332,37,11,'Respect.','LIKERT','Fairness','2',40),(333,37,15,'Comments.','TEXT','General','Grading inconsistency is a major concern.',NULL);

INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(334,38,1,'Clarity.','LIKERT','Teaching Quality','1',20),(335,38,2,'Communication.','SLIDER','Communication','29',29),(336,38,3,'Fairness.','LIKERT','Fairness','2',40),(337,38,4,'Engagement.','LIKERT','Engagement','1',20),(338,38,5,'Content.','LIKERT','Content','1',20),(339,38,6,'On time.','BINARY','Punctuality','No',0),(340,38,9,'Knowledge.','SLIDER','Teaching Quality','33',33),(341,38,11,'Respect.','LIKERT','Fairness','1',20),(342,38,15,'Comments.','TEXT','General','Students frequently leave confused after lecture.',NULL);

INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(343,39,1,'Clarity.','LIKERT','Teaching Quality','2',40),(344,39,2,'Communication.','SLIDER','Communication','38',38),(345,39,3,'Fairness.','LIKERT','Fairness','2',40),(346,39,4,'Engagement.','LIKERT','Engagement','2',40),(347,39,5,'Content.','LIKERT','Content','2',40),(348,39,6,'On time.','BINARY','Punctuality','No',0),(349,39,9,'Knowledge.','SLIDER','Teaching Quality','43',43),(350,39,11,'Respect.','LIKERT','Fairness','2',40),(351,39,15,'Comments.','TEXT','General','Needs mentoring and professional development.',NULL);

INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(352,40,1,'Clarity.','LIKERT','Teaching Quality','2',40),(353,40,2,'Communication.','SLIDER','Communication','35',35),(354,40,3,'Fairness.','LIKERT','Fairness','2',40),(355,40,4,'Engagement.','LIKERT','Engagement','1',20),(356,40,5,'Content.','LIKERT','Content','2',40),(357,40,6,'On time.','BINARY','Punctuality','No',0),(358,40,9,'Knowledge.','SLIDER','Teaching Quality','39',39),(359,40,11,'Respect.','LIKERT','Fairness','2',40),(360,40,15,'Comments.','TEXT','General','Repeated poor feedback; intervention recommended.',NULL);

-- ── HIGH: Responses 41-50 (shazia.butt, AI) ──────────────────
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(361,41,1,'Clarity.','LIKERT','Teaching Quality','5',100),(362,41,2,'Communication.','SLIDER','Communication','91',91),(363,41,3,'Fairness.','LIKERT','Fairness','5',100),(364,41,4,'Engagement.','LIKERT','Engagement','5',100),(365,41,5,'Content.','LIKERT','Content','5',100),(366,41,6,'On time.','BINARY','Punctuality','Yes',100),(367,41,9,'Knowledge.','SLIDER','Teaching Quality','93',93),(368,41,11,'Respect.','LIKERT','Fairness','5',100),(369,41,15,'Comments.','TEXT','General','Brilliant at explaining ML theory with intuition.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(370,42,1,'Clarity.','LIKERT','Teaching Quality','5',100),(371,42,2,'Communication.','SLIDER','Communication','89',89),(372,42,3,'Fairness.','LIKERT','Fairness','4',80),(373,42,4,'Engagement.','LIKERT','Engagement','5',100),(374,42,5,'Content.','LIKERT','Content','5',100),(375,42,6,'On time.','BINARY','Punctuality','Yes',100),(376,42,9,'Knowledge.','SLIDER','Teaching Quality','90',90),(377,42,11,'Respect.','LIKERT','Fairness','5',100),(378,42,15,'Comments.','TEXT','General','Makes difficult algorithms accessible.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(379,43,1,'Clarity.','LIKERT','Teaching Quality','4',80),(380,43,2,'Communication.','SLIDER','Communication','87',87),(381,43,3,'Fairness.','LIKERT','Fairness','5',100),(382,43,4,'Engagement.','LIKERT','Engagement','4',80),(383,43,5,'Content.','LIKERT','Content','5',100),(384,43,6,'On time.','BINARY','Punctuality','Yes',100),(385,43,9,'Knowledge.','SLIDER','Teaching Quality','88',88),(386,43,11,'Respect.','LIKERT','Fairness','4',80),(387,43,15,'Comments.','TEXT','General','Up-to-date course material.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(388,44,1,'Clarity.','LIKERT','Teaching Quality','5',100),(389,44,2,'Communication.','SLIDER','Communication','92',92),(390,44,3,'Fairness.','LIKERT','Fairness','5',100),(391,44,4,'Engagement.','LIKERT','Engagement','5',100),(392,44,5,'Content.','LIKERT','Content','4',80),(393,44,6,'On time.','BINARY','Punctuality','Yes',100),(394,44,9,'Knowledge.','SLIDER','Teaching Quality','95',95),(395,44,11,'Respect.','LIKERT','Fairness','5',100),(396,44,15,'Comments.','TEXT','General','Projects are very practical and well-designed.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(397,45,1,'Clarity.','LIKERT','Teaching Quality','5',100),(398,45,2,'Communication.','SLIDER','Communication','90',90),(399,45,3,'Fairness.','LIKERT','Fairness','4',80),(400,45,4,'Engagement.','LIKERT','Engagement','5',100),(401,45,5,'Content.','LIKERT','Content','5',100),(402,45,6,'On time.','BINARY','Punctuality','Yes',100),(403,45,9,'Knowledge.','SLIDER','Teaching Quality','91',91),(404,45,11,'Respect.','LIKERT','Fairness','4',80),(405,45,15,'Comments.','TEXT','General','Passionate about AI and it shows.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(406,46,1,'Clarity.','LIKERT','Teaching Quality','4',80),(407,46,2,'Communication.','SLIDER','Communication','86',86),(408,46,3,'Fairness.','LIKERT','Fairness','5',100),(409,46,4,'Engagement.','LIKERT','Engagement','4',80),(410,46,5,'Content.','LIKERT','Content','4',80),(411,46,6,'On time.','BINARY','Punctuality','Yes',100),(412,46,9,'Knowledge.','SLIDER','Teaching Quality','89',89),(413,46,11,'Respect.','LIKERT','Fairness','5',100),(414,46,15,'Comments.','TEXT','General','Timely feedback on all assignments.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(415,47,1,'Clarity.','LIKERT','Teaching Quality','5',100),(416,47,2,'Communication.','SLIDER','Communication','94',94),(417,47,3,'Fairness.','LIKERT','Fairness','5',100),(418,47,4,'Engagement.','LIKERT','Engagement','5',100),(419,47,5,'Content.','LIKERT','Content','5',100),(420,47,6,'On time.','BINARY','Punctuality','Yes',100),(421,47,9,'Knowledge.','SLIDER','Teaching Quality','96',96),(422,47,11,'Respect.','LIKERT','Fairness','5',100),(423,47,15,'Comments.','TEXT','General','World-class teaching in AI fundamentals.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(424,48,1,'Clarity.','LIKERT','Teaching Quality','4',80),(425,48,2,'Communication.','SLIDER','Communication','88',88),(426,48,3,'Fairness.','LIKERT','Fairness','4',80),(427,48,4,'Engagement.','LIKERT','Engagement','5',100),(428,48,5,'Content.','LIKERT','Content','4',80),(429,48,6,'On time.','BINARY','Punctuality','Yes',100),(430,48,9,'Knowledge.','SLIDER','Teaching Quality','90',90),(431,48,11,'Respect.','LIKERT','Fairness','4',80),(432,48,15,'Comments.','TEXT','General','Good at connecting theory to applications.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(433,49,1,'Clarity.','LIKERT','Teaching Quality','5',100),(434,49,2,'Communication.','SLIDER','Communication','87',87),(435,49,3,'Fairness.','LIKERT','Fairness','5',100),(436,49,4,'Engagement.','LIKERT','Engagement','4',80),(437,49,5,'Content.','LIKERT','Content','5',100),(438,49,6,'On time.','BINARY','Punctuality','Yes',100),(439,49,9,'Knowledge.','SLIDER','Teaching Quality','92',92),(440,49,11,'Respect.','LIKERT','Fairness','5',100),(441,49,15,'Comments.','TEXT','General','Great resource recommendations.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(442,50,1,'Clarity.','LIKERT','Teaching Quality','5',100),(443,50,2,'Communication.','SLIDER','Communication','93',93),(444,50,3,'Fairness.','LIKERT','Fairness','5',100),(445,50,4,'Engagement.','LIKERT','Engagement','5',100),(446,50,5,'Content.','LIKERT','Content','5',100),(447,50,6,'On time.','BINARY','Punctuality','Yes',100),(448,50,9,'Knowledge.','SLIDER','Teaching Quality','94',94),(449,50,11,'Respect.','LIKERT','Fairness','5',100),(450,50,15,'Comments.','TEXT','General','Highly accomplished educator in AI.',NULL);

-- ── AT RISK: Responses 51-60 (danish.murtaza, AI) ────────────
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(451,51,1,'Clarity.','LIKERT','Teaching Quality','2',40),
(452,51,2,'Communication.','SLIDER','Communication','33',33),
(453,51,3,'Fairness.','LIKERT','Fairness','2',40),
(454,51,4,'Engagement.','LIKERT','Engagement','1',20),
(455,51,5,'Content.','LIKERT','Content','2',40),
(456,51,6,'On time.','BINARY','Punctuality','No',0),
(457,51,9,'Knowledge.','SLIDER','Teaching Quality','37',37),
(458,51,11,'Respect.','LIKERT','Fairness','2',40),
(459,51,15,'Comments.','TEXT','General','Topics not explained well, students struggle.',NULL);

INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(460,52,1,'Clarity.','LIKERT','Teaching Quality','1',20),
(461,52,2,'Communication.','SLIDER','Communication','30',30),
(462,52,3,'Fairness.','LIKERT','Fairness','1',20),
(463,52,4,'Engagement.','LIKERT','Engagement','2',40),
(464,52,5,'Content.','LIKERT','Content','1',20),
(465,52,6,'On time.','BINARY','Punctuality','No',0),
(466,52,9,'Knowledge.','SLIDER','Teaching Quality','34',34),
(467,52,11,'Respect.','LIKERT','Fairness','1',20),
(468,52,15,'Comments.','TEXT','General','Not suitable for undergraduate teaching.',NULL);

INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(469,53,1,'Clarity.','LIKERT','Teaching Quality','2',40),(470,53,2,'Communication.','SLIDER','Communication','36',36),(471,53,3,'Fairness.','LIKERT','Fairness','2',40),(472,53,4,'Engagement.','LIKERT','Engagement','1',20),(473,53,5,'Content.','LIKERT','Content','2',40),(474,53,6,'On time.','BINARY','Punctuality','No',0),(475,53,9,'Knowledge.','SLIDER','Teaching Quality','40',40),(476,53,11,'Respect.','LIKERT','Fairness','2',40),(477,53,15,'Comments.','TEXT','General','Needs more interactive teaching techniques.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(478,54,1,'Clarity.','LIKERT','Teaching Quality','2',40),(479,54,2,'Communication.','SLIDER','Communication','32',32),(480,54,3,'Fairness.','LIKERT','Fairness','2',40),(481,54,4,'Engagement.','LIKERT','Engagement','2',40),(482,54,5,'Content.','LIKERT','Content','2',40),(483,54,6,'On time.','BINARY','Punctuality','No',0),(484,54,9,'Knowledge.','SLIDER','Teaching Quality','38',38),(485,54,11,'Respect.','LIKERT','Fairness','2',40),(486,54,15,'Comments.','TEXT','General','Assessment criteria unclear and inconsistent.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(487,55,1,'Clarity.','LIKERT','Teaching Quality','1',20),(488,55,2,'Communication.','SLIDER','Communication','28',28),(489,55,3,'Fairness.','LIKERT','Fairness','1',20),(490,55,4,'Engagement.','LIKERT','Engagement','1',20),(491,55,5,'Content.','LIKERT','Content','2',40),(492,55,6,'On time.','BINARY','Punctuality','No',0),(493,55,9,'Knowledge.','SLIDER','Teaching Quality','32',32),(494,55,11,'Respect.','LIKERT','Fairness','1',20),(495,55,15,'Comments.','TEXT','General','Multiple students dropped the course mid-semester.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(496,56,1,'Clarity.','LIKERT','Teaching Quality','2',40),(497,56,2,'Communication.','SLIDER','Communication','34',34),(498,56,3,'Fairness.','LIKERT','Fairness','2',40),(499,56,4,'Engagement.','LIKERT','Engagement','2',40),(500,56,5,'Content.','LIKERT','Content','1',20),(501,56,6,'On time.','BINARY','Punctuality','No',0),(502,56,9,'Knowledge.','SLIDER','Teaching Quality','41',41),(503,56,11,'Respect.','LIKERT','Fairness','2',40),(504,56,15,'Comments.','TEXT','General','Poor classroom management.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(505,57,1,'Clarity.','LIKERT','Teaching Quality','2',40),(506,57,2,'Communication.','SLIDER','Communication','37',37),(507,57,3,'Fairness.','LIKERT','Fairness','2',40),(508,57,4,'Engagement.','LIKERT','Engagement','1',20),(509,57,5,'Content.','LIKERT','Content','2',40),(510,57,6,'On time.','BINARY','Punctuality','No',0),(511,57,9,'Knowledge.','SLIDER','Teaching Quality','43',43),(512,57,11,'Respect.','LIKERT','Fairness','2',40),(513,57,15,'Comments.','TEXT','General','Would not recommend this section to peers.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(514,58,1,'Clarity.','LIKERT','Teaching Quality','1',20),(515,58,2,'Communication.','SLIDER','Communication','31',31),(516,58,3,'Fairness.','LIKERT','Fairness','2',40),(517,58,4,'Engagement.','LIKERT','Engagement','1',20),(518,58,5,'Content.','LIKERT','Content','1',20),(519,58,6,'On time.','BINARY','Punctuality','No',0),(520,58,9,'Knowledge.','SLIDER','Teaching Quality','35',35),(521,58,11,'Respect.','LIKERT','Fairness','1',20),(522,58,15,'Comments.','TEXT','General','Significant issues with student satisfaction.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(523,59,1,'Clarity.','LIKERT','Teaching Quality','2',40),(524,59,2,'Communication.','SLIDER','Communication','36',36),(525,59,3,'Fairness.','LIKERT','Fairness','2',40),(526,59,4,'Engagement.','LIKERT','Engagement','2',40),(527,59,5,'Content.','LIKERT','Content','2',40),(528,59,6,'On time.','BINARY','Punctuality','No',0),(529,59,9,'Knowledge.','SLIDER','Teaching Quality','44',44),(530,59,11,'Respect.','LIKERT','Fairness','2',40),(531,59,15,'Comments.','TEXT','General','Mentoring strongly advised.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(532,60,1,'Clarity.','LIKERT','Teaching Quality','2',40),(533,60,2,'Communication.','SLIDER','Communication','33',33),(534,60,3,'Fairness.','LIKERT','Fairness','1',20),(535,60,4,'Engagement.','LIKERT','Engagement','2',40),(536,60,5,'Content.','LIKERT','Content','2',40),(537,60,6,'On time.','BINARY','Punctuality','No',0),(538,60,9,'Knowledge.','SLIDER','Teaching Quality','39',39),(539,60,11,'Respect.','LIKERT','Fairness','2',40),(540,60,15,'Comments.','TEXT','General','Students consistently report dissatisfaction.',NULL);

-- ── HIGH: Responses 61-70 (uzma.latif, DS) ───────────────────
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(541,61,1,'Clarity.','LIKERT','Teaching Quality','5',100),(542,61,2,'Communication.','SLIDER','Communication','90',90),(543,61,3,'Fairness.','LIKERT','Fairness','5',100),(544,61,4,'Engagement.','LIKERT','Engagement','5',100),(545,61,5,'Content.','LIKERT','Content','5',100),(546,61,6,'On time.','BINARY','Punctuality','Yes',100),(547,61,9,'Knowledge.','SLIDER','Teaching Quality','92',92),(548,61,11,'Respect.','LIKERT','Fairness','5',100),(549,61,15,'Comments.','TEXT','General','Excellent hands-on data projects.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(550,62,1,'Clarity.','LIKERT','Teaching Quality','5',100),(551,62,2,'Communication.','SLIDER','Communication','88',88),(552,62,3,'Fairness.','LIKERT','Fairness','4',80),(553,62,4,'Engagement.','LIKERT','Engagement','5',100),(554,62,5,'Content.','LIKERT','Content','5',100),(555,62,6,'On time.','BINARY','Punctuality','Yes',100),(556,62,9,'Knowledge.','SLIDER','Teaching Quality','91',91),(557,62,11,'Respect.','LIKERT','Fairness','5',100),(558,62,15,'Comments.','TEXT','General','Strong coverage of Python data tools.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(559,63,1,'Clarity.','LIKERT','Teaching Quality','4',80),(560,63,2,'Communication.','SLIDER','Communication','87',87),(561,63,3,'Fairness.','LIKERT','Fairness','5',100),(562,63,4,'Engagement.','LIKERT','Engagement','4',80),(563,63,5,'Content.','LIKERT','Content','4',80),(564,63,6,'On time.','BINARY','Punctuality','Yes',100),(565,63,9,'Knowledge.','SLIDER','Teaching Quality','89',89),(566,63,11,'Respect.','LIKERT','Fairness','4',80),(567,63,15,'Comments.','TEXT','General','Helpful and approachable.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(568,64,1,'Clarity.','LIKERT','Teaching Quality','5',100),(569,64,2,'Communication.','SLIDER','Communication','93',93),(570,64,3,'Fairness.','LIKERT','Fairness','5',100),(571,64,4,'Engagement.','LIKERT','Engagement','5',100),(572,64,5,'Content.','LIKERT','Content','5',100),(573,64,6,'On time.','BINARY','Punctuality','Yes',100),(574,64,9,'Knowledge.','SLIDER','Teaching Quality','95',95),(575,64,11,'Respect.','LIKERT','Fairness','5',100),(576,64,15,'Comments.','TEXT','General','Industry-relevant curriculum and examples.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(577,65,1,'Clarity.','LIKERT','Teaching Quality','5',100),(578,65,2,'Communication.','SLIDER','Communication','86',86),(579,65,3,'Fairness.','LIKERT','Fairness','4',80),(580,65,4,'Engagement.','LIKERT','Engagement','5',100),(581,65,5,'Content.','LIKERT','Content','4',80),(582,65,6,'On time.','BINARY','Punctuality','Yes',100),(583,65,9,'Knowledge.','SLIDER','Teaching Quality','90',90),(584,65,11,'Respect.','LIKERT','Fairness','4',80),(585,65,15,'Comments.','TEXT','General','Great feedback on data wrangling tasks.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(586,66,1,'Clarity.','LIKERT','Teaching Quality','4',80),(587,66,2,'Communication.','SLIDER','Communication','89',89),(588,66,3,'Fairness.','LIKERT','Fairness','5',100),(589,66,4,'Engagement.','LIKERT','Engagement','4',80),(590,66,5,'Content.','LIKERT','Content','5',100),(591,66,6,'On time.','BINARY','Punctuality','Yes',100),(592,66,9,'Knowledge.','SLIDER','Teaching Quality','88',88),(593,66,11,'Respect.','LIKERT','Fairness','5',100),(594,66,15,'Comments.','TEXT','General','Encourages critical thinking in data analysis.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(595,67,1,'Clarity.','LIKERT','Teaching Quality','5',100),(596,67,2,'Communication.','SLIDER','Communication','92',92),(597,67,3,'Fairness.','LIKERT','Fairness','5',100),(598,67,4,'Engagement.','LIKERT','Engagement','5',100),(599,67,5,'Content.','LIKERT','Content','5',100),(600,67,6,'On time.','BINARY','Punctuality','Yes',100),(601,67,9,'Knowledge.','SLIDER','Teaching Quality','94',94),(602,67,11,'Respect.','LIKERT','Fairness','5',100),(603,67,15,'Comments.','TEXT','General','Top-tier data science instructor.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(604,68,1,'Clarity.','LIKERT','Teaching Quality','4',80),(605,68,2,'Communication.','SLIDER','Communication','87',87),(606,68,3,'Fairness.','LIKERT','Fairness','4',80),(607,68,4,'Engagement.','LIKERT','Engagement','5',100),(608,68,5,'Content.','LIKERT','Content','4',80),(609,68,6,'On time.','BINARY','Punctuality','Yes',100),(610,68,9,'Knowledge.','SLIDER','Teaching Quality','90',90),(611,68,11,'Respect.','LIKERT','Fairness','4',80),(612,68,15,'Comments.','TEXT','General','Patient and supportive mentor.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(613,69,1,'Clarity.','LIKERT','Teaching Quality','5',100),(614,69,2,'Communication.','SLIDER','Communication','91',91),(615,69,3,'Fairness.','LIKERT','Fairness','5',100),(616,69,4,'Engagement.','LIKERT','Engagement','4',80),(617,69,5,'Content.','LIKERT','Content','5',100),(618,69,6,'On time.','BINARY','Punctuality','Yes',100),(619,69,9,'Knowledge.','SLIDER','Teaching Quality','93',93),(620,69,11,'Respect.','LIKERT','Fairness','5',100),(621,69,15,'Comments.','TEXT','General','Excellent coverage of statistical methods.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(622,70,1,'Clarity.','LIKERT','Teaching Quality','5',100),(623,70,2,'Communication.','SLIDER','Communication','90',90),(624,70,3,'Fairness.','LIKERT','Fairness','5',100),(625,70,4,'Engagement.','LIKERT','Engagement','5',100),(626,70,5,'Content.','LIKERT','Content','5',100),(627,70,6,'On time.','BINARY','Punctuality','Yes',100),(628,70,9,'Knowledge.','SLIDER','Teaching Quality','96',96),(629,70,11,'Respect.','LIKERT','Fairness','5',100),(630,70,15,'Comments.','TEXT','General','A model for what DS education should be.',NULL);

-- ── AT RISK: Responses 71-80 (sajid.manzoor, DS) ─────────────
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(631,71,1,'Clarity.','LIKERT','Teaching Quality','2',40),(632,71,2,'Communication.','SLIDER','Communication','34',34),(633,71,3,'Fairness.','LIKERT','Fairness','2',40),(634,71,4,'Engagement.','LIKERT','Engagement','1',20),(635,71,5,'Content.','LIKERT','Content','2',40),(636,71,6,'On time.','BINARY','Punctuality','No',0),(637,71,9,'Knowledge.','SLIDER','Teaching Quality','39',39),(638,71,11,'Respect.','LIKERT','Fairness','2',40),(639,71,15,'Comments.','TEXT','General','No continuity between lectures.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(640,72,1,'Clarity.','LIKERT','Teaching Quality','1',20),(641,72,2,'Communication.','SLIDER','Communication','31',31),(642,72,3,'Fairness.','LIKERT','Fairness','2',40),(643,72,4,'Engagement.','LIKERT','Engagement','1',20),(644,72,5,'Content.','LIKERT','Content','1',20),(645,72,6,'On time.','BINARY','Punctuality','No',0),(646,72,9,'Knowledge.','SLIDER','Teaching Quality','36',36),(647,72,11,'Respect.','LIKERT','Fairness','1',20),(648,72,15,'Comments.','TEXT','General','Content feels recycled and outdated.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(649,73,1,'Clarity.','LIKERT','Teaching Quality','2',40),(650,73,2,'Communication.','SLIDER','Communication','35',35),(651,73,3,'Fairness.','LIKERT','Fairness','2',40),(652,73,4,'Engagement.','LIKERT','Engagement','2',40),(653,73,5,'Content.','LIKERT','Content','2',40),(654,73,6,'On time.','BINARY','Punctuality','No',0),(655,73,9,'Knowledge.','SLIDER','Teaching Quality','41',41),(656,73,11,'Respect.','LIKERT','Fairness','2',40),(657,73,15,'Comments.','TEXT','General','Datasets used are irrelevant to curriculum.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(658,74,1,'Clarity.','LIKERT','Teaching Quality','2',40),(659,74,2,'Communication.','SLIDER','Communication','33',33),(660,74,3,'Fairness.','LIKERT','Fairness','1',20),(661,74,4,'Engagement.','LIKERT','Engagement','2',40),(662,74,5,'Content.','LIKERT','Content','2',40),(663,74,6,'On time.','BINARY','Punctuality','No',0),(664,74,9,'Knowledge.','SLIDER','Teaching Quality','38',38),(665,74,11,'Respect.','LIKERT','Fairness','2',40),(666,74,15,'Comments.','TEXT','General','Reluctant to answer student queries.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(667,75,1,'Clarity.','LIKERT','Teaching Quality','1',20),(668,75,2,'Communication.','SLIDER','Communication','29',29),(669,75,3,'Fairness.','LIKERT','Fairness','1',20),(670,75,4,'Engagement.','LIKERT','Engagement','1',20),(671,75,5,'Content.','LIKERT','Content','1',20),(672,75,6,'On time.','BINARY','Punctuality','No',0),(673,75,9,'Knowledge.','SLIDER','Teaching Quality','33',33),(674,75,11,'Respect.','LIKERT','Fairness','1',20),(675,75,15,'Comments.','TEXT','General','Worst learning experience in the program.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(676,76,1,'Clarity.','LIKERT','Teaching Quality','2',40),(677,76,2,'Communication.','SLIDER','Communication','36',36),(678,76,3,'Fairness.','LIKERT','Fairness','2',40),(679,76,4,'Engagement.','LIKERT','Engagement','2',40),(680,76,5,'Content.','LIKERT','Content','2',40),(681,76,6,'On time.','BINARY','Punctuality','No',0),(682,76,9,'Knowledge.','SLIDER','Teaching Quality','42',42),(683,76,11,'Respect.','LIKERT','Fairness','2',40),(684,76,15,'Comments.','TEXT','General','Teaching methodology needs full revision.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(685,77,1,'Clarity.','LIKERT','Teaching Quality','2',40),(686,77,2,'Communication.','SLIDER','Communication','32',32),(687,77,3,'Fairness.','LIKERT','Fairness','2',40),(688,77,4,'Engagement.','LIKERT','Engagement','1',20),(689,77,5,'Content.','LIKERT','Content','2',40),(690,77,6,'On time.','BINARY','Punctuality','No',0),(691,77,9,'Knowledge.','SLIDER','Teaching Quality','37',37),(692,77,11,'Respect.','LIKERT','Fairness','2',40),(693,77,15,'Comments.','TEXT','General','Students feel unsupported throughout the course.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(694,78,1,'Clarity.','LIKERT','Teaching Quality','1',20),(695,78,2,'Communication.','SLIDER','Communication','30',30),(696,78,3,'Fairness.','LIKERT','Fairness','2',40),(697,78,4,'Engagement.','LIKERT','Engagement','1',20),(698,78,5,'Content.','LIKERT','Content','2',40),(699,78,6,'On time.','BINARY','Punctuality','No',0),(700,78,9,'Knowledge.','SLIDER','Teaching Quality','35',35),(701,78,11,'Respect.','LIKERT','Fairness','1',20),(702,78,15,'Comments.','TEXT','General','Consistently poor performance across all metrics.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(703,79,1,'Clarity.','LIKERT','Teaching Quality','2',40),(704,79,2,'Communication.','SLIDER','Communication','34',34),(705,79,3,'Fairness.','LIKERT','Fairness','2',40),(706,79,4,'Engagement.','LIKERT','Engagement','2',40),(707,79,5,'Content.','LIKERT','Content','1',20),(708,79,6,'On time.','BINARY','Punctuality','No',0),(709,79,9,'Knowledge.','SLIDER','Teaching Quality','40',40),(710,79,11,'Respect.','LIKERT','Fairness','2',40),(711,79,15,'Comments.','TEXT','General','HOD review of this section is recommended.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(712,80,1,'Clarity.','LIKERT','Teaching Quality','2',40),(713,80,2,'Communication.','SLIDER','Communication','38',38),(714,80,3,'Fairness.','LIKERT','Fairness','2',40),(715,80,4,'Engagement.','LIKERT','Engagement','2',40),(716,80,5,'Content.','LIKERT','Content','2',40),(717,80,6,'On time.','BINARY','Punctuality','No',0),(718,80,9,'Knowledge.','SLIDER','Teaching Quality','44',44),(719,80,11,'Respect.','LIKERT','Fairness','2',40),(720,80,15,'Comments.','TEXT','General','Immediate corrective action is required.',NULL);

-- ── HIGH: Responses 81-90 (rukhsana.toor, CY) ────────────────
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(721,81,1,'Clarity.','LIKERT','Teaching Quality','5',100),(722,81,2,'Communication.','SLIDER','Communication','91',91),(723,81,3,'Fairness.','LIKERT','Fairness','5',100),(724,81,4,'Engagement.','LIKERT','Engagement','5',100),(725,81,5,'Content.','LIKERT','Content','5',100),(726,81,6,'On time.','BINARY','Punctuality','Yes',100),(727,81,9,'Knowledge.','SLIDER','Teaching Quality','93',93),(728,81,11,'Respect.','LIKERT','Fairness','5',100),(729,81,15,'Comments.','TEXT','General','Hands-on network security labs are excellent.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(730,82,1,'Clarity.','LIKERT','Teaching Quality','5',100),(731,82,2,'Communication.','SLIDER','Communication','89',89),(732,82,3,'Fairness.','LIKERT','Fairness','4',80),(733,82,4,'Engagement.','LIKERT','Engagement','5',100),(734,82,5,'Content.','LIKERT','Content','5',100),(735,82,6,'On time.','BINARY','Punctuality','Yes',100),(736,82,9,'Knowledge.','SLIDER','Teaching Quality','90',90),(737,82,11,'Respect.','LIKERT','Fairness','5',100),(738,82,15,'Comments.','TEXT','General','CTF challenges add great practical value.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(739,83,1,'Clarity.','LIKERT','Teaching Quality','4',80),(740,83,2,'Communication.','SLIDER','Communication','87',87),(741,83,3,'Fairness.','LIKERT','Fairness','5',100),(742,83,4,'Engagement.','LIKERT','Engagement','4',80),(743,83,5,'Content.','LIKERT','Content','4',80),(744,83,6,'On time.','BINARY','Punctuality','Yes',100),(745,83,9,'Knowledge.','SLIDER','Teaching Quality','89',89),(746,83,11,'Respect.','LIKERT','Fairness','4',80),(747,83,15,'Comments.','TEXT','General','Course is well-paced and comprehensive.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(748,84,1,'Clarity.','LIKERT','Teaching Quality','5',100),(749,84,2,'Communication.','SLIDER','Communication','94',94),(750,84,3,'Fairness.','LIKERT','Fairness','5',100),(751,84,4,'Engagement.','LIKERT','Engagement','5',100),(752,84,5,'Content.','LIKERT','Content','5',100),(753,84,6,'On time.','BINARY','Punctuality','Yes',100),(754,84,9,'Knowledge.','SLIDER','Teaching Quality','95',95),(755,84,11,'Respect.','LIKERT','Fairness','5',100),(756,84,15,'Comments.','TEXT','General','Constantly updated content with latest threats.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(757,85,1,'Clarity.','LIKERT','Teaching Quality','4',80),(758,85,2,'Communication.','SLIDER','Communication','88',88),(759,85,3,'Fairness.','LIKERT','Fairness','4',80),(760,85,4,'Engagement.','LIKERT','Engagement','5',100),(761,85,5,'Content.','LIKERT','Content','4',80),(762,85,6,'On time.','BINARY','Punctuality','Yes',100),(763,85,9,'Knowledge.','SLIDER','Teaching Quality','91',91),(764,85,11,'Respect.','LIKERT','Fairness','4',80),(765,85,15,'Comments.','TEXT','General','Firewall and IDS labs are very insightful.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(766,86,1,'Clarity.','LIKERT','Teaching Quality','5',100),(767,86,2,'Communication.','SLIDER','Communication','92',92),(768,86,3,'Fairness.','LIKERT','Fairness','5',100),(769,86,4,'Engagement.','LIKERT','Engagement','5',100),(770,86,5,'Content.','LIKERT','Content','5',100),(771,86,6,'On time.','BINARY','Punctuality','Yes',100),(772,86,9,'Knowledge.','SLIDER','Teaching Quality','94',94),(773,86,11,'Respect.','LIKERT','Fairness','5',100),(774,86,15,'Comments.','TEXT','General','Best CY instructor by far.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(775,87,1,'Clarity.','LIKERT','Teaching Quality','4',80),(776,87,2,'Communication.','SLIDER','Communication','86',86),(777,87,3,'Fairness.','LIKERT','Fairness','5',100),(778,87,4,'Engagement.','LIKERT','Engagement','4',80),(779,87,5,'Content.','LIKERT','Content','5',100),(780,87,6,'On time.','BINARY','Punctuality','Yes',100),(781,87,9,'Knowledge.','SLIDER','Teaching Quality','88',88),(782,87,11,'Respect.','LIKERT','Fairness','5',100),(783,87,15,'Comments.','TEXT','General','Expert in both theory and practice.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(784,88,1,'Clarity.','LIKERT','Teaching Quality','5',100),(785,88,2,'Communication.','SLIDER','Communication','90',90),(786,88,3,'Fairness.','LIKERT','Fairness','4',80),(787,88,4,'Engagement.','LIKERT','Engagement','5',100),(788,88,5,'Content.','LIKERT','Content','5',100),(789,88,6,'On time.','BINARY','Punctuality','Yes',100),(790,88,9,'Knowledge.','SLIDER','Teaching Quality','93',93),(791,88,11,'Respect.','LIKERT','Fairness','4',80),(792,88,15,'Comments.','TEXT','General','Real case studies make the course highly relevant.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(793,89,1,'Clarity.','LIKERT','Teaching Quality','5',100),(794,89,2,'Communication.','SLIDER','Communication','87',87),(795,89,3,'Fairness.','LIKERT','Fairness','5',100),(796,89,4,'Engagement.','LIKERT','Engagement','4',80),(797,89,5,'Content.','LIKERT','Content','5',100),(798,89,6,'On time.','BINARY','Punctuality','Yes',100),(799,89,9,'Knowledge.','SLIDER','Teaching Quality','89',89),(800,89,11,'Respect.','LIKERT','Fairness','5',100),(801,89,15,'Comments.','TEXT','General','Detailed and clear marking rubrics.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(802,90,1,'Clarity.','LIKERT','Teaching Quality','5',100),(803,90,2,'Communication.','SLIDER','Communication','93',93),(804,90,3,'Fairness.','LIKERT','Fairness','5',100),(805,90,4,'Engagement.','LIKERT','Engagement','5',100),(806,90,5,'Content.','LIKERT','Content','5',100),(807,90,6,'On time.','BINARY','Punctuality','Yes',100),(808,90,9,'Knowledge.','SLIDER','Teaching Quality','96',96),(809,90,11,'Respect.','LIKERT','Fairness','5',100),(810,90,15,'Comments.','TEXT','General','Rukhsana sets a very high standard.',NULL);

-- ── AT RISK: Responses 91-100 (fawad.cheema, CY) ─────────────
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(811,91,1,'Clarity.','LIKERT','Teaching Quality','2',40),(812,91,2,'Communication.','SLIDER','Communication','34',34),(813,91,3,'Fairness.','LIKERT','Fairness','2',40),(814,91,4,'Engagement.','LIKERT','Engagement','1',20),(815,91,5,'Content.','LIKERT','Content','2',40),(816,91,6,'On time.','BINARY','Punctuality','No',0),(817,91,9,'Knowledge.','SLIDER','Teaching Quality','39',39),(818,91,11,'Respect.','LIKERT','Fairness','2',40),(819,91,15,'Comments.','TEXT','General','Practical sessions often cancelled without notice.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(820,92,1,'Clarity.','LIKERT','Teaching Quality','1',20),(821,92,2,'Communication.','SLIDER','Communication','30',30),(822,92,3,'Fairness.','LIKERT','Fairness','1',20),(823,92,4,'Engagement.','LIKERT','Engagement','1',20),(824,92,5,'Content.','LIKERT','Content','1',20),(825,92,6,'On time.','BINARY','Punctuality','No',0),(826,92,9,'Knowledge.','SLIDER','Teaching Quality','34',34),(827,92,11,'Respect.','LIKERT','Fairness','1',20),(828,92,15,'Comments.','TEXT','General','Security topics covered only superficially.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(829,93,1,'Clarity.','LIKERT','Teaching Quality','2',40),(830,93,2,'Communication.','SLIDER','Communication','36',36),(831,93,3,'Fairness.','LIKERT','Fairness','2',40),(832,93,4,'Engagement.','LIKERT','Engagement','2',40),(833,93,5,'Content.','LIKERT','Content','2',40),(834,93,6,'On time.','BINARY','Punctuality','No',0),(835,93,9,'Knowledge.','SLIDER','Teaching Quality','41',41),(836,93,11,'Respect.','LIKERT','Fairness','2',40),(837,93,15,'Comments.','TEXT','General','Lacks depth in ethical hacking concepts.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(838,94,1,'Clarity.','LIKERT','Teaching Quality','2',40),(839,94,2,'Communication.','SLIDER','Communication','32',32),(840,94,3,'Fairness.','LIKERT','Fairness','2',40),(841,94,4,'Engagement.','LIKERT','Engagement','1',20),(842,94,5,'Content.','LIKERT','Content','2',40),(843,94,6,'On time.','BINARY','Punctuality','No',0),(844,94,9,'Knowledge.','SLIDER','Teaching Quality','37',37),(845,94,11,'Respect.','LIKERT','Fairness','2',40),(846,94,15,'Comments.','TEXT','General','No virtual lab environment provided.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(847,95,1,'Clarity.','LIKERT','Teaching Quality','1',20),(848,95,2,'Communication.','SLIDER','Communication','28',28),(849,95,3,'Fairness.','LIKERT','Fairness','1',20),(850,95,4,'Engagement.','LIKERT','Engagement','1',20),(851,95,5,'Content.','LIKERT','Content','1',20),(852,95,6,'On time.','BINARY','Punctuality','No',0),(853,95,9,'Knowledge.','SLIDER','Teaching Quality','32',32),(854,95,11,'Respect.','LIKERT','Fairness','1',20),(855,95,15,'Comments.','TEXT','General','Course outcomes not being met.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(856,96,1,'Clarity.','LIKERT','Teaching Quality','2',40),(857,96,2,'Communication.','SLIDER','Communication','35',35),(858,96,3,'Fairness.','LIKERT','Fairness','2',40),(859,96,4,'Engagement.','LIKERT','Engagement','2',40),(860,96,5,'Content.','LIKERT','Content','2',40),(861,96,6,'On time.','BINARY','Punctuality','No',0),(862,96,9,'Knowledge.','SLIDER','Teaching Quality','40',40),(863,96,11,'Respect.','LIKERT','Fairness','2',40),(864,96,15,'Comments.','TEXT','General','Inconsistent attendance by instructor.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(865,97,1,'Clarity.','LIKERT','Teaching Quality','2',40),(866,97,2,'Communication.','SLIDER','Communication','33',33),(867,97,3,'Fairness.','LIKERT','Fairness','1',20),(868,97,4,'Engagement.','LIKERT','Engagement','2',40),(869,97,5,'Content.','LIKERT','Content','2',40),(870,97,6,'On time.','BINARY','Punctuality','No',0),(871,97,9,'Knowledge.','SLIDER','Teaching Quality','38',38),(872,97,11,'Respect.','LIKERT','Fairness','2',40),(873,97,15,'Comments.','TEXT','General','Marking extremely harsh with no justification.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(874,98,1,'Clarity.','LIKERT','Teaching Quality','1',20),(875,98,2,'Communication.','SLIDER','Communication','31',31),(876,98,3,'Fairness.','LIKERT','Fairness','2',40),(877,98,4,'Engagement.','LIKERT','Engagement','1',20),(878,98,5,'Content.','LIKERT','Content','1',20),(879,98,6,'On time.','BINARY','Punctuality','No',0),(880,98,9,'Knowledge.','SLIDER','Teaching Quality','35',35),(881,98,11,'Respect.','LIKERT','Fairness','1',20),(882,98,15,'Comments.','TEXT','General','Urgent: section repeatedly underperforming.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(883,99,1,'Clarity.','LIKERT','Teaching Quality','2',40),(884,99,2,'Communication.','SLIDER','Communication','36',36),(885,99,3,'Fairness.','LIKERT','Fairness','2',40),(886,99,4,'Engagement.','LIKERT','Engagement','2',40),(887,99,5,'Content.','LIKERT','Content','2',40),(888,99,6,'On time.','BINARY','Punctuality','No',0),(889,99,9,'Knowledge.','SLIDER','Teaching Quality','43',43),(890,99,11,'Respect.','LIKERT','Fairness','2',40),(891,99,15,'Comments.','TEXT','General','Significant gap between syllabus and delivery.',NULL);
INSERT INTO response_answers (id, response_id, question_id, question_text, question_type, perf_factor, answer_value, numeric_score) VALUES
(892,100,1,'Clarity.','LIKERT','Teaching Quality','2',40),(893,100,2,'Communication.','SLIDER','Communication','37',37),(894,100,3,'Fairness.','LIKERT','Fairness','2',40),(895,100,4,'Engagement.','LIKERT','Engagement','1',20),(896,100,5,'Content.','LIKERT','Content','2',40),(897,100,6,'On time.','BINARY','Punctuality','No',0),(898,100,9,'Knowledge.','SLIDER','Teaching Quality','41',41),(899,100,11,'Respect.','LIKERT','Fairness','2',40),(900,100,15,'Comments.','TEXT','General','Full review by department head recommended.',NULL);

-- ════════════════════════════════════════════════════════════
-- SPRING 2024 ANSWERS  (response IDs 101-200, answer IDs 901-1500)
-- ════════════════════════════════════════════════════════════

-- ── HIGH: CS Responses 101-110 (kamran.akhtar) ───────────────
INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(901, 101,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(902, 101,2,'Rate the teacher''s communication skills.','SLIDER','Communication','92',92),
(903, 101,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(904, 101,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(905, 101,5,'The course content is relevant.','LIKERT','Content','4',80),
(906, 101,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(907, 102,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(908, 102,2,'Rate the teacher''s communication skills.','SLIDER','Communication','89',89),
(909, 102,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(910, 102,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(911, 102,5,'The course content is relevant.','LIKERT','Content','5',100),
(912, 102,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(913, 103,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(914, 103,2,'Rate the teacher''s communication skills.','SLIDER','Communication','87',87),
(915, 103,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(916, 103,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(917, 103,5,'The course content is relevant.','LIKERT','Content','5',100),
(918, 103,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(919, 104,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(920, 104,2,'Rate the teacher''s communication skills.','SLIDER','Communication','94',94),
(921, 104,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(922, 104,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(923, 104,5,'The course content is relevant.','LIKERT','Content','5',100),
(924, 104,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(925, 105,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(926, 105,2,'Rate the teacher''s communication skills.','SLIDER','Communication','91',91),
(927, 105,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(928, 105,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(929, 105,5,'The course content is relevant.','LIKERT','Content','4',80),
(930, 105,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(931, 106,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(932, 106,2,'Rate the teacher''s communication skills.','SLIDER','Communication','86',86),
(933, 106,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(934, 106,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(935, 106,5,'The course content is relevant.','LIKERT','Content','5',100),
(936, 106,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(937, 107,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(938, 107,2,'Rate the teacher''s communication skills.','SLIDER','Communication','90',90),
(939, 107,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(940, 107,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(941, 107,5,'The course content is relevant.','LIKERT','Content','4',80),
(942, 107,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(943, 108,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(944, 108,2,'Rate the teacher''s communication skills.','SLIDER','Communication','95',95),
(945, 108,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(946, 108,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(947, 108,5,'The course content is relevant.','LIKERT','Content','5',100),
(948, 108,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(949, 109,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(950, 109,2,'Rate the teacher''s communication skills.','SLIDER','Communication','88',88),
(951, 109,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(952, 109,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(953, 109,5,'The course content is relevant.','LIKERT','Content','4',80),
(954, 109,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(955, 110,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(956, 110,2,'Rate the teacher''s communication skills.','SLIDER','Communication','93',93),
(957, 110,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(958, 110,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(959, 110,5,'The course content is relevant.','LIKERT','Content','5',100),
(960, 110,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

-- ── AT RISK: CS Responses 111-120 (imran.shahzad) ────────────
INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(961, 111,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','2',40),
(962, 111,2,'Rate the teacher''s communication skills.','SLIDER','Communication','35',35),
(963, 111,3,'The teacher is fair when grading.','LIKERT','Fairness','2',40),
(964, 111,4,'The teacher actively engages students.','LIKERT','Engagement','1',20),
(965, 111,5,'The course content is relevant.','LIKERT','Content','2',40),
(966, 111,6,'Teacher arrives on time.','BINARY','Punctuality','No',0);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(967, 112,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','1',20),
(968, 112,2,'Rate the teacher''s communication skills.','SLIDER','Communication','30',30),
(969, 112,3,'The teacher is fair when grading.','LIKERT','Fairness','2',40),
(970, 112,4,'The teacher actively engages students.','LIKERT','Engagement','1',20),
(971, 112,5,'The course content is relevant.','LIKERT','Content','1',20),
(972, 112,6,'Teacher arrives on time.','BINARY','Punctuality','No',0);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(973, 113,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','2',40),
(974, 113,2,'Rate the teacher''s communication skills.','SLIDER','Communication','38',38),
(975, 113,3,'The teacher is fair when grading.','LIKERT','Fairness','1',20),
(976, 113,4,'The teacher actively engages students.','LIKERT','Engagement','2',40),
(977, 113,5,'The course content is relevant.','LIKERT','Content','2',40),
(978, 113,6,'Teacher arrives on time.','BINARY','Punctuality','No',0);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(979, 114,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','2',40),
(980, 114,2,'Rate the teacher''s communication skills.','SLIDER','Communication','32',32),
(981, 114,3,'The teacher is fair when grading.','LIKERT','Fairness','2',40),
(982, 114,4,'The teacher actively engages students.','LIKERT','Engagement','2',40),
(983, 114,5,'The course content is relevant.','LIKERT','Content','1',20),
(984, 114,6,'Teacher arrives on time.','BINARY','Punctuality','No',0);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(985, 115,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','1',20),
(986, 115,2,'Rate the teacher''s communication skills.','SLIDER','Communication','28',28),
(987, 115,3,'The teacher is fair when grading.','LIKERT','Fairness','2',40),
(988, 115,4,'The teacher actively engages students.','LIKERT','Engagement','1',20),
(989, 115,5,'The course content is relevant.','LIKERT','Content','2',40),
(990, 115,6,'Teacher arrives on time.','BINARY','Punctuality','No',0);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(991, 116,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','2',40),
(992, 116,2,'Rate the teacher''s communication skills.','SLIDER','Communication','36',36),
(993, 116,3,'The teacher is fair when grading.','LIKERT','Fairness','2',40),
(994, 116,4,'The teacher actively engages students.','LIKERT','Engagement','1',20),
(995, 116,5,'The course content is relevant.','LIKERT','Content','2',40),
(996, 116,6,'Teacher arrives on time.','BINARY','Punctuality','No',0);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(997, 117,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','2',40),
(998, 117,2,'Rate the teacher''s communication skills.','SLIDER','Communication','33',33),
(999, 117,3,'The teacher is fair when grading.','LIKERT','Fairness','1',20),
(1000,117,4,'The teacher actively engages students.','LIKERT','Engagement','2',40),
(1001,117,5,'The course content is relevant.','LIKERT','Content','2',40),
(1002,117,6,'Teacher arrives on time.','BINARY','Punctuality','No',0);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1003,118,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','1',20),
(1004,118,2,'Rate the teacher''s communication skills.','SLIDER','Communication','31',31),
(1005,118,3,'The teacher is fair when grading.','LIKERT','Fairness','2',40),
(1006,118,4,'The teacher actively engages students.','LIKERT','Engagement','1',20),
(1007,118,5,'The course content is relevant.','LIKERT','Content','1',20),
(1008,118,6,'Teacher arrives on time.','BINARY','Punctuality','No',0);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1009,119,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','2',40),
(1010,119,2,'Rate the teacher''s communication skills.','SLIDER','Communication','40',40),
(1011,119,3,'The teacher is fair when grading.','LIKERT','Fairness','2',40),
(1012,119,4,'The teacher actively engages students.','LIKERT','Engagement','2',40),
(1013,119,5,'The course content is relevant.','LIKERT','Content','2',40),
(1014,119,6,'Teacher arrives on time.','BINARY','Punctuality','No',0);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1015,120,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','2',40),
(1016,120,2,'Rate the teacher''s communication skills.','SLIDER','Communication','34',34),
(1017,120,3,'The teacher is fair when grading.','LIKERT','Fairness','2',40),
(1018,120,4,'The teacher actively engages students.','LIKERT','Engagement','1',20),
(1019,120,5,'The course content is relevant.','LIKERT','Content','2',40),
(1020,120,6,'Teacher arrives on time.','BINARY','Punctuality','No',0);

-- ── HIGH: EE Responses 121-130 (shahid.anwar) ────────────────
INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1021,121,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1022,121,2,'Rate the teacher''s communication skills.','SLIDER','Communication','93',93),
(1023,121,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1024,121,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1025,121,5,'The course content is relevant.','LIKERT','Content','5',100),
(1026,121,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1027,122,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(1028,122,2,'Rate the teacher''s communication skills.','SLIDER','Communication','88',88),
(1029,122,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1030,122,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(1031,122,5,'The course content is relevant.','LIKERT','Content','5',100),
(1032,122,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1033,123,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1034,123,2,'Rate the teacher''s communication skills.','SLIDER','Communication','91',91),
(1035,123,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(1036,123,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1037,123,5,'The course content is relevant.','LIKERT','Content','4',80),
(1038,123,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1039,124,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1040,124,2,'Rate the teacher''s communication skills.','SLIDER','Communication','97',97),
(1041,124,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1042,124,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1043,124,5,'The course content is relevant.','LIKERT','Content','5',100),
(1044,124,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1045,125,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(1046,125,2,'Rate the teacher''s communication skills.','SLIDER','Communication','86',86),
(1047,125,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(1048,125,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1049,125,5,'The course content is relevant.','LIKERT','Content','4',80),
(1050,125,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1051,126,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1052,126,2,'Rate the teacher''s communication skills.','SLIDER','Communication','90',90),
(1053,126,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1054,126,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1055,126,5,'The course content is relevant.','LIKERT','Content','5',100),
(1056,126,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1057,127,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1058,127,2,'Rate the teacher''s communication skills.','SLIDER','Communication','85',85),
(1059,127,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1060,127,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(1061,127,5,'The course content is relevant.','LIKERT','Content','5',100),
(1062,127,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1063,128,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(1064,128,2,'Rate the teacher''s communication skills.','SLIDER','Communication','92',92),
(1065,128,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(1066,128,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1067,128,5,'The course content is relevant.','LIKERT','Content','4',80),
(1068,128,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1069,129,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1070,129,2,'Rate the teacher''s communication skills.','SLIDER','Communication','89',89),
(1071,129,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1072,129,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1073,129,5,'The course content is relevant.','LIKERT','Content','5',100),
(1074,129,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1075,130,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1076,130,2,'Rate the teacher''s communication skills.','SLIDER','Communication','94',94),
(1077,130,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1078,130,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1079,130,5,'The course content is relevant.','LIKERT','Content','5',100),
(1080,130,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

-- ── AT RISK: EE Responses 131-140 (tahir.nawaz) ──────────────
INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1081,131,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','2',40),
(1082,131,2,'Rate the teacher''s communication skills.','SLIDER','Communication','33',33),
(1083,131,3,'The teacher is fair when grading.','LIKERT','Fairness','1',20),
(1084,131,4,'The teacher actively engages students.','LIKERT','Engagement','2',40),
(1085,131,5,'The course content is relevant.','LIKERT','Content','2',40),
(1086,131,6,'Teacher arrives on time.','BINARY','Punctuality','No',0);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1087,132,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','1',20),
(1088,132,2,'Rate the teacher''s communication skills.','SLIDER','Communication','29',29),
(1089,132,3,'The teacher is fair when grading.','LIKERT','Fairness','2',40),
(1090,132,4,'The teacher actively engages students.','LIKERT','Engagement','1',20),
(1091,132,5,'The course content is relevant.','LIKERT','Content','1',20),
(1092,132,6,'Teacher arrives on time.','BINARY','Punctuality','No',0);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1093,133,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','2',40),
(1094,133,2,'Rate the teacher''s communication skills.','SLIDER','Communication','37',37),
(1095,133,3,'The teacher is fair when grading.','LIKERT','Fairness','2',40),
(1096,133,4,'The teacher actively engages students.','LIKERT','Engagement','2',40),
(1097,133,5,'The course content is relevant.','LIKERT','Content','2',40),
(1098,133,6,'Teacher arrives on time.','BINARY','Punctuality','No',0);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1099,134,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','2',40),
(1100,134,2,'Rate the teacher''s communication skills.','SLIDER','Communication','34',34),
(1101,134,3,'The teacher is fair when grading.','LIKERT','Fairness','2',40),
(1102,134,4,'The teacher actively engages students.','LIKERT','Engagement','1',20),
(1103,134,5,'The course content is relevant.','LIKERT','Content','2',40),
(1104,134,6,'Teacher arrives on time.','BINARY','Punctuality','No',0);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1105,135,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','1',20),
(1106,135,2,'Rate the teacher''s communication skills.','SLIDER','Communication','31',31),
(1107,135,3,'The teacher is fair when grading.','LIKERT','Fairness','1',20),
(1108,135,4,'The teacher actively engages students.','LIKERT','Engagement','2',40),
(1109,135,5,'The course content is relevant.','LIKERT','Content','1',20),
(1110,135,6,'Teacher arrives on time.','BINARY','Punctuality','No',0);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1111,136,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','2',40),
(1112,136,2,'Rate the teacher''s communication skills.','SLIDER','Communication','40',40),
(1113,136,3,'The teacher is fair when grading.','LIKERT','Fairness','2',40),
(1114,136,4,'The teacher actively engages students.','LIKERT','Engagement','1',20),
(1115,136,5,'The course content is relevant.','LIKERT','Content','2',40),
(1116,136,6,'Teacher arrives on time.','BINARY','Punctuality','No',0);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1117,137,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','2',40),
(1118,137,2,'Rate the teacher''s communication skills.','SLIDER','Communication','36',36),
(1119,137,3,'The teacher is fair when grading.','LIKERT','Fairness','2',40),
(1120,137,4,'The teacher actively engages students.','LIKERT','Engagement','2',40),
(1121,137,5,'The course content is relevant.','LIKERT','Content','2',40),
(1122,137,6,'Teacher arrives on time.','BINARY','Punctuality','No',0);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1123,138,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','1',20),
(1124,138,2,'Rate the teacher''s communication skills.','SLIDER','Communication','28',28),
(1125,138,3,'The teacher is fair when grading.','LIKERT','Fairness','2',40),
(1126,138,4,'The teacher actively engages students.','LIKERT','Engagement','1',20),
(1127,138,5,'The course content is relevant.','LIKERT','Content','1',20),
(1128,138,6,'Teacher arrives on time.','BINARY','Punctuality','No',0);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1129,139,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','2',40),
(1130,139,2,'Rate the teacher''s communication skills.','SLIDER','Communication','44',44),
(1131,139,3,'The teacher is fair when grading.','LIKERT','Fairness','2',40),
(1132,139,4,'The teacher actively engages students.','LIKERT','Engagement','2',40),
(1133,139,5,'The course content is relevant.','LIKERT','Content','2',40),
(1134,139,6,'Teacher arrives on time.','BINARY','Punctuality','No',0);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1135,140,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','2',40),
(1136,140,2,'Rate the teacher''s communication skills.','SLIDER','Communication','38',38),
(1137,140,3,'The teacher is fair when grading.','LIKERT','Fairness','1',20),
(1138,140,4,'The teacher actively engages students.','LIKERT','Engagement','2',40),
(1139,140,5,'The course content is relevant.','LIKERT','Content','2',40),
(1140,140,6,'Teacher arrives on time.','BINARY','Punctuality','No',0);

-- ── HIGH: AI Responses 141-150 (asad.raza) ───────────────────
INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1141,141,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1142,141,2,'Rate the teacher''s communication skills.','SLIDER','Communication','91',91),
(1143,141,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1144,141,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1145,141,5,'The course content is relevant.','LIKERT','Content','5',100),
(1146,141,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1147,142,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1148,142,2,'Rate the teacher''s communication skills.','SLIDER','Communication','87',87),
(1149,142,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(1150,142,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1151,142,5,'The course content is relevant.','LIKERT','Content','5',100),
(1152,142,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1153,143,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(1154,143,2,'Rate the teacher''s communication skills.','SLIDER','Communication','85',85),
(1155,143,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1156,143,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(1157,143,5,'The course content is relevant.','LIKERT','Content','4',80),
(1158,143,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1159,144,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1160,144,2,'Rate the teacher''s communication skills.','SLIDER','Communication','95',95),
(1161,144,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1162,144,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1163,144,5,'The course content is relevant.','LIKERT','Content','5',100),
(1164,144,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1165,145,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(1166,145,2,'Rate the teacher''s communication skills.','SLIDER','Communication','88',88),
(1167,145,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(1168,145,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1169,145,5,'The course content is relevant.','LIKERT','Content','4',80),
(1170,145,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1171,146,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1172,146,2,'Rate the teacher''s communication skills.','SLIDER','Communication','93',93),
(1173,146,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1174,146,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1175,146,5,'The course content is relevant.','LIKERT','Content','5',100),
(1176,146,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1177,147,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1178,147,2,'Rate the teacher''s communication skills.','SLIDER','Communication','90',90),
(1179,147,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1180,147,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(1181,147,5,'The course content is relevant.','LIKERT','Content','5',100),
(1182,147,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1183,148,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(1184,148,2,'Rate the teacher''s communication skills.','SLIDER','Communication','86',86),
(1185,148,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(1186,148,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1187,148,5,'The course content is relevant.','LIKERT','Content','4',80),
(1188,148,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1189,149,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1190,149,2,'Rate the teacher''s communication skills.','SLIDER','Communication','92',92),
(1191,149,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1192,149,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1193,149,5,'The course content is relevant.','LIKERT','Content','5',100),
(1194,149,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1195,150,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1196,150,2,'Rate the teacher''s communication skills.','SLIDER','Communication','96',96),
(1197,150,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1198,150,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1199,150,5,'The course content is relevant.','LIKERT','Content','5',100),
(1200,150,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

-- ── AT RISK: AI Responses 151-160 (danish.murtaza) ───────────
INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1201,151,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','2',40),
(1202,151,2,'Rate the teacher''s communication skills.','SLIDER','Communication','35',35),
(1203,151,3,'The teacher is fair when grading.','LIKERT','Fairness','2',40),
(1204,151,4,'The teacher actively engages students.','LIKERT','Engagement','1',20),
(1205,151,5,'The course content is relevant.','LIKERT','Content','2',40),
(1206,151,6,'Teacher arrives on time.','BINARY','Punctuality','No',0);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1207,152,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','1',20),
(1208,152,2,'Rate the teacher''s communication skills.','SLIDER','Communication','30',30),
(1209,152,3,'The teacher is fair when grading.','LIKERT','Fairness','1',20),
(1210,152,4,'The teacher actively engages students.','LIKERT','Engagement','2',40),
(1211,152,5,'The course content is relevant.','LIKERT','Content','1',20),
(1212,152,6,'Teacher arrives on time.','BINARY','Punctuality','No',0);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1213,153,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','2',40),
(1214,153,2,'Rate the teacher''s communication skills.','SLIDER','Communication','38',38),
(1215,153,3,'The teacher is fair when grading.','LIKERT','Fairness','2',40),
(1216,153,4,'The teacher actively engages students.','LIKERT','Engagement','1',20),
(1217,153,5,'The course content is relevant.','LIKERT','Content','2',40),
(1218,153,6,'Teacher arrives on time.','BINARY','Punctuality','No',0);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1219,154,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','2',40),
(1220,154,2,'Rate the teacher''s communication skills.','SLIDER','Communication','32',32),
(1221,154,3,'The teacher is fair when grading.','LIKERT','Fairness','2',40),
(1222,154,4,'The teacher actively engages students.','LIKERT','Engagement','2',40),
(1223,154,5,'The course content is relevant.','LIKERT','Content','2',40),
(1224,154,6,'Teacher arrives on time.','BINARY','Punctuality','No',0);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1225,155,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','1',20),
(1226,155,2,'Rate the teacher''s communication skills.','SLIDER','Communication','28',28),
(1227,155,3,'The teacher is fair when grading.','LIKERT','Fairness','1',20),
(1228,155,4,'The teacher actively engages students.','LIKERT','Engagement','1',20),
(1229,155,5,'The course content is relevant.','LIKERT','Content','1',20),
(1230,155,6,'Teacher arrives on time.','BINARY','Punctuality','No',0);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1231,156,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','2',40),
(1232,156,2,'Rate the teacher''s communication skills.','SLIDER','Communication','36',36),
(1233,156,3,'The teacher is fair when grading.','LIKERT','Fairness','2',40),
(1234,156,4,'The teacher actively engages students.','LIKERT','Engagement','2',40),
(1235,156,5,'The course content is relevant.','LIKERT','Content','2',40),
(1236,156,6,'Teacher arrives on time.','BINARY','Punctuality','No',0);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1237,157,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','2',40),
(1238,157,2,'Rate the teacher''s communication skills.','SLIDER','Communication','42',42),
(1239,157,3,'The teacher is fair when grading.','LIKERT','Fairness','1',20),
(1240,157,4,'The teacher actively engages students.','LIKERT','Engagement','2',40),
(1241,157,5,'The course content is relevant.','LIKERT','Content','2',40),
(1242,157,6,'Teacher arrives on time.','BINARY','Punctuality','No',0);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1243,158,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','1',20),
(1244,158,2,'Rate the teacher''s communication skills.','SLIDER','Communication','31',31),
(1245,158,3,'The teacher is fair when grading.','LIKERT','Fairness','2',40),
(1246,158,4,'The teacher actively engages students.','LIKERT','Engagement','1',20),
(1247,158,5,'The course content is relevant.','LIKERT','Content','1',20),
(1248,158,6,'Teacher arrives on time.','BINARY','Punctuality','No',0);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1249,159,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','2',40),
(1250,159,2,'Rate the teacher''s communication skills.','SLIDER','Communication','39',39),
(1251,159,3,'The teacher is fair when grading.','LIKERT','Fairness','2',40),
(1252,159,4,'The teacher actively engages students.','LIKERT','Engagement','2',40),
(1253,159,5,'The course content is relevant.','LIKERT','Content','2',40),
(1254,159,6,'Teacher arrives on time.','BINARY','Punctuality','No',0);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1255,160,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','2',40),
(1256,160,2,'Rate the teacher''s communication skills.','SLIDER','Communication','34',34),
(1257,160,3,'The teacher is fair when grading.','LIKERT','Fairness','2',40),
(1258,160,4,'The teacher actively engages students.','LIKERT','Engagement','1',20),
(1259,160,5,'The course content is relevant.','LIKERT','Content','2',40),
(1260,160,6,'Teacher arrives on time.','BINARY','Punctuality','No',0);

-- ── HIGH: DS Responses 161-170 (rehan.baig) ──────────────────
INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1261,161,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1262,161,2,'Rate the teacher''s communication skills.','SLIDER','Communication','90',90),
(1263,161,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1264,161,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1265,161,5,'The course content is relevant.','LIKERT','Content','5',100),
(1266,161,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1267,162,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(1268,162,2,'Rate the teacher''s communication skills.','SLIDER','Communication','87',87),
(1269,162,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1270,162,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(1271,162,5,'The course content is relevant.','LIKERT','Content','5',100),
(1272,162,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1273,163,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1274,163,2,'Rate the teacher''s communication skills.','SLIDER','Communication','93',93),
(1275,163,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(1276,163,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1277,163,5,'The course content is relevant.','LIKERT','Content','4',80),
(1278,163,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1279,164,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1280,164,2,'Rate the teacher''s communication skills.','SLIDER','Communication','88',88),
(1281,164,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1282,164,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1283,164,5,'The course content is relevant.','LIKERT','Content','5',100),
(1284,164,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1285,165,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(1286,165,2,'Rate the teacher''s communication skills.','SLIDER','Communication','85',85),
(1287,165,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(1288,165,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(1289,165,5,'The course content is relevant.','LIKERT','Content','5',100),
(1290,165,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1291,166,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1292,166,2,'Rate the teacher''s communication skills.','SLIDER','Communication','91',91),
(1293,166,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1294,166,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1295,166,5,'The course content is relevant.','LIKERT','Content','5',100),
(1296,166,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1297,167,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1298,167,2,'Rate the teacher''s communication skills.','SLIDER','Communication','96',96),
(1299,167,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1300,167,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1301,167,5,'The course content is relevant.','LIKERT','Content','5',100),
(1302,167,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1303,168,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(1304,168,2,'Rate the teacher''s communication skills.','SLIDER','Communication','89',89),
(1305,168,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(1306,168,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1307,168,5,'The course content is relevant.','LIKERT','Content','4',80),
(1308,168,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1309,169,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1310,169,2,'Rate the teacher''s communication skills.','SLIDER','Communication','94',94),
(1311,169,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1312,169,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1313,169,5,'The course content is relevant.','LIKERT','Content','5',100),
(1314,169,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1315,170,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1316,170,2,'Rate the teacher''s communication skills.','SLIDER','Communication','92',92),
(1317,170,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1318,170,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(1319,170,5,'The course content is relevant.','LIKERT','Content','5',100),
(1320,170,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

-- ── AT RISK: DS Responses 171-180 (sajid.manzoor) ────────────
INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1321,171,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','2',40),
(1322,171,2,'Rate the teacher''s communication skills.','SLIDER','Communication','36',36),
(1323,171,3,'The teacher is fair when grading.','LIKERT','Fairness','2',40),
(1324,171,4,'The teacher actively engages students.','LIKERT','Engagement','1',20),
(1325,171,5,'The course content is relevant.','LIKERT','Content','2',40),
(1326,171,6,'Teacher arrives on time.','BINARY','Punctuality','No',0);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1327,172,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','1',20),
(1328,172,2,'Rate the teacher''s communication skills.','SLIDER','Communication','30',30),
(1329,172,3,'The teacher is fair when grading.','LIKERT','Fairness','2',40),
(1330,172,4,'The teacher actively engages students.','LIKERT','Engagement','1',20),
(1331,172,5,'The course content is relevant.','LIKERT','Content','1',20),
(1332,172,6,'Teacher arrives on time.','BINARY','Punctuality','No',0);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1333,173,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','2',40),
(1334,173,2,'Rate the teacher''s communication skills.','SLIDER','Communication','40',40),
(1335,173,3,'The teacher is fair when grading.','LIKERT','Fairness','1',20),
(1336,173,4,'The teacher actively engages students.','LIKERT','Engagement','2',40),
(1337,173,5,'The course content is relevant.','LIKERT','Content','2',40),
(1338,173,6,'Teacher arrives on time.','BINARY','Punctuality','No',0);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1339,174,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','2',40),
(1340,174,2,'Rate the teacher''s communication skills.','SLIDER','Communication','33',33),
(1341,174,3,'The teacher is fair when grading.','LIKERT','Fairness','2',40),
(1342,174,4,'The teacher actively engages students.','LIKERT','Engagement','2',40),
(1343,174,5,'The course content is relevant.','LIKERT','Content','2',40),
(1344,174,6,'Teacher arrives on time.','BINARY','Punctuality','No',0);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1345,175,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','1',20),
(1346,175,2,'Rate the teacher''s communication skills.','SLIDER','Communication','28',28),
(1347,175,3,'The teacher is fair when grading.','LIKERT','Fairness','1',20),
(1348,175,4,'The teacher actively engages students.','LIKERT','Engagement','1',20),
(1349,175,5,'The course content is relevant.','LIKERT','Content','2',40),
(1350,175,6,'Teacher arrives on time.','BINARY','Punctuality','No',0);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1351,176,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','2',40),
(1352,176,2,'Rate the teacher''s communication skills.','SLIDER','Communication','38',38),
(1353,176,3,'The teacher is fair when grading.','LIKERT','Fairness','2',40),
(1354,176,4,'The teacher actively engages students.','LIKERT','Engagement','1',20),
(1355,176,5,'The course content is relevant.','LIKERT','Content','2',40),
(1356,176,6,'Teacher arrives on time.','BINARY','Punctuality','No',0);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1357,177,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','2',40),
(1358,177,2,'Rate the teacher''s communication skills.','SLIDER','Communication','43',43),
(1359,177,3,'The teacher is fair when grading.','LIKERT','Fairness','2',40),
(1360,177,4,'The teacher actively engages students.','LIKERT','Engagement','2',40),
(1361,177,5,'The course content is relevant.','LIKERT','Content','1',20),
(1362,177,6,'Teacher arrives on time.','BINARY','Punctuality','No',0);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1363,178,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','1',20),
(1364,178,2,'Rate the teacher''s communication skills.','SLIDER','Communication','31',31),
(1365,178,3,'The teacher is fair when grading.','LIKERT','Fairness','2',40),
(1366,178,4,'The teacher actively engages students.','LIKERT','Engagement','1',20),
(1367,178,5,'The course content is relevant.','LIKERT','Content','1',20),
(1368,178,6,'Teacher arrives on time.','BINARY','Punctuality','No',0);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1369,179,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','2',40),
(1370,179,2,'Rate the teacher''s communication skills.','SLIDER','Communication','35',35),
(1371,179,3,'The teacher is fair when grading.','LIKERT','Fairness','2',40),
(1372,179,4,'The teacher actively engages students.','LIKERT','Engagement','2',40),
(1373,179,5,'The course content is relevant.','LIKERT','Content','2',40),
(1374,179,6,'Teacher arrives on time.','BINARY','Punctuality','No',0);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1375,180,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','2',40),
(1376,180,2,'Rate the teacher''s communication skills.','SLIDER','Communication','41',41),
(1377,180,3,'The teacher is fair when grading.','LIKERT','Fairness','1',20),
(1378,180,4,'The teacher actively engages students.','LIKERT','Engagement','2',40),
(1379,180,5,'The course content is relevant.','LIKERT','Content','2',40),
(1380,180,6,'Teacher arrives on time.','BINARY','Punctuality','No',0);

-- ── HIGH: CY Responses 181-190 (mansoor.ali) ─────────────────
INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1381,181,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1382,181,2,'Rate the teacher''s communication skills.','SLIDER','Communication','92',92),
(1383,181,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1384,181,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1385,181,5,'The course content is relevant.','LIKERT','Content','5',100),
(1386,181,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1387,182,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1388,182,2,'Rate the teacher''s communication skills.','SLIDER','Communication','88',88),
(1389,182,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(1390,182,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1391,182,5,'The course content is relevant.','LIKERT','Content','5',100),
(1392,182,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1393,183,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(1394,183,2,'Rate the teacher''s communication skills.','SLIDER','Communication','86',86),
(1395,183,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1396,183,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(1397,183,5,'The course content is relevant.','LIKERT','Content','4',80),
(1398,183,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1399,184,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1400,184,2,'Rate the teacher''s communication skills.','SLIDER','Communication','95',95),
(1401,184,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1402,184,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1403,184,5,'The course content is relevant.','LIKERT','Content','5',100),
(1404,184,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1405,185,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(1406,185,2,'Rate the teacher''s communication skills.','SLIDER','Communication','89',89),
(1407,185,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(1408,185,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1409,185,5,'The course content is relevant.','LIKERT','Content','4',80),
(1410,185,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1411,186,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1412,186,2,'Rate the teacher''s communication skills.','SLIDER','Communication','91',91),
(1413,186,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1414,186,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1415,186,5,'The course content is relevant.','LIKERT','Content','5',100),
(1416,186,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1417,187,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1418,187,2,'Rate the teacher''s communication skills.','SLIDER','Communication','85',85),
(1419,187,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1420,187,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(1421,187,5,'The course content is relevant.','LIKERT','Content','5',100),
(1422,187,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1423,188,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(1424,188,2,'Rate the teacher''s communication skills.','SLIDER','Communication','93',93),
(1425,188,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(1426,188,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1427,188,5,'The course content is relevant.','LIKERT','Content','4',80),
(1428,188,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1429,189,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1430,189,2,'Rate the teacher''s communication skills.','SLIDER','Communication','90',90),
(1431,189,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1432,189,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1433,189,5,'The course content is relevant.','LIKERT','Content','5',100),
(1434,189,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1435,190,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1436,190,2,'Rate the teacher''s communication skills.','SLIDER','Communication','97',97),
(1437,190,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1438,190,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1439,190,5,'The course content is relevant.','LIKERT','Content','5',100),
(1440,190,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

-- ── AT RISK: CY Responses 191-200 (fawad.cheema) ─────────────
INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1441,191,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','2',40),
(1442,191,2,'Rate the teacher''s communication skills.','SLIDER','Communication','34',34),
(1443,191,3,'The teacher is fair when grading.','LIKERT','Fairness','2',40),
(1444,191,4,'The teacher actively engages students.','LIKERT','Engagement','1',20),
(1445,191,5,'The course content is relevant.','LIKERT','Content','2',40),
(1446,191,6,'Teacher arrives on time.','BINARY','Punctuality','No',0);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1447,192,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','1',20),
(1448,192,2,'Rate the teacher''s communication skills.','SLIDER','Communication','29',29),
(1449,192,3,'The teacher is fair when grading.','LIKERT','Fairness','1',20),
(1450,192,4,'The teacher actively engages students.','LIKERT','Engagement','2',40),
(1451,192,5,'The course content is relevant.','LIKERT','Content','1',20),
(1452,192,6,'Teacher arrives on time.','BINARY','Punctuality','No',0);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1453,193,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','2',40),
(1454,193,2,'Rate the teacher''s communication skills.','SLIDER','Communication','37',37),
(1455,193,3,'The teacher is fair when grading.','LIKERT','Fairness','2',40),
(1456,193,4,'The teacher actively engages students.','LIKERT','Engagement','1',20),
(1457,193,5,'The course content is relevant.','LIKERT','Content','2',40),
(1458,193,6,'Teacher arrives on time.','BINARY','Punctuality','No',0);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1459,194,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','2',40),
(1460,194,2,'Rate the teacher''s communication skills.','SLIDER','Communication','32',32),
(1461,194,3,'The teacher is fair when grading.','LIKERT','Fairness','2',40),
(1462,194,4,'The teacher actively engages students.','LIKERT','Engagement','2',40),
(1463,194,5,'The course content is relevant.','LIKERT','Content','2',40),
(1464,194,6,'Teacher arrives on time.','BINARY','Punctuality','No',0);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1465,195,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','1',20),
(1466,195,2,'Rate the teacher''s communication skills.','SLIDER','Communication','28',28),
(1467,195,3,'The teacher is fair when grading.','LIKERT','Fairness','1',20),
(1468,195,4,'The teacher actively engages students.','LIKERT','Engagement','1',20),
(1469,195,5,'The course content is relevant.','LIKERT','Content','1',20),
(1470,195,6,'Teacher arrives on time.','BINARY','Punctuality','No',0);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1471,196,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','2',40),
(1472,196,2,'Rate the teacher''s communication skills.','SLIDER','Communication','40',40),
(1473,196,3,'The teacher is fair when grading.','LIKERT','Fairness','2',40),
(1474,196,4,'The teacher actively engages students.','LIKERT','Engagement','2',40),
(1475,196,5,'The course content is relevant.','LIKERT','Content','2',40),
(1476,196,6,'Teacher arrives on time.','BINARY','Punctuality','No',0);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1477,197,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','2',40),
(1478,197,2,'Rate the teacher''s communication skills.','SLIDER','Communication','35',35),
(1479,197,3,'The teacher is fair when grading.','LIKERT','Fairness','2',40),
(1480,197,4,'The teacher actively engages students.','LIKERT','Engagement','1',20),
(1481,197,5,'The course content is relevant.','LIKERT','Content','2',40),
(1482,197,6,'Teacher arrives on time.','BINARY','Punctuality','No',0);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1483,198,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','1',20),
(1484,198,2,'Rate the teacher''s communication skills.','SLIDER','Communication','31',31),
(1485,198,3,'The teacher is fair when grading.','LIKERT','Fairness','2',40),
(1486,198,4,'The teacher actively engages students.','LIKERT','Engagement','1',20),
(1487,198,5,'The course content is relevant.','LIKERT','Content','1',20),
(1488,198,6,'Teacher arrives on time.','BINARY','Punctuality','No',0);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1489,199,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','2',40),
(1490,199,2,'Rate the teacher''s communication skills.','SLIDER','Communication','44',44),
(1491,199,3,'The teacher is fair when grading.','LIKERT','Fairness','2',40),
(1492,199,4,'The teacher actively engages students.','LIKERT','Engagement','2',40),
(1493,199,5,'The course content is relevant.','LIKERT','Content','2',40),
(1494,199,6,'Teacher arrives on time.','BINARY','Punctuality','No',0);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1495,200,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','2',40),
(1496,200,2,'Rate the teacher''s communication skills.','SLIDER','Communication','38',38),
(1497,200,3,'The teacher is fair when grading.','LIKERT','Fairness','1',20),
(1498,200,4,'The teacher actively engages students.','LIKERT','Engagement','2',40),
(1499,200,5,'The course content is relevant.','LIKERT','Content','2',40),
(1500,200,6,'Teacher arrives on time.','BINARY','Punctuality','No',0);

-- ════════════════════════════════════════════════════════════
-- SPRING 2025 ANSWERS (response IDs 201-300, answer IDs 1501-2100)
-- HIGH  = ayesha.malik / sana.qureshi / irum.sajid / huma.chaudhry / salman.butt
-- AVG   = usman.farooq / waqar.saleem / farhan.alam / madiha.waseem / asma.javed
--   AVG tier: LIKERT 3-4 (60-80), SLIDER 65-78, BINARY Yes (100)
-- ════════════════════════════════════════════════════════════

-- ── HIGH: CS Responses 201-210 (ayesha.malik) ────────────────
INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1501,201,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1502,201,2,'Rate the teacher''s communication skills.','SLIDER','Communication','93',93),
(1503,201,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1504,201,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1505,201,5,'The course content is relevant.','LIKERT','Content','5',100),
(1506,201,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1507,202,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(1508,202,2,'Rate the teacher''s communication skills.','SLIDER','Communication','89',89),
(1509,202,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1510,202,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(1511,202,5,'The course content is relevant.','LIKERT','Content','5',100),
(1512,202,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1513,203,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1514,203,2,'Rate the teacher''s communication skills.','SLIDER','Communication','91',91),
(1515,203,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(1516,203,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1517,203,5,'The course content is relevant.','LIKERT','Content','4',80),
(1518,203,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1519,204,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1520,204,2,'Rate the teacher''s communication skills.','SLIDER','Communication','96',96),
(1521,204,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1522,204,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1523,204,5,'The course content is relevant.','LIKERT','Content','5',100),
(1524,204,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1525,205,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(1526,205,2,'Rate the teacher''s communication skills.','SLIDER','Communication','87',87),
(1527,205,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(1528,205,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1529,205,5,'The course content is relevant.','LIKERT','Content','4',80),
(1530,205,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1531,206,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1532,206,2,'Rate the teacher''s communication skills.','SLIDER','Communication','90',90),
(1533,206,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1534,206,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1535,206,5,'The course content is relevant.','LIKERT','Content','5',100),
(1536,206,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1537,207,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1538,207,2,'Rate the teacher''s communication skills.','SLIDER','Communication','85',85),
(1539,207,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1540,207,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(1541,207,5,'The course content is relevant.','LIKERT','Content','5',100),
(1542,207,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1543,208,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(1544,208,2,'Rate the teacher''s communication skills.','SLIDER','Communication','94',94),
(1545,208,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(1546,208,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1547,208,5,'The course content is relevant.','LIKERT','Content','4',80),
(1548,208,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1549,209,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1550,209,2,'Rate the teacher''s communication skills.','SLIDER','Communication','88',88),
(1551,209,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1552,209,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1553,209,5,'The course content is relevant.','LIKERT','Content','5',100),
(1554,209,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1555,210,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1556,210,2,'Rate the teacher''s communication skills.','SLIDER','Communication','92',92),
(1557,210,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1558,210,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1559,210,5,'The course content is relevant.','LIKERT','Content','5',100),
(1560,210,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

-- ── AVG: CS Responses 211-220 (usman.farooq) ─────────────────
INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1561,211,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(1562,211,2,'Rate the teacher''s communication skills.','SLIDER','Communication','72',72),
(1563,211,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(1564,211,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(1565,211,5,'The course content is relevant.','LIKERT','Content','3',60),
(1566,211,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1567,212,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(1568,212,2,'Rate the teacher''s communication skills.','SLIDER','Communication','68',68),
(1569,212,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(1570,212,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(1571,212,5,'The course content is relevant.','LIKERT','Content','4',80),
(1572,212,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1573,213,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(1574,213,2,'Rate the teacher''s communication skills.','SLIDER','Communication','75',75),
(1575,213,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(1576,213,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(1577,213,5,'The course content is relevant.','LIKERT','Content','3',60),
(1578,213,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1579,214,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(1580,214,2,'Rate the teacher''s communication skills.','SLIDER','Communication','65',65),
(1581,214,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(1582,214,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(1583,214,5,'The course content is relevant.','LIKERT','Content','3',60),
(1584,214,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1585,215,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(1586,215,2,'Rate the teacher''s communication skills.','SLIDER','Communication','70',70),
(1587,215,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(1588,215,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(1589,215,5,'The course content is relevant.','LIKERT','Content','4',80),
(1590,215,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1591,216,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(1592,216,2,'Rate the teacher''s communication skills.','SLIDER','Communication','78',78),
(1593,216,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(1594,216,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(1595,216,5,'The course content is relevant.','LIKERT','Content','3',60),
(1596,216,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1597,217,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(1598,217,2,'Rate the teacher''s communication skills.','SLIDER','Communication','73',73),
(1599,217,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(1600,217,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(1601,217,5,'The course content is relevant.','LIKERT','Content','4',80),
(1602,217,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1603,218,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(1604,218,2,'Rate the teacher''s communication skills.','SLIDER','Communication','67',67),
(1605,218,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(1606,218,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(1607,218,5,'The course content is relevant.','LIKERT','Content','3',60),
(1608,218,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1609,219,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(1610,219,2,'Rate the teacher''s communication skills.','SLIDER','Communication','76',76),
(1611,219,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(1612,219,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(1613,219,5,'The course content is relevant.','LIKERT','Content','4',80),
(1614,219,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1615,220,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(1616,220,2,'Rate the teacher''s communication skills.','SLIDER','Communication','71',71),
(1617,220,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(1618,220,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(1619,220,5,'The course content is relevant.','LIKERT','Content','3',60),
(1620,220,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

-- ── HIGH: EE Responses 221-230 (sana.qureshi) ────────────────
INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1621,221,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1622,221,2,'Rate the teacher''s communication skills.','SLIDER','Communication','94',94),
(1623,221,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1624,221,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1625,221,5,'The course content is relevant.','LIKERT','Content','5',100),
(1626,221,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1627,222,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1628,222,2,'Rate the teacher''s communication skills.','SLIDER','Communication','89',89),
(1629,222,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(1630,222,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1631,222,5,'The course content is relevant.','LIKERT','Content','5',100),
(1632,222,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1633,223,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(1634,223,2,'Rate the teacher''s communication skills.','SLIDER','Communication','87',87),
(1635,223,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1636,223,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(1637,223,5,'The course content is relevant.','LIKERT','Content','4',80),
(1638,223,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1639,224,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1640,224,2,'Rate the teacher''s communication skills.','SLIDER','Communication','93',93),
(1641,224,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1642,224,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1643,224,5,'The course content is relevant.','LIKERT','Content','5',100),
(1644,224,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1645,225,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(1646,225,2,'Rate the teacher''s communication skills.','SLIDER','Communication','91',91),
(1647,225,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(1648,225,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1649,225,5,'The course content is relevant.','LIKERT','Content','4',80),
(1650,225,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1651,226,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1652,226,2,'Rate the teacher''s communication skills.','SLIDER','Communication','95',95),
(1653,226,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1654,226,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1655,226,5,'The course content is relevant.','LIKERT','Content','5',100),
(1656,226,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1657,227,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1658,227,2,'Rate the teacher''s communication skills.','SLIDER','Communication','85',85),
(1659,227,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1660,227,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(1661,227,5,'The course content is relevant.','LIKERT','Content','5',100),
(1662,227,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1663,228,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(1664,228,2,'Rate the teacher''s communication skills.','SLIDER','Communication','90',90),
(1665,228,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(1666,228,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1667,228,5,'The course content is relevant.','LIKERT','Content','4',80),
(1668,228,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1669,229,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1670,229,2,'Rate the teacher''s communication skills.','SLIDER','Communication','88',88),
(1671,229,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1672,229,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1673,229,5,'The course content is relevant.','LIKERT','Content','5',100),
(1674,229,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1675,230,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1676,230,2,'Rate the teacher''s communication skills.','SLIDER','Communication','97',97),
(1677,230,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1678,230,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1679,230,5,'The course content is relevant.','LIKERT','Content','5',100),
(1680,230,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

-- ── AVG: EE Responses 231-240 (waqar.saleem) ─────────────────
INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1681,231,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(1682,231,2,'Rate the teacher''s communication skills.','SLIDER','Communication','70',70),
(1683,231,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(1684,231,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(1685,231,5,'The course content is relevant.','LIKERT','Content','4',80),
(1686,231,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1687,232,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(1688,232,2,'Rate the teacher''s communication skills.','SLIDER','Communication','66',66),
(1689,232,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(1690,232,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(1691,232,5,'The course content is relevant.','LIKERT','Content','3',60),
(1692,232,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1693,233,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(1694,233,2,'Rate the teacher''s communication skills.','SLIDER','Communication','74',74),
(1695,233,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(1696,233,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(1697,233,5,'The course content is relevant.','LIKERT','Content','4',80),
(1698,233,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1699,234,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(1700,234,2,'Rate the teacher''s communication skills.','SLIDER','Communication','77',77),
(1701,234,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(1702,234,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(1703,234,5,'The course content is relevant.','LIKERT','Content','4',80),
(1704,234,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1705,235,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(1706,235,2,'Rate the teacher''s communication skills.','SLIDER','Communication','69',69),
(1707,235,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(1708,235,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(1709,235,5,'The course content is relevant.','LIKERT','Content','3',60),
(1710,235,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1711,236,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(1712,236,2,'Rate the teacher''s communication skills.','SLIDER','Communication','73',73),
(1713,236,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(1714,236,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(1715,236,5,'The course content is relevant.','LIKERT','Content','4',80),
(1716,236,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1717,237,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(1718,237,2,'Rate the teacher''s communication skills.','SLIDER','Communication','65',65),
(1719,237,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(1720,237,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(1721,237,5,'The course content is relevant.','LIKERT','Content','3',60),
(1722,237,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1723,238,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(1724,238,2,'Rate the teacher''s communication skills.','SLIDER','Communication','78',78),
(1725,238,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(1726,238,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(1727,238,5,'The course content is relevant.','LIKERT','Content','3',60),
(1728,238,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1729,239,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(1730,239,2,'Rate the teacher''s communication skills.','SLIDER','Communication','72',72),
(1731,239,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(1732,239,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(1733,239,5,'The course content is relevant.','LIKERT','Content','4',80),
(1734,239,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1735,240,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(1736,240,2,'Rate the teacher''s communication skills.','SLIDER','Communication','76',76),
(1737,240,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(1738,240,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(1739,240,5,'The course content is relevant.','LIKERT','Content','4',80),
(1740,240,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

-- ── HIGH: AI Responses 241-250 (irum.sajid) ──────────────────
INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1741,241,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1742,241,2,'Rate the teacher''s communication skills.','SLIDER','Communication','92',92),
(1743,241,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1744,241,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1745,241,5,'The course content is relevant.','LIKERT','Content','5',100),
(1746,241,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1747,242,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(1748,242,2,'Rate the teacher''s communication skills.','SLIDER','Communication','88',88),
(1749,242,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1750,242,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(1751,242,5,'The course content is relevant.','LIKERT','Content','5',100),
(1752,242,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1753,243,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1754,243,2,'Rate the teacher''s communication skills.','SLIDER','Communication','86',86),
(1755,243,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(1756,243,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1757,243,5,'The course content is relevant.','LIKERT','Content','4',80),
(1758,243,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1759,244,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1760,244,2,'Rate the teacher''s communication skills.','SLIDER','Communication','95',95),
(1761,244,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1762,244,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1763,244,5,'The course content is relevant.','LIKERT','Content','5',100),
(1764,244,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1765,245,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(1766,245,2,'Rate the teacher''s communication skills.','SLIDER','Communication','91',91),
(1767,245,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(1768,245,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1769,245,5,'The course content is relevant.','LIKERT','Content','4',80),
(1770,245,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1771,246,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1772,246,2,'Rate the teacher''s communication skills.','SLIDER','Communication','89',89),
(1773,246,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1774,246,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1775,246,5,'The course content is relevant.','LIKERT','Content','5',100),
(1776,246,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1777,247,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1778,247,2,'Rate the teacher''s communication skills.','SLIDER','Communication','93',93),
(1779,247,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1780,247,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(1781,247,5,'The course content is relevant.','LIKERT','Content','5',100),
(1782,247,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1783,248,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(1784,248,2,'Rate the teacher''s communication skills.','SLIDER','Communication','85',85),
(1785,248,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(1786,248,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1787,248,5,'The course content is relevant.','LIKERT','Content','4',80),
(1788,248,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1789,249,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1790,249,2,'Rate the teacher''s communication skills.','SLIDER','Communication','96',96),
(1791,249,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1792,249,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1793,249,5,'The course content is relevant.','LIKERT','Content','5',100),
(1794,249,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1795,250,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1796,250,2,'Rate the teacher''s communication skills.','SLIDER','Communication','90',90),
(1797,250,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1798,250,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1799,250,5,'The course content is relevant.','LIKERT','Content','5',100),
(1800,250,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

-- ── AVG: AI Responses 251-260 (farhan.alam) ──────────────────
INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1801,251,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(1802,251,2,'Rate the teacher''s communication skills.','SLIDER','Communication','73',73),
(1803,251,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(1804,251,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(1805,251,5,'The course content is relevant.','LIKERT','Content','3',60),
(1806,251,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1807,252,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(1808,252,2,'Rate the teacher''s communication skills.','SLIDER','Communication','67',67),
(1809,252,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(1810,252,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(1811,252,5,'The course content is relevant.','LIKERT','Content','4',80),
(1812,252,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1813,253,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(1814,253,2,'Rate the teacher''s communication skills.','SLIDER','Communication','76',76),
(1815,253,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(1816,253,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(1817,253,5,'The course content is relevant.','LIKERT','Content','3',60),
(1818,253,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1819,254,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(1820,254,2,'Rate the teacher''s communication skills.','SLIDER','Communication','70',70),
(1821,254,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(1822,254,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(1823,254,5,'The course content is relevant.','LIKERT','Content','3',60),
(1824,254,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1825,255,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(1826,255,2,'Rate the teacher''s communication skills.','SLIDER','Communication','78',78),
(1827,255,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(1828,255,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(1829,255,5,'The course content is relevant.','LIKERT','Content','4',80),
(1830,255,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1831,256,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(1832,256,2,'Rate the teacher''s communication skills.','SLIDER','Communication','65',65),
(1833,256,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(1834,256,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(1835,256,5,'The course content is relevant.','LIKERT','Content','3',60),
(1836,256,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1837,257,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(1838,257,2,'Rate the teacher''s communication skills.','SLIDER','Communication','71',71),
(1839,257,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(1840,257,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(1841,257,5,'The course content is relevant.','LIKERT','Content','3',60),
(1842,257,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1843,258,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(1844,258,2,'Rate the teacher''s communication skills.','SLIDER','Communication','74',74),
(1845,258,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(1846,258,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(1847,258,5,'The course content is relevant.','LIKERT','Content','4',80),
(1848,258,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1849,259,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(1850,259,2,'Rate the teacher''s communication skills.','SLIDER','Communication','68',68),
(1851,259,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(1852,259,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(1853,259,5,'The course content is relevant.','LIKERT','Content','4',80),
(1854,259,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1855,260,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(1856,260,2,'Rate the teacher''s communication skills.','SLIDER','Communication','75',75),
(1857,260,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(1858,260,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(1859,260,5,'The course content is relevant.','LIKERT','Content','4',80),
(1860,260,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

-- ── HIGH: DS Responses 261-270 (huma.chaudhry) ───────────────
INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1861,261,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1862,261,2,'Rate the teacher''s communication skills.','SLIDER','Communication','91',91),
(1863,261,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1864,261,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1865,261,5,'The course content is relevant.','LIKERT','Content','5',100),
(1866,261,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1867,262,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1868,262,2,'Rate the teacher''s communication skills.','SLIDER','Communication','87',87),
(1869,262,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(1870,262,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1871,262,5,'The course content is relevant.','LIKERT','Content','5',100),
(1872,262,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1873,263,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(1874,263,2,'Rate the teacher''s communication skills.','SLIDER','Communication','93',93),
(1875,263,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1876,263,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(1877,263,5,'The course content is relevant.','LIKERT','Content','4',80),
(1878,263,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1879,264,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1880,264,2,'Rate the teacher''s communication skills.','SLIDER','Communication','89',89),
(1881,264,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1882,264,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1883,264,5,'The course content is relevant.','LIKERT','Content','5',100),
(1884,264,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1885,265,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(1886,265,2,'Rate the teacher''s communication skills.','SLIDER','Communication','85',85),
(1887,265,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(1888,265,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1889,265,5,'The course content is relevant.','LIKERT','Content','4',80),
(1890,265,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1891,266,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1892,266,2,'Rate the teacher''s communication skills.','SLIDER','Communication','96',96),
(1893,266,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1894,266,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1895,266,5,'The course content is relevant.','LIKERT','Content','5',100),
(1896,266,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1897,267,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1898,267,2,'Rate the teacher''s communication skills.','SLIDER','Communication','90',90),
(1899,267,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1900,267,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(1901,267,5,'The course content is relevant.','LIKERT','Content','5',100),
(1902,267,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1903,268,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(1904,268,2,'Rate the teacher''s communication skills.','SLIDER','Communication','88',88),
(1905,268,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(1906,268,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1907,268,5,'The course content is relevant.','LIKERT','Content','4',80),
(1908,268,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1909,269,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1910,269,2,'Rate the teacher''s communication skills.','SLIDER','Communication','94',94),
(1911,269,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1912,269,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1913,269,5,'The course content is relevant.','LIKERT','Content','5',100),
(1914,269,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1915,270,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1916,270,2,'Rate the teacher''s communication skills.','SLIDER','Communication','92',92),
(1917,270,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1918,270,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1919,270,5,'The course content is relevant.','LIKERT','Content','5',100),
(1920,270,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

-- ── AVG: DS Responses 271-280 (madiha.waseem) ────────────────
INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1921,271,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(1922,271,2,'Rate the teacher''s communication skills.','SLIDER','Communication','69',69),
(1923,271,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(1924,271,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(1925,271,5,'The course content is relevant.','LIKERT','Content','3',60),
(1926,271,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1927,272,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(1928,272,2,'Rate the teacher''s communication skills.','SLIDER','Communication','74',74),
(1929,272,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(1930,272,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(1931,272,5,'The course content is relevant.','LIKERT','Content','4',80),
(1932,272,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1933,273,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(1934,273,2,'Rate the teacher''s communication skills.','SLIDER','Communication','71',71),
(1935,273,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(1936,273,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(1937,273,5,'The course content is relevant.','LIKERT','Content','3',60),
(1938,273,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1939,274,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(1940,274,2,'Rate the teacher''s communication skills.','SLIDER','Communication','77',77),
(1941,274,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(1942,274,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(1943,274,5,'The course content is relevant.','LIKERT','Content','3',60),
(1944,274,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1945,275,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(1946,275,2,'Rate the teacher''s communication skills.','SLIDER','Communication','65',65),
(1947,275,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(1948,275,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(1949,275,5,'The course content is relevant.','LIKERT','Content','4',80),
(1950,275,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1951,276,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(1952,276,2,'Rate the teacher''s communication skills.','SLIDER','Communication','78',78),
(1953,276,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(1954,276,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(1955,276,5,'The course content is relevant.','LIKERT','Content','4',80),
(1956,276,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1957,277,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(1958,277,2,'Rate the teacher''s communication skills.','SLIDER','Communication','72',72),
(1959,277,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(1960,277,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(1961,277,5,'The course content is relevant.','LIKERT','Content','3',60),
(1962,277,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1963,278,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(1964,278,2,'Rate the teacher''s communication skills.','SLIDER','Communication','66',66),
(1965,278,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(1966,278,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(1967,278,5,'The course content is relevant.','LIKERT','Content','4',80),
(1968,278,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1969,279,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(1970,279,2,'Rate the teacher''s communication skills.','SLIDER','Communication','75',75),
(1971,279,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(1972,279,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(1973,279,5,'The course content is relevant.','LIKERT','Content','3',60),
(1974,279,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1975,280,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(1976,280,2,'Rate the teacher''s communication skills.','SLIDER','Communication','70',70),
(1977,280,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(1978,280,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(1979,280,5,'The course content is relevant.','LIKERT','Content','3',60),
(1980,280,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

-- ── HIGH: CY Responses 281-290 (salman.butt) ─────────────────
INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1981,281,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1982,281,2,'Rate the teacher''s communication skills.','SLIDER','Communication','93',93),
(1983,281,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1984,281,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1985,281,5,'The course content is relevant.','LIKERT','Content','5',100),
(1986,281,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1987,282,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(1988,282,2,'Rate the teacher''s communication skills.','SLIDER','Communication','89',89),
(1989,282,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(1990,282,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(1991,282,5,'The course content is relevant.','LIKERT','Content','5',100),
(1992,282,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1993,283,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(1994,283,2,'Rate the teacher''s communication skills.','SLIDER','Communication','87',87),
(1995,283,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(1996,283,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(1997,283,5,'The course content is relevant.','LIKERT','Content','4',80),
(1998,283,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(1999,284,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2000,284,2,'Rate the teacher''s communication skills.','SLIDER','Communication','95',95),
(2001,284,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2002,284,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2003,284,5,'The course content is relevant.','LIKERT','Content','5',100),
(2004,284,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2005,285,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2006,285,2,'Rate the teacher''s communication skills.','SLIDER','Communication','91',91),
(2007,285,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2008,285,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2009,285,5,'The course content is relevant.','LIKERT','Content','4',80),
(2010,285,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2011,286,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2012,286,2,'Rate the teacher''s communication skills.','SLIDER','Communication','85',85),
(2013,286,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2014,286,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2015,286,5,'The course content is relevant.','LIKERT','Content','5',100),
(2016,286,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2017,287,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2018,287,2,'Rate the teacher''s communication skills.','SLIDER','Communication','96',96),
(2019,287,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2020,287,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2021,287,5,'The course content is relevant.','LIKERT','Content','5',100),
(2022,287,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2023,288,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2024,288,2,'Rate the teacher''s communication skills.','SLIDER','Communication','90',90),
(2025,288,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2026,288,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2027,288,5,'The course content is relevant.','LIKERT','Content','4',80),
(2028,288,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2029,289,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2030,289,2,'Rate the teacher''s communication skills.','SLIDER','Communication','88',88),
(2031,289,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2032,289,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2033,289,5,'The course content is relevant.','LIKERT','Content','5',100),
(2034,289,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2035,290,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2036,290,2,'Rate the teacher''s communication skills.','SLIDER','Communication','93',93),
(2037,290,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2038,290,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2039,290,5,'The course content is relevant.','LIKERT','Content','5',100),
(2040,290,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

-- ── AVG: CY Responses 291-300 (asma.javed) ───────────────────
INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2041,291,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2042,291,2,'Rate the teacher''s communication skills.','SLIDER','Communication','73',73),
(2043,291,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(2044,291,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2045,291,5,'The course content is relevant.','LIKERT','Content','3',60),
(2046,291,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2047,292,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(2048,292,2,'Rate the teacher''s communication skills.','SLIDER','Communication','68',68),
(2049,292,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2050,292,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(2051,292,5,'The course content is relevant.','LIKERT','Content','4',80),
(2052,292,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2053,293,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2054,293,2,'Rate the teacher''s communication skills.','SLIDER','Communication','76',76),
(2055,293,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(2056,293,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2057,293,5,'The course content is relevant.','LIKERT','Content','3',60),
(2058,293,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2059,294,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(2060,294,2,'Rate the teacher''s communication skills.','SLIDER','Communication','70',70),
(2061,294,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(2062,294,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(2063,294,5,'The course content is relevant.','LIKERT','Content','3',60),
(2064,294,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2065,295,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2066,295,2,'Rate the teacher''s communication skills.','SLIDER','Communication','78',78),
(2067,295,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2068,295,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2069,295,5,'The course content is relevant.','LIKERT','Content','4',80),
(2070,295,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2071,296,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(2072,296,2,'Rate the teacher''s communication skills.','SLIDER','Communication','65',65),
(2073,296,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(2074,296,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(2075,296,5,'The course content is relevant.','LIKERT','Content','3',60),
(2076,296,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2077,297,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2078,297,2,'Rate the teacher''s communication skills.','SLIDER','Communication','72',72),
(2079,297,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2080,297,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(2081,297,5,'The course content is relevant.','LIKERT','Content','4',80),
(2082,297,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2083,298,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(2084,298,2,'Rate the teacher''s communication skills.','SLIDER','Communication','75',75),
(2085,298,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(2086,298,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2087,298,5,'The course content is relevant.','LIKERT','Content','3',60),
(2088,298,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2089,299,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2090,299,2,'Rate the teacher''s communication skills.','SLIDER','Communication','67',67),
(2091,299,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2092,299,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2093,299,5,'The course content is relevant.','LIKERT','Content','4',80),
(2094,299,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2095,300,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(2096,300,2,'Rate the teacher''s communication skills.','SLIDER','Communication','71',71),
(2097,300,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(2098,300,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(2099,300,5,'The course content is relevant.','LIKERT','Content','4',80),
(2100,300,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

-- ══════════════════════════════════════════════════════════════
-- CS SPRING 2023  (responses 301-320)
-- HIGH: zainab.khattak → responses 301-310
-- AVG:  farah.noor     → responses 311-320
-- ══════════════════════════════════════════════════════════════

-- Response 301 (ali.hassan → zainab.khattak, HIGH)
INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2101,301,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2102,301,2,'Rate the teacher''s communication skills.','SLIDER','Communication','91',91),
(2103,301,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2104,301,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2105,301,5,'The course content is relevant.','LIKERT','Content','4',80),
(2106,301,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2107,302,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2108,302,2,'Rate the teacher''s communication skills.','SLIDER','Communication','88',88),
(2109,302,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2110,302,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2111,302,5,'The course content is relevant.','LIKERT','Content','5',100),
(2112,302,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2113,303,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2114,303,2,'Rate the teacher''s communication skills.','SLIDER','Communication','93',93),
(2115,303,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2116,303,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2117,303,5,'The course content is relevant.','LIKERT','Content','5',100),
(2118,303,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2119,304,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2120,304,2,'Rate the teacher''s communication skills.','SLIDER','Communication','87',87),
(2121,304,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2122,304,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2123,304,5,'The course content is relevant.','LIKERT','Content','4',80),
(2124,304,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2125,305,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2126,305,2,'Rate the teacher''s communication skills.','SLIDER','Communication','90',90),
(2127,305,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2128,305,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2129,305,5,'The course content is relevant.','LIKERT','Content','5',100),
(2130,305,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2131,306,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2132,306,2,'Rate the teacher''s communication skills.','SLIDER','Communication','95',95),
(2133,306,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2134,306,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2135,306,5,'The course content is relevant.','LIKERT','Content','5',100),
(2136,306,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2137,307,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2138,307,2,'Rate the teacher''s communication skills.','SLIDER','Communication','86',86),
(2139,307,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2140,307,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2141,307,5,'The course content is relevant.','LIKERT','Content','4',80),
(2142,307,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2143,308,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2144,308,2,'Rate the teacher''s communication skills.','SLIDER','Communication','92',92),
(2145,308,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2146,308,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2147,308,5,'The course content is relevant.','LIKERT','Content','5',100),
(2148,308,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2149,309,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2150,309,2,'Rate the teacher''s communication skills.','SLIDER','Communication','89',89),
(2151,309,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2152,309,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2153,309,5,'The course content is relevant.','LIKERT','Content','5',100),
(2154,309,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2155,310,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2156,310,2,'Rate the teacher''s communication skills.','SLIDER','Communication','97',97),
(2157,310,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2158,310,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2159,310,5,'The course content is relevant.','LIKERT','Content','5',100),
(2160,310,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

-- AVG: farah.noor → responses 311-320
INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2161,311,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(2162,311,2,'Rate the teacher''s communication skills.','SLIDER','Communication','70',70),
(2163,311,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2164,311,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(2165,311,5,'The course content is relevant.','LIKERT','Content','4',80),
(2166,311,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2167,312,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2168,312,2,'Rate the teacher''s communication skills.','SLIDER','Communication','68',68),
(2169,312,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(2170,312,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2171,312,5,'The course content is relevant.','LIKERT','Content','3',60),
(2172,312,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2173,313,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(2174,313,2,'Rate the teacher''s communication skills.','SLIDER','Communication','74',74),
(2175,313,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2176,313,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(2177,313,5,'The course content is relevant.','LIKERT','Content','4',80),
(2178,313,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2179,314,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2180,314,2,'Rate the teacher''s communication skills.','SLIDER','Communication','72',72),
(2181,314,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(2182,314,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2183,314,5,'The course content is relevant.','LIKERT','Content','3',60),
(2184,314,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2185,315,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(2186,315,2,'Rate the teacher''s communication skills.','SLIDER','Communication','66',66),
(2187,315,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(2188,315,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(2189,315,5,'The course content is relevant.','LIKERT','Content','4',80),
(2190,315,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2191,316,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2192,316,2,'Rate the teacher''s communication skills.','SLIDER','Communication','76',76),
(2193,316,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2194,316,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(2195,316,5,'The course content is relevant.','LIKERT','Content','4',80),
(2196,316,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2197,317,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(2198,317,2,'Rate the teacher''s communication skills.','SLIDER','Communication','65',65),
(2199,317,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(2200,317,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2201,317,5,'The course content is relevant.','LIKERT','Content','3',60),
(2202,317,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2203,318,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2204,318,2,'Rate the teacher''s communication skills.','SLIDER','Communication','78',78),
(2205,318,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2206,318,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(2207,318,5,'The course content is relevant.','LIKERT','Content','4',80),
(2208,318,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2209,319,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(2210,319,2,'Rate the teacher''s communication skills.','SLIDER','Communication','71',71),
(2211,319,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(2212,319,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(2213,319,5,'The course content is relevant.','LIKERT','Content','3',60),
(2214,319,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2215,320,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2216,320,2,'Rate the teacher''s communication skills.','SLIDER','Communication','75',75),
(2217,320,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2218,320,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2219,320,5,'The course content is relevant.','LIKERT','Content','3',60),
(2220,320,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

-- ══════════════════════════════════════════════════════════════
-- EE SPRING 2023  (responses 321-340)
-- HIGH: amna.riaz    → responses 321-330
-- AVG:  mariam.hanif → responses 331-340
-- ══════════════════════════════════════════════════════════════

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2221,321,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2222,321,2,'Rate the teacher''s communication skills.','SLIDER','Communication','92',92),
(2223,321,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2224,321,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2225,321,5,'The course content is relevant.','LIKERT','Content','5',100),
(2226,321,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2227,322,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2228,322,2,'Rate the teacher''s communication skills.','SLIDER','Communication','88',88),
(2229,322,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2230,322,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2231,322,5,'The course content is relevant.','LIKERT','Content','5',100),
(2232,322,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2233,323,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2234,323,2,'Rate the teacher''s communication skills.','SLIDER','Communication','86',86),
(2235,323,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2236,323,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2237,323,5,'The course content is relevant.','LIKERT','Content','4',80),
(2238,323,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2239,324,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2240,324,2,'Rate the teacher''s communication skills.','SLIDER','Communication','94',94),
(2241,324,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2242,324,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2243,324,5,'The course content is relevant.','LIKERT','Content','5',100),
(2244,324,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2245,325,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2246,325,2,'Rate the teacher''s communication skills.','SLIDER','Communication','90',90),
(2247,325,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2248,325,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2249,325,5,'The course content is relevant.','LIKERT','Content','4',80),
(2250,325,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2251,326,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2252,326,2,'Rate the teacher''s communication skills.','SLIDER','Communication','96',96),
(2253,326,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2254,326,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2255,326,5,'The course content is relevant.','LIKERT','Content','5',100),
(2256,326,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2257,327,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2258,327,2,'Rate the teacher''s communication skills.','SLIDER','Communication','85',85),
(2259,327,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2260,327,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2261,327,5,'The course content is relevant.','LIKERT','Content','5',100),
(2262,327,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2263,328,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2264,328,2,'Rate the teacher''s communication skills.','SLIDER','Communication','91',91),
(2265,328,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2266,328,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2267,328,5,'The course content is relevant.','LIKERT','Content','4',80),
(2268,328,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2269,329,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2270,329,2,'Rate the teacher''s communication skills.','SLIDER','Communication','89',89),
(2271,329,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2272,329,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2273,329,5,'The course content is relevant.','LIKERT','Content','5',100),
(2274,329,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2275,330,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2276,330,2,'Rate the teacher''s communication skills.','SLIDER','Communication','93',93),
(2277,330,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2278,330,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2279,330,5,'The course content is relevant.','LIKERT','Content','5',100),
(2280,330,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

-- AVG: mariam.hanif → responses 331-340
INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2281,331,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2282,331,2,'Rate the teacher''s communication skills.','SLIDER','Communication','73',73),
(2283,331,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(2284,331,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2285,331,5,'The course content is relevant.','LIKERT','Content','3',60),
(2286,331,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2287,332,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(2288,332,2,'Rate the teacher''s communication skills.','SLIDER','Communication','67',67),
(2289,332,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2290,332,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(2291,332,5,'The course content is relevant.','LIKERT','Content','4',80),
(2292,332,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2293,333,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2294,333,2,'Rate the teacher''s communication skills.','SLIDER','Communication','76',76),
(2295,333,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(2296,333,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2297,333,5,'The course content is relevant.','LIKERT','Content','3',60),
(2298,333,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2299,334,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(2300,334,2,'Rate the teacher''s communication skills.','SLIDER','Communication','70',70),
(2301,334,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(2302,334,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(2303,334,5,'The course content is relevant.','LIKERT','Content','4',80),
(2304,334,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2305,335,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2306,335,2,'Rate the teacher''s communication skills.','SLIDER','Communication','78',78),
(2307,335,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2308,335,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(2309,335,5,'The course content is relevant.','LIKERT','Content','4',80),
(2310,335,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2311,336,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(2312,336,2,'Rate the teacher''s communication skills.','SLIDER','Communication','65',65),
(2313,336,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(2314,336,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2315,336,5,'The course content is relevant.','LIKERT','Content','3',60),
(2316,336,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2317,337,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2318,337,2,'Rate the teacher''s communication skills.','SLIDER','Communication','72',72),
(2319,337,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2320,337,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(2321,337,5,'The course content is relevant.','LIKERT','Content','4',80),
(2322,337,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2323,338,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(2324,338,2,'Rate the teacher''s communication skills.','SLIDER','Communication','69',69),
(2325,338,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(2326,338,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(2327,338,5,'The course content is relevant.','LIKERT','Content','3',60),
(2328,338,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2329,339,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2330,339,2,'Rate the teacher''s communication skills.','SLIDER','Communication','75',75),
(2331,339,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2332,339,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2333,339,5,'The course content is relevant.','LIKERT','Content','3',60),
(2334,339,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2335,340,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(2336,340,2,'Rate the teacher''s communication skills.','SLIDER','Communication','68',68),
(2337,340,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(2338,340,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2339,340,5,'The course content is relevant.','LIKERT','Content','4',80),
(2340,340,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

-- ══════════════════════════════════════════════════════════════
-- AI SPRING 2023  (responses 341-360)
-- HIGH: sumbul.haider → responses 341-350
-- AVG:  muzammil.khan → responses 351-360
-- ══════════════════════════════════════════════════════════════

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2341,341,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2342,341,2,'Rate the teacher''s communication skills.','SLIDER','Communication','93',93),
(2343,341,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2344,341,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2345,341,5,'The course content is relevant.','LIKERT','Content','5',100),
(2346,341,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2347,342,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2348,342,2,'Rate the teacher''s communication skills.','SLIDER','Communication','89',89),
(2349,342,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2350,342,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2351,342,5,'The course content is relevant.','LIKERT','Content','5',100),
(2352,342,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2353,343,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2354,343,2,'Rate the teacher''s communication skills.','SLIDER','Communication','87',87),
(2355,343,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2356,343,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2357,343,5,'The course content is relevant.','LIKERT','Content','4',80),
(2358,343,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2359,344,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2360,344,2,'Rate the teacher''s communication skills.','SLIDER','Communication','95',95),
(2361,344,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2362,344,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2363,344,5,'The course content is relevant.','LIKERT','Content','5',100),
(2364,344,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2365,345,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2366,345,2,'Rate the teacher''s communication skills.','SLIDER','Communication','91',91),
(2367,345,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2368,345,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2369,345,5,'The course content is relevant.','LIKERT','Content','4',80),
(2370,345,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2371,346,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2372,346,2,'Rate the teacher''s communication skills.','SLIDER','Communication','90',90),
(2373,346,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2374,346,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2375,346,5,'The course content is relevant.','LIKERT','Content','5',100),
(2376,346,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2377,347,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2378,347,2,'Rate the teacher''s communication skills.','SLIDER','Communication','85',85),
(2379,347,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2380,347,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2381,347,5,'The course content is relevant.','LIKERT','Content','5',100),
(2382,347,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2383,348,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2384,348,2,'Rate the teacher''s communication skills.','SLIDER','Communication','92',92),
(2385,348,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2386,348,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2387,348,5,'The course content is relevant.','LIKERT','Content','4',80),
(2388,348,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2389,349,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2390,349,2,'Rate the teacher''s communication skills.','SLIDER','Communication','88',88),
(2391,349,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2392,349,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2393,349,5,'The course content is relevant.','LIKERT','Content','5',100),
(2394,349,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2395,350,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2396,350,2,'Rate the teacher''s communication skills.','SLIDER','Communication','97',97),
(2397,350,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2398,350,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2399,350,5,'The course content is relevant.','LIKERT','Content','5',100),
(2400,350,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

-- AVG: muzammil.khan → responses 351-360
INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2401,351,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(2402,351,2,'Rate the teacher''s communication skills.','SLIDER','Communication','71',71),
(2403,351,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2404,351,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(2405,351,5,'The course content is relevant.','LIKERT','Content','4',80),
(2406,351,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2407,352,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2408,352,2,'Rate the teacher''s communication skills.','SLIDER','Communication','66',66),
(2409,352,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(2410,352,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2411,352,5,'The course content is relevant.','LIKERT','Content','3',60),
(2412,352,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2413,353,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(2414,353,2,'Rate the teacher''s communication skills.','SLIDER','Communication','74',74),
(2415,353,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(2416,353,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(2417,353,5,'The course content is relevant.','LIKERT','Content','4',80),
(2418,353,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2419,354,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2420,354,2,'Rate the teacher''s communication skills.','SLIDER','Communication','77',77),
(2421,354,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2422,354,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(2423,354,5,'The course content is relevant.','LIKERT','Content','4',80),
(2424,354,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2425,355,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(2426,355,2,'Rate the teacher''s communication skills.','SLIDER','Communication','69',69),
(2427,355,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(2428,355,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2429,355,5,'The course content is relevant.','LIKERT','Content','3',60),
(2430,355,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2431,356,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2432,356,2,'Rate the teacher''s communication skills.','SLIDER','Communication','73',73),
(2433,356,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2434,356,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(2435,356,5,'The course content is relevant.','LIKERT','Content','4',80),
(2436,356,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2437,357,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(2438,357,2,'Rate the teacher''s communication skills.','SLIDER','Communication','65',65),
(2439,357,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(2440,357,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(2441,357,5,'The course content is relevant.','LIKERT','Content','3',60),
(2442,357,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2443,358,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2444,358,2,'Rate the teacher''s communication skills.','SLIDER','Communication','78',78),
(2445,358,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(2446,358,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2447,358,5,'The course content is relevant.','LIKERT','Content','4',80),
(2448,358,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2449,359,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(2450,359,2,'Rate the teacher''s communication skills.','SLIDER','Communication','72',72),
(2451,359,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2452,359,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(2453,359,5,'The course content is relevant.','LIKERT','Content','3',60),
(2454,359,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2455,360,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2456,360,2,'Rate the teacher''s communication skills.','SLIDER','Communication','70',70),
(2457,360,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2458,360,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2459,360,5,'The course content is relevant.','LIKERT','Content','3',60),
(2460,360,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

-- ══════════════════════════════════════════════════════════════
-- DS SPRING 2023  (responses 361-380)
-- HIGH: adil.rehman  → responses 361-370
-- AVG:  sumaira.naz  → responses 371-380
-- ══════════════════════════════════════════════════════════════

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2461,361,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2462,361,2,'Rate the teacher''s communication skills.','SLIDER','Communication','91',91),
(2463,361,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2464,361,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2465,361,5,'The course content is relevant.','LIKERT','Content','5',100),
(2466,361,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2467,362,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2468,362,2,'Rate the teacher''s communication skills.','SLIDER','Communication','87',87),
(2469,362,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2470,362,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2471,362,5,'The course content is relevant.','LIKERT','Content','5',100),
(2472,362,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2473,363,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2474,363,2,'Rate the teacher''s communication skills.','SLIDER','Communication','93',93),
(2475,363,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2476,363,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2477,363,5,'The course content is relevant.','LIKERT','Content','4',80),
(2478,363,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2479,364,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2480,364,2,'Rate the teacher''s communication skills.','SLIDER','Communication','89',89),
(2481,364,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2482,364,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2483,364,5,'The course content is relevant.','LIKERT','Content','5',100),
(2484,364,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2485,365,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2486,365,2,'Rate the teacher''s communication skills.','SLIDER','Communication','85',85),
(2487,365,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2488,365,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2489,365,5,'The course content is relevant.','LIKERT','Content','4',80),
(2490,365,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2491,366,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2492,366,2,'Rate the teacher''s communication skills.','SLIDER','Communication','96',96),
(2493,366,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2494,366,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2495,366,5,'The course content is relevant.','LIKERT','Content','5',100),
(2496,366,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2497,367,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2498,367,2,'Rate the teacher''s communication skills.','SLIDER','Communication','90',90),
(2499,367,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2500,367,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2501,367,5,'The course content is relevant.','LIKERT','Content','5',100),
(2502,367,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2503,368,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2504,368,2,'Rate the teacher''s communication skills.','SLIDER','Communication','88',88),
(2505,368,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2506,368,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2507,368,5,'The course content is relevant.','LIKERT','Content','4',80),
(2508,368,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2509,369,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2510,369,2,'Rate the teacher''s communication skills.','SLIDER','Communication','94',94),
(2511,369,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2512,369,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2513,369,5,'The course content is relevant.','LIKERT','Content','5',100),
(2514,369,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2515,370,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2516,370,2,'Rate the teacher''s communication skills.','SLIDER','Communication','92',92),
(2517,370,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2518,370,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2519,370,5,'The course content is relevant.','LIKERT','Content','5',100),
(2520,370,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

-- AVG: sumaira.naz → responses 371-380
INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2521,371,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2522,371,2,'Rate the teacher''s communication skills.','SLIDER','Communication','74',74),
(2523,371,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(2524,371,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2525,371,5,'The course content is relevant.','LIKERT','Content','4',80),
(2526,371,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2527,372,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(2528,372,2,'Rate the teacher''s communication skills.','SLIDER','Communication','68',68),
(2529,372,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2530,372,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(2531,372,5,'The course content is relevant.','LIKERT','Content','3',60),
(2532,372,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2533,373,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2534,373,2,'Rate the teacher''s communication skills.','SLIDER','Communication','76',76),
(2535,373,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(2536,373,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2537,373,5,'The course content is relevant.','LIKERT','Content','4',80),
(2538,373,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2539,374,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(2540,374,2,'Rate the teacher''s communication skills.','SLIDER','Communication','70',70),
(2541,374,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(2542,374,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(2543,374,5,'The course content is relevant.','LIKERT','Content','3',60),
(2544,374,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2545,375,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2546,375,2,'Rate the teacher''s communication skills.','SLIDER','Communication','78',78),
(2547,375,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2548,375,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(2549,375,5,'The course content is relevant.','LIKERT','Content','4',80),
(2550,375,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2551,376,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(2552,376,2,'Rate the teacher''s communication skills.','SLIDER','Communication','65',65),
(2553,376,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(2554,376,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2555,376,5,'The course content is relevant.','LIKERT','Content','3',60),
(2556,376,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2557,377,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2558,377,2,'Rate the teacher''s communication skills.','SLIDER','Communication','73',73),
(2559,377,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2560,377,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(2561,377,5,'The course content is relevant.','LIKERT','Content','4',80),
(2562,377,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2563,378,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(2564,378,2,'Rate the teacher''s communication skills.','SLIDER','Communication','69',69),
(2565,378,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(2566,378,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(2567,378,5,'The course content is relevant.','LIKERT','Content','3',60),
(2568,378,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2569,379,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2570,379,2,'Rate the teacher''s communication skills.','SLIDER','Communication','75',75),
(2571,379,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2572,379,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2573,379,5,'The course content is relevant.','LIKERT','Content','3',60),
(2574,379,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2575,380,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(2576,380,2,'Rate the teacher''s communication skills.','SLIDER','Communication','71',71),
(2577,380,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(2578,380,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(2579,380,5,'The course content is relevant.','LIKERT','Content','4',80),
(2580,380,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

-- ══════════════════════════════════════════════════════════════
-- CY SPRING 2023  (responses 381-400)
-- HIGH: zubair.mirza   → responses 381-390
-- AVG:  haseena.kousar → responses 391-400
-- ══════════════════════════════════════════════════════════════

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2581,381,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2582,381,2,'Rate the teacher''s communication skills.','SLIDER','Communication','92',92),
(2583,381,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2584,381,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2585,381,5,'The course content is relevant.','LIKERT','Content','5',100),
(2586,381,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2587,382,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2588,382,2,'Rate the teacher''s communication skills.','SLIDER','Communication','88',88),
(2589,382,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2590,382,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2591,382,5,'The course content is relevant.','LIKERT','Content','5',100),
(2592,382,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2593,383,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2594,383,2,'Rate the teacher''s communication skills.','SLIDER','Communication','86',86),
(2595,383,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2596,383,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2597,383,5,'The course content is relevant.','LIKERT','Content','4',80),
(2598,383,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2599,384,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2600,384,2,'Rate the teacher''s communication skills.','SLIDER','Communication','95',95),
(2601,384,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2602,384,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2603,384,5,'The course content is relevant.','LIKERT','Content','5',100),
(2604,384,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2605,385,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2606,385,2,'Rate the teacher''s communication skills.','SLIDER','Communication','90',90),
(2607,385,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2608,385,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2609,385,5,'The course content is relevant.','LIKERT','Content','4',80),
(2610,385,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2611,386,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2612,386,2,'Rate the teacher''s communication skills.','SLIDER','Communication','85',85),
(2613,386,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2614,386,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2615,386,5,'The course content is relevant.','LIKERT','Content','5',100),
(2616,386,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2617,387,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2618,387,2,'Rate the teacher''s communication skills.','SLIDER','Communication','96',96),
(2619,387,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2620,387,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2621,387,5,'The course content is relevant.','LIKERT','Content','5',100),
(2622,387,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2623,388,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2624,388,2,'Rate the teacher''s communication skills.','SLIDER','Communication','91',91),
(2625,388,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2626,388,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2627,388,5,'The course content is relevant.','LIKERT','Content','4',80),
(2628,388,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2629,389,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2630,389,2,'Rate the teacher''s communication skills.','SLIDER','Communication','89',89),
(2631,389,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2632,389,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2633,389,5,'The course content is relevant.','LIKERT','Content','5',100),
(2634,389,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2635,390,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2636,390,2,'Rate the teacher''s communication skills.','SLIDER','Communication','93',93),
(2637,390,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2638,390,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2639,390,5,'The course content is relevant.','LIKERT','Content','5',100),
(2640,390,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

-- AVG: haseena.kousar → responses 391-400
INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2641,391,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(2642,391,2,'Rate the teacher''s communication skills.','SLIDER','Communication','72',72),
(2643,391,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2644,391,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(2645,391,5,'The course content is relevant.','LIKERT','Content','4',80),
(2646,391,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2647,392,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2648,392,2,'Rate the teacher''s communication skills.','SLIDER','Communication','67',67),
(2649,392,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(2650,392,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2651,392,5,'The course content is relevant.','LIKERT','Content','3',60),
(2652,392,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2653,393,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(2654,393,2,'Rate the teacher''s communication skills.','SLIDER','Communication','75',75),
(2655,393,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(2656,393,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(2657,393,5,'The course content is relevant.','LIKERT','Content','4',80),
(2658,393,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2659,394,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2660,394,2,'Rate the teacher''s communication skills.','SLIDER','Communication','77',77),
(2661,394,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2662,394,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(2663,394,5,'The course content is relevant.','LIKERT','Content','4',80),
(2664,394,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2665,395,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(2666,395,2,'Rate the teacher''s communication skills.','SLIDER','Communication','65',65),
(2667,395,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(2668,395,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2669,395,5,'The course content is relevant.','LIKERT','Content','3',60),
(2670,395,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2671,396,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2672,396,2,'Rate the teacher''s communication skills.','SLIDER','Communication','73',73),
(2673,396,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2674,396,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(2675,396,5,'The course content is relevant.','LIKERT','Content','4',80),
(2676,396,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2677,397,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(2678,397,2,'Rate the teacher''s communication skills.','SLIDER','Communication','69',69),
(2679,397,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(2680,397,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(2681,397,5,'The course content is relevant.','LIKERT','Content','3',60),
(2682,397,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2683,398,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2684,398,2,'Rate the teacher''s communication skills.','SLIDER','Communication','78',78),
(2685,398,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(2686,398,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2687,398,5,'The course content is relevant.','LIKERT','Content','4',80),
(2688,398,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2689,399,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(2690,399,2,'Rate the teacher''s communication skills.','SLIDER','Communication','71',71),
(2691,399,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2692,399,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(2693,399,5,'The course content is relevant.','LIKERT','Content','3',60),
(2694,399,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2695,400,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2696,400,2,'Rate the teacher''s communication skills.','SLIDER','Communication','74',74),
(2697,400,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2698,400,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2699,400,5,'The course content is relevant.','LIKERT','Content','3',60),
(2700,400,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

SET IDENTITY_INSERT response_answers OFF;
GO

-- ============================================================
-- FALL 2023  RESPONSE ANSWERS  (IDs 2701–3300)
-- HIGH: hassan.iqbal / zaheer.abbas / nosheen.arif / faisal.umar / babar.munir
-- AVG:  rabia.tanveer / fauzia.yousaf / ghazala.parveen / tehzeeb.gul / aisha.siddiqui
-- ============================================================

SET IDENTITY_INSERT response_answers ON;

-- ══════════════════════════════════════════════════════════════
-- CS FALL 2023  (responses 401-420)
-- HIGH: hassan.iqbal  → responses 401-410
-- AVG:  rabia.tanveer → responses 411-420
-- ══════════════════════════════════════════════════════════════

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2701,401,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2702,401,2,'Rate the teacher''s communication skills.','SLIDER','Communication','94',94),
(2703,401,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2704,401,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2705,401,5,'The course content is relevant.','LIKERT','Content','5',100),
(2706,401,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2707,402,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2708,402,2,'Rate the teacher''s communication skills.','SLIDER','Communication','89',89),
(2709,402,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2710,402,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2711,402,5,'The course content is relevant.','LIKERT','Content','5',100),
(2712,402,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2713,403,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2714,403,2,'Rate the teacher''s communication skills.','SLIDER','Communication','87',87),
(2715,403,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2716,403,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2717,403,5,'The course content is relevant.','LIKERT','Content','4',80),
(2718,403,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2719,404,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2720,404,2,'Rate the teacher''s communication skills.','SLIDER','Communication','93',93),
(2721,404,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2722,404,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2723,404,5,'The course content is relevant.','LIKERT','Content','5',100),
(2724,404,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2725,405,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2726,405,2,'Rate the teacher''s communication skills.','SLIDER','Communication','91',91),
(2727,405,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2728,405,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2729,405,5,'The course content is relevant.','LIKERT','Content','4',80),
(2730,405,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2731,406,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2732,406,2,'Rate the teacher''s communication skills.','SLIDER','Communication','85',85),
(2733,406,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2734,406,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2735,406,5,'The course content is relevant.','LIKERT','Content','5',100),
(2736,406,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2737,407,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2738,407,2,'Rate the teacher''s communication skills.','SLIDER','Communication','90',90),
(2739,407,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2740,407,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2741,407,5,'The course content is relevant.','LIKERT','Content','5',100),
(2742,407,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2743,408,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2744,408,2,'Rate the teacher''s communication skills.','SLIDER','Communication','96',96),
(2745,408,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2746,408,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2747,408,5,'The course content is relevant.','LIKERT','Content','5',100),
(2748,408,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2749,409,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2750,409,2,'Rate the teacher''s communication skills.','SLIDER','Communication','88',88),
(2751,409,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2752,409,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2753,409,5,'The course content is relevant.','LIKERT','Content','4',80),
(2754,409,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2755,410,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2756,410,2,'Rate the teacher''s communication skills.','SLIDER','Communication','92',92),
(2757,410,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2758,410,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2759,410,5,'The course content is relevant.','LIKERT','Content','5',100),
(2760,410,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

-- AVG: rabia.tanveer → responses 411-420
INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2761,411,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2762,411,2,'Rate the teacher''s communication skills.','SLIDER','Communication','73',73),
(2763,411,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(2764,411,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2765,411,5,'The course content is relevant.','LIKERT','Content','3',60),
(2766,411,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2767,412,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(2768,412,2,'Rate the teacher''s communication skills.','SLIDER','Communication','67',67),
(2769,412,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2770,412,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(2771,412,5,'The course content is relevant.','LIKERT','Content','4',80),
(2772,412,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2773,413,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2774,413,2,'Rate the teacher''s communication skills.','SLIDER','Communication','76',76),
(2775,413,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(2776,413,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2777,413,5,'The course content is relevant.','LIKERT','Content','3',60),
(2778,413,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2779,414,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(2780,414,2,'Rate the teacher''s communication skills.','SLIDER','Communication','70',70),
(2781,414,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(2782,414,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(2783,414,5,'The course content is relevant.','LIKERT','Content','4',80),
(2784,414,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2785,415,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2786,415,2,'Rate the teacher''s communication skills.','SLIDER','Communication','78',78),
(2787,415,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2788,415,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(2789,415,5,'The course content is relevant.','LIKERT','Content','4',80),
(2790,415,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2791,416,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(2792,416,2,'Rate the teacher''s communication skills.','SLIDER','Communication','65',65),
(2793,416,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(2794,416,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2795,416,5,'The course content is relevant.','LIKERT','Content','3',60),
(2796,416,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2797,417,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2798,417,2,'Rate the teacher''s communication skills.','SLIDER','Communication','72',72),
(2799,417,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2800,417,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(2801,417,5,'The course content is relevant.','LIKERT','Content','4',80),
(2802,417,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2803,418,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(2804,418,2,'Rate the teacher''s communication skills.','SLIDER','Communication','69',69),
(2805,418,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(2806,418,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(2807,418,5,'The course content is relevant.','LIKERT','Content','3',60),
(2808,418,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2809,419,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2810,419,2,'Rate the teacher''s communication skills.','SLIDER','Communication','75',75),
(2811,419,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2812,419,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2813,419,5,'The course content is relevant.','LIKERT','Content','3',60),
(2814,419,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2815,420,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(2816,420,2,'Rate the teacher''s communication skills.','SLIDER','Communication','68',68),
(2817,420,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(2818,420,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2819,420,5,'The course content is relevant.','LIKERT','Content','4',80),
(2820,420,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

-- ══════════════════════════════════════════════════════════════
-- EE FALL 2023  (responses 421-440)
-- HIGH: zaheer.abbas  → responses 421-430
-- AVG:  fauzia.yousaf → responses 431-440
-- ══════════════════════════════════════════════════════════════

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2821,421,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2822,421,2,'Rate the teacher''s communication skills.','SLIDER','Communication','93',93),
(2823,421,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2824,421,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2825,421,5,'The course content is relevant.','LIKERT','Content','5',100),
(2826,421,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2827,422,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2828,422,2,'Rate the teacher''s communication skills.','SLIDER','Communication','88',88),
(2829,422,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2830,422,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2831,422,5,'The course content is relevant.','LIKERT','Content','5',100),
(2832,422,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2833,423,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2834,423,2,'Rate the teacher''s communication skills.','SLIDER','Communication','91',91),
(2835,423,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2836,423,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2837,423,5,'The course content is relevant.','LIKERT','Content','4',80),
(2838,423,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2839,424,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2840,424,2,'Rate the teacher''s communication skills.','SLIDER','Communication','97',97),
(2841,424,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2842,424,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2843,424,5,'The course content is relevant.','LIKERT','Content','5',100),
(2844,424,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2845,425,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2846,425,2,'Rate the teacher''s communication skills.','SLIDER','Communication','86',86),
(2847,425,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2848,425,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2849,425,5,'The course content is relevant.','LIKERT','Content','4',80),
(2850,425,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2851,426,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2852,426,2,'Rate the teacher''s communication skills.','SLIDER','Communication','90',90),
(2853,426,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2854,426,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2855,426,5,'The course content is relevant.','LIKERT','Content','5',100),
(2856,426,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2857,427,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2858,427,2,'Rate the teacher''s communication skills.','SLIDER','Communication','85',85),
(2859,427,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2860,427,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2861,427,5,'The course content is relevant.','LIKERT','Content','5',100),
(2862,427,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2863,428,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2864,428,2,'Rate the teacher''s communication skills.','SLIDER','Communication','92',92),
(2865,428,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2866,428,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2867,428,5,'The course content is relevant.','LIKERT','Content','4',80),
(2868,428,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2869,429,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2870,429,2,'Rate the teacher''s communication skills.','SLIDER','Communication','89',89),
(2871,429,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2872,429,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2873,429,5,'The course content is relevant.','LIKERT','Content','5',100),
(2874,429,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2875,430,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2876,430,2,'Rate the teacher''s communication skills.','SLIDER','Communication','95',95),
(2877,430,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2878,430,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2879,430,5,'The course content is relevant.','LIKERT','Content','5',100),
(2880,430,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

-- AVG: fauzia.yousaf → responses 431-440
INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2881,431,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(2882,431,2,'Rate the teacher''s communication skills.','SLIDER','Communication','70',70),
(2883,431,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2884,431,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(2885,431,5,'The course content is relevant.','LIKERT','Content','4',80),
(2886,431,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2887,432,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2888,432,2,'Rate the teacher''s communication skills.','SLIDER','Communication','66',66),
(2889,432,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(2890,432,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2891,432,5,'The course content is relevant.','LIKERT','Content','3',60),
(2892,432,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2893,433,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(2894,433,2,'Rate the teacher''s communication skills.','SLIDER','Communication','74',74),
(2895,433,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(2896,433,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(2897,433,5,'The course content is relevant.','LIKERT','Content','4',80),
(2898,433,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2899,434,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2900,434,2,'Rate the teacher''s communication skills.','SLIDER','Communication','77',77),
(2901,434,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2902,434,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(2903,434,5,'The course content is relevant.','LIKERT','Content','4',80),
(2904,434,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2905,435,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(2906,435,2,'Rate the teacher''s communication skills.','SLIDER','Communication','68',68),
(2907,435,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(2908,435,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2909,435,5,'The course content is relevant.','LIKERT','Content','3',60),
(2910,435,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2911,436,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2912,436,2,'Rate the teacher''s communication skills.','SLIDER','Communication','76',76),
(2913,436,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2914,436,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(2915,436,5,'The course content is relevant.','LIKERT','Content','4',80),
(2916,436,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2917,437,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(2918,437,2,'Rate the teacher''s communication skills.','SLIDER','Communication','65',65),
(2919,437,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(2920,437,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(2921,437,5,'The course content is relevant.','LIKERT','Content','3',60),
(2922,437,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2923,438,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2924,438,2,'Rate the teacher''s communication skills.','SLIDER','Communication','78',78),
(2925,438,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(2926,438,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2927,438,5,'The course content is relevant.','LIKERT','Content','4',80),
(2928,438,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2929,439,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(2930,439,2,'Rate the teacher''s communication skills.','SLIDER','Communication','72',72),
(2931,439,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2932,439,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(2933,439,5,'The course content is relevant.','LIKERT','Content','3',60),
(2934,439,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2935,440,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2936,440,2,'Rate the teacher''s communication skills.','SLIDER','Communication','71',71),
(2937,440,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2938,440,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2939,440,5,'The course content is relevant.','LIKERT','Content','3',60),
(2940,440,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

-- ══════════════════════════════════════════════════════════════
-- AI FALL 2023  (responses 441-460)
-- HIGH: nosheen.arif    → responses 441-450
-- AVG:  ghazala.parveen → responses 451-460
-- ══════════════════════════════════════════════════════════════

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2941,441,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2942,441,2,'Rate the teacher''s communication skills.','SLIDER','Communication','91',91),
(2943,441,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2944,441,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2945,441,5,'The course content is relevant.','LIKERT','Content','5',100),
(2946,441,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2947,442,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2948,442,2,'Rate the teacher''s communication skills.','SLIDER','Communication','87',87),
(2949,442,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2950,442,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2951,442,5,'The course content is relevant.','LIKERT','Content','5',100),
(2952,442,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2953,443,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2954,443,2,'Rate the teacher''s communication skills.','SLIDER','Communication','93',93),
(2955,443,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2956,443,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2957,443,5,'The course content is relevant.','LIKERT','Content','4',80),
(2958,443,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2959,444,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2960,444,2,'Rate the teacher''s communication skills.','SLIDER','Communication','89',89),
(2961,444,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2962,444,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2963,444,5,'The course content is relevant.','LIKERT','Content','5',100),
(2964,444,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2965,445,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2966,445,2,'Rate the teacher''s communication skills.','SLIDER','Communication','85',85),
(2967,445,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2968,445,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2969,445,5,'The course content is relevant.','LIKERT','Content','4',80),
(2970,445,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2971,446,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2972,446,2,'Rate the teacher''s communication skills.','SLIDER','Communication','96',96),
(2973,446,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2974,446,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2975,446,5,'The course content is relevant.','LIKERT','Content','5',100),
(2976,446,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2977,447,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2978,447,2,'Rate the teacher''s communication skills.','SLIDER','Communication','90',90),
(2979,447,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2980,447,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(2981,447,5,'The course content is relevant.','LIKERT','Content','5',100),
(2982,447,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2983,448,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(2984,448,2,'Rate the teacher''s communication skills.','SLIDER','Communication','88',88),
(2985,448,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(2986,448,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2987,448,5,'The course content is relevant.','LIKERT','Content','4',80),
(2988,448,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2989,449,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2990,449,2,'Rate the teacher''s communication skills.','SLIDER','Communication','94',94),
(2991,449,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2992,449,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2993,449,5,'The course content is relevant.','LIKERT','Content','5',100),
(2994,449,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(2995,450,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(2996,450,2,'Rate the teacher''s communication skills.','SLIDER','Communication','92',92),
(2997,450,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(2998,450,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(2999,450,5,'The course content is relevant.','LIKERT','Content','5',100),
(3000,450,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

-- AVG: ghazala.parveen → responses 451-460
INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(3001,451,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(3002,451,2,'Rate the teacher''s communication skills.','SLIDER','Communication','73',73),
(3003,451,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(3004,451,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(3005,451,5,'The course content is relevant.','LIKERT','Content','4',80),
(3006,451,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(3007,452,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(3008,452,2,'Rate the teacher''s communication skills.','SLIDER','Communication','67',67),
(3009,452,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(3010,452,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(3011,452,5,'The course content is relevant.','LIKERT','Content','3',60),
(3012,452,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(3013,453,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(3014,453,2,'Rate the teacher''s communication skills.','SLIDER','Communication','76',76),
(3015,453,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(3016,453,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(3017,453,5,'The course content is relevant.','LIKERT','Content','4',80),
(3018,453,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(3019,454,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(3020,454,2,'Rate the teacher''s communication skills.','SLIDER','Communication','70',70),
(3021,454,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(3022,454,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(3023,454,5,'The course content is relevant.','LIKERT','Content','3',60),
(3024,454,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(3025,455,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(3026,455,2,'Rate the teacher''s communication skills.','SLIDER','Communication','78',78),
(3027,455,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(3028,455,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(3029,455,5,'The course content is relevant.','LIKERT','Content','4',80),
(3030,455,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(3031,456,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(3032,456,2,'Rate the teacher''s communication skills.','SLIDER','Communication','65',65),
(3033,456,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(3034,456,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(3035,456,5,'The course content is relevant.','LIKERT','Content','3',60),
(3036,456,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(3037,457,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(3038,457,2,'Rate the teacher''s communication skills.','SLIDER','Communication','72',72),
(3039,457,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(3040,457,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(3041,457,5,'The course content is relevant.','LIKERT','Content','4',80),
(3042,457,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(3043,458,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(3044,458,2,'Rate the teacher''s communication skills.','SLIDER','Communication','69',69),
(3045,458,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(3046,458,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(3047,458,5,'The course content is relevant.','LIKERT','Content','3',60),
(3048,458,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(3049,459,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(3050,459,2,'Rate the teacher''s communication skills.','SLIDER','Communication','75',75),
(3051,459,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(3052,459,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(3053,459,5,'The course content is relevant.','LIKERT','Content','3',60),
(3054,459,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(3055,460,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(3056,460,2,'Rate the teacher''s communication skills.','SLIDER','Communication','68',68),
(3057,460,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(3058,460,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(3059,460,5,'The course content is relevant.','LIKERT','Content','4',80),
(3060,460,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

-- ══════════════════════════════════════════════════════════════
-- DS FALL 2023  (responses 461-480)
-- HIGH: faisal.umar  → responses 461-470
-- AVG:  tehzeeb.gul  → responses 471-480
-- ══════════════════════════════════════════════════════════════

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(3061,461,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(3062,461,2,'Rate the teacher''s communication skills.','SLIDER','Communication','92',92),
(3063,461,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(3064,461,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(3065,461,5,'The course content is relevant.','LIKERT','Content','5',100),
(3066,461,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(3067,462,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(3068,462,2,'Rate the teacher''s communication skills.','SLIDER','Communication','88',88),
(3069,462,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(3070,462,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(3071,462,5,'The course content is relevant.','LIKERT','Content','5',100),
(3072,462,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(3073,463,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(3074,463,2,'Rate the teacher''s communication skills.','SLIDER','Communication','86',86),
(3075,463,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(3076,463,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(3077,463,5,'The course content is relevant.','LIKERT','Content','4',80),
(3078,463,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(3079,464,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(3080,464,2,'Rate the teacher''s communication skills.','SLIDER','Communication','95',95),
(3081,464,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(3082,464,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(3083,464,5,'The course content is relevant.','LIKERT','Content','5',100),
(3084,464,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(3085,465,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(3086,465,2,'Rate the teacher''s communication skills.','SLIDER','Communication','90',90),
(3087,465,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(3088,465,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(3089,465,5,'The course content is relevant.','LIKERT','Content','4',80),
(3090,465,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(3091,466,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(3092,466,2,'Rate the teacher''s communication skills.','SLIDER','Communication','85',85),
(3093,466,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(3094,466,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(3095,466,5,'The course content is relevant.','LIKERT','Content','5',100),
(3096,466,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(3097,467,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(3098,467,2,'Rate the teacher''s communication skills.','SLIDER','Communication','97',97),
(3099,467,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(3100,467,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(3101,467,5,'The course content is relevant.','LIKERT','Content','5',100),
(3102,467,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(3103,468,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(3104,468,2,'Rate the teacher''s communication skills.','SLIDER','Communication','91',91),
(3105,468,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(3106,468,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(3107,468,5,'The course content is relevant.','LIKERT','Content','4',80),
(3108,468,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(3109,469,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(3110,469,2,'Rate the teacher''s communication skills.','SLIDER','Communication','89',89),
(3111,469,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(3112,469,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(3113,469,5,'The course content is relevant.','LIKERT','Content','5',100),
(3114,469,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(3115,470,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(3116,470,2,'Rate the teacher''s communication skills.','SLIDER','Communication','93',93),
(3117,470,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(3118,470,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(3119,470,5,'The course content is relevant.','LIKERT','Content','5',100),
(3120,470,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

-- AVG: tehzeeb.gul → responses 471-480
INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(3121,471,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(3122,471,2,'Rate the teacher''s communication skills.','SLIDER','Communication','71',71),
(3123,471,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(3124,471,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(3125,471,5,'The course content is relevant.','LIKERT','Content','4',80),
(3126,471,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(3127,472,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(3128,472,2,'Rate the teacher''s communication skills.','SLIDER','Communication','66',66),
(3129,472,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(3130,472,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(3131,472,5,'The course content is relevant.','LIKERT','Content','3',60),
(3132,472,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(3133,473,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(3134,473,2,'Rate the teacher''s communication skills.','SLIDER','Communication','74',74),
(3135,473,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(3136,473,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(3137,473,5,'The course content is relevant.','LIKERT','Content','4',80),
(3138,473,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(3139,474,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(3140,474,2,'Rate the teacher''s communication skills.','SLIDER','Communication','77',77),
(3141,474,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(3142,474,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(3143,474,5,'The course content is relevant.','LIKERT','Content','4',80),
(3144,474,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(3145,475,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(3146,475,2,'Rate the teacher''s communication skills.','SLIDER','Communication','68',68),
(3147,475,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(3148,475,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(3149,475,5,'The course content is relevant.','LIKERT','Content','3',60),
(3150,475,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(3151,476,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(3152,476,2,'Rate the teacher''s communication skills.','SLIDER','Communication','76',76),
(3153,476,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(3154,476,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(3155,476,5,'The course content is relevant.','LIKERT','Content','4',80),
(3156,476,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(3157,477,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(3158,477,2,'Rate the teacher''s communication skills.','SLIDER','Communication','65',65),
(3159,477,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(3160,477,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(3161,477,5,'The course content is relevant.','LIKERT','Content','3',60),
(3162,477,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(3163,478,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(3164,478,2,'Rate the teacher''s communication skills.','SLIDER','Communication','73',73),
(3165,478,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(3166,478,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(3167,478,5,'The course content is relevant.','LIKERT','Content','4',80),
(3168,478,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(3169,479,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(3170,479,2,'Rate the teacher''s communication skills.','SLIDER','Communication','70',70),
(3171,479,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(3172,479,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(3173,479,5,'The course content is relevant.','LIKERT','Content','3',60),
(3174,479,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(3175,480,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(3176,480,2,'Rate the teacher''s communication skills.','SLIDER','Communication','75',75),
(3177,480,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(3178,480,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(3179,480,5,'The course content is relevant.','LIKERT','Content','3',60),
(3180,480,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

-- ══════════════════════════════════════════════════════════════
-- CY FALL 2023  (responses 481-500)
-- HIGH: babar.munir     → responses 481-490
-- AVG:  aisha.siddiqui  → responses 491-500
-- ══════════════════════════════════════════════════════════════

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(3181,481,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(3182,481,2,'Rate the teacher''s communication skills.','SLIDER','Communication','93',93),
(3183,481,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(3184,481,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(3185,481,5,'The course content is relevant.','LIKERT','Content','5',100),
(3186,481,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(3187,482,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(3188,482,2,'Rate the teacher''s communication skills.','SLIDER','Communication','89',89),
(3189,482,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(3190,482,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(3191,482,5,'The course content is relevant.','LIKERT','Content','5',100),
(3192,482,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(3193,483,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(3194,483,2,'Rate the teacher''s communication skills.','SLIDER','Communication','87',87),
(3195,483,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(3196,483,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(3197,483,5,'The course content is relevant.','LIKERT','Content','4',80),
(3198,483,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(3199,484,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(3200,484,2,'Rate the teacher''s communication skills.','SLIDER','Communication','96',96),
(3201,484,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(3202,484,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(3203,484,5,'The course content is relevant.','LIKERT','Content','5',100),
(3204,484,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(3205,485,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(3206,485,2,'Rate the teacher''s communication skills.','SLIDER','Communication','91',91),
(3207,485,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(3208,485,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(3209,485,5,'The course content is relevant.','LIKERT','Content','4',80),
(3210,485,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(3211,486,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(3212,486,2,'Rate the teacher''s communication skills.','SLIDER','Communication','85',85),
(3213,486,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(3214,486,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(3215,486,5,'The course content is relevant.','LIKERT','Content','5',100),
(3216,486,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(3217,487,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(3218,487,2,'Rate the teacher''s communication skills.','SLIDER','Communication','90',90),
(3219,487,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(3220,487,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(3221,487,5,'The course content is relevant.','LIKERT','Content','5',100),
(3222,487,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(3223,488,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(3224,488,2,'Rate the teacher''s communication skills.','SLIDER','Communication','94',94),
(3225,488,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(3226,488,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(3227,488,5,'The course content is relevant.','LIKERT','Content','4',80),
(3228,488,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(3229,489,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(3230,489,2,'Rate the teacher''s communication skills.','SLIDER','Communication','88',88),
(3231,489,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(3232,489,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(3233,489,5,'The course content is relevant.','LIKERT','Content','5',100),
(3234,489,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(3235,490,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','5',100),
(3236,490,2,'Rate the teacher''s communication skills.','SLIDER','Communication','92',92),
(3237,490,3,'The teacher is fair when grading.','LIKERT','Fairness','5',100),
(3238,490,4,'The teacher actively engages students.','LIKERT','Engagement','5',100),
(3239,490,5,'The course content is relevant.','LIKERT','Content','5',100),
(3240,490,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

-- AVG: aisha.siddiqui → responses 491-500
INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(3241,491,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(3242,491,2,'Rate the teacher''s communication skills.','SLIDER','Communication','74',74),
(3243,491,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(3244,491,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(3245,491,5,'The course content is relevant.','LIKERT','Content','4',80),
(3246,491,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(3247,492,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(3248,492,2,'Rate the teacher''s communication skills.','SLIDER','Communication','68',68),
(3249,492,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(3250,492,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(3251,492,5,'The course content is relevant.','LIKERT','Content','3',60),
(3252,492,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(3253,493,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(3254,493,2,'Rate the teacher''s communication skills.','SLIDER','Communication','76',76),
(3255,493,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(3256,493,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(3257,493,5,'The course content is relevant.','LIKERT','Content','4',80),
(3258,493,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(3259,494,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(3260,494,2,'Rate the teacher''s communication skills.','SLIDER','Communication','70',70),
(3261,494,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(3262,494,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(3263,494,5,'The course content is relevant.','LIKERT','Content','3',60),
(3264,494,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(3265,495,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(3266,495,2,'Rate the teacher''s communication skills.','SLIDER','Communication','78',78),
(3267,495,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(3268,495,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(3269,495,5,'The course content is relevant.','LIKERT','Content','4',80),
(3270,495,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(3271,496,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(3272,496,2,'Rate the teacher''s communication skills.','SLIDER','Communication','65',65),
(3273,496,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(3274,496,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(3275,496,5,'The course content is relevant.','LIKERT','Content','3',60),
(3276,496,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(3277,497,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(3278,497,2,'Rate the teacher''s communication skills.','SLIDER','Communication','72',72),
(3279,497,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(3280,497,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(3281,497,5,'The course content is relevant.','LIKERT','Content','4',80),
(3282,497,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(3283,498,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(3284,498,2,'Rate the teacher''s communication skills.','SLIDER','Communication','69',69),
(3285,498,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(3286,498,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(3287,498,5,'The course content is relevant.','LIKERT','Content','3',60),
(3288,498,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(3289,499,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','4',80),
(3290,499,2,'Rate the teacher''s communication skills.','SLIDER','Communication','75',75),
(3291,499,3,'The teacher is fair when grading.','LIKERT','Fairness','4',80),
(3292,499,4,'The teacher actively engages students.','LIKERT','Engagement','4',80),
(3293,499,5,'The course content is relevant.','LIKERT','Content','3',60),
(3294,499,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

INSERT INTO response_answers (id,response_id,question_id,question_text,question_type,perf_factor,answer_value,numeric_score) VALUES
(3295,500,1,'The teacher explains concepts clearly.','LIKERT','Teaching Quality','3',60),
(3296,500,2,'Rate the teacher''s communication skills.','SLIDER','Communication','71',71),
(3297,500,3,'The teacher is fair when grading.','LIKERT','Fairness','3',60),
(3298,500,4,'The teacher actively engages students.','LIKERT','Engagement','3',60),
(3299,500,5,'The course content is relevant.','LIKERT','Content','4',80),
(3300,500,6,'Teacher arrives on time.','BINARY','Punctuality','Yes',100);

SET IDENTITY_INSERT response_answers OFF;
GO

-- ============================================================
-- 11. SESSION LOGS (sample logins for each role)
-- ============================================================

SET IDENTITY_INSERT session_logs ON;

INSERT INTO session_logs (id, username, role, login_at, logout_at, duration_seconds) VALUES
(1,  'furqan.nasir',   'HOD',     '2025-05-12 08:30:00', '2025-05-12 10:15:00', 6300),
(2,  'arshad.islam',   'HOD',     '2025-05-12 09:00:00', '2025-05-12 11:00:00', 7200),
(3,  'sadia.mahmood',  'HOD',     '2025-05-12 08:45:00', '2025-05-12 09:50:00', 3900),
(4,  'tariq.mehmood',  'HOD',     '2025-05-13 10:00:00', '2025-05-13 11:30:00', 5400),
(5,  'hina.zafar',     'HOD',     '2025-05-13 08:00:00', '2025-05-13 09:45:00', 6300),
(6,  'kamran.akhtar',  'TEACHER', '2025-05-12 13:00:00', '2025-05-12 13:45:00', 2700),
(7,  'imran.shahzad',  'TEACHER', '2025-05-12 14:00:00', '2025-05-12 14:20:00', 1200),
(8,  'lubna.zahoor',   'TEACHER', '2025-05-13 09:30:00', '2025-05-13 10:30:00', 3600),
(9,  'tahir.nawaz',    'TEACHER', '2025-05-13 11:00:00', '2025-05-13 11:10:00',  600),
(10, 'ali.hassan',     'STUDENT', '2025-05-12 20:00:00', '2025-05-12 20:35:00', 2100),
(11, 'fatima.shah',    'STUDENT', '2025-05-12 21:00:00', '2025-05-12 21:25:00', 1500),
(12, 'asim.rao',       'STUDENT', '2025-05-13 18:30:00', '2025-05-13 19:05:00', 2100),
(13, 'zohaib.naseer',  'STUDENT', '2025-05-13 22:00:00', '2025-05-13 22:40:00', 2400),
(14, 'tayyab.hussain', 'STUDENT', '2025-05-14 07:45:00', '2025-05-14 08:15:00', 1800),
(15, 'nadeem.bangash', 'STUDENT', '2025-05-14 19:00:00', '2025-05-14 19:50:00', 3000);

SET IDENTITY_INSERT session_logs OFF;
GO
PRINT 'Seed data inserted successfully.';
GO
