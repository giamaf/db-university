-- 1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT 
    S.`name` AS 'Nome',
    S.`surname` AS 'Cognome', 
    D.`name`AS 'Corso' 
FROM `students` AS S 
JOIN `degrees` AS D ON S.`degree_id` = D.`id` 
WHERE D.`name` = 'Corso di Laurea in Economia';

-- 2. Selezionare tutti i Corsi di Laurea del Dipartimento di Neuroscienze
SELECT 
    C.`name` AS 'Materia', 
    D.`name`AS 'Corso', 
    DEP.`name`AS 'Dipartimento' 
FROM `courses` AS C 
JOIN `degrees` AS D ON C.`degree_id` = D.`id` 
JOIN `departments`AS DEP ON D.`department_id` = DEP.`id` 
WHERE DEP.`name` = 'Dipartimento di Neuroscienze';

-- 3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
 SELECT 
    C.`name` AS 'Corso', 
    T.`name` AS 'Nome Insegnante', 
    T.`surname` AS 'Cognome Insegnante', 
    T.`id` AS 'Matricola Insegnante' 
 FROM `course_teacher` AS CT 
 JOIN `teachers` AS T ON CT.`teacher_id` = T.`id` 
 JOIN `courses` AS C ON CT.`course_id` = C.`id` 
 WHERE T.`name` = 'Fulvio' AND T.`surname` = 'Amato';

-- 4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome
SELECT
 	S.`surname` AS 'Cognome',
    S.`name` AS 'Nome',
    DEG.`name`AS 'Corso di laurea',
    DEG.`level`AS 'Tipologia Laurea',
    DEG.`address`AS 'Indirizzo',
    DEG.`email`AS 'Email',
    DEG.`website`AS 'Sito Web',
    DEP.`name`AS 'Dipartimento'
FROM `students` AS S
JOIN `degrees` AS DEG ON S.`degree_id` = DEG.`id`
JOIN `departments`AS DEP ON DEG.`department_id` = DEP.`id`
ORDER BY S.`surname`, S.`name` ASC;

-- 5. Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti
SELECT
    DEG.`name` AS 'Corso di Laurea',
    C.`name` AS 'Materia',
    T.`name` AS 'Nome Insegnante',
    T.`surname` AS 'Cognome Insegnante'
FROM `degrees` AS DEG
JOIN `courses` AS C ON C.`degree_id` = DEG.`id`
JOIN `course_teacher` AS CT ON CT.`course_id` = C.`id`
JOIN `teachers` AS T ON CT.`teacher_id` = T.`id`;

-- 6. Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)
SELECT 
    DISTINCT T.`name` AS 'Nome Docente',
             T.`surname` AS 'Cognome Docente',
             DEP.`name` AS 'Nome Dipartimento' 
FROM `teachers` AS T 
JOIN `course_teacher` AS CT ON CT.`teacher_id` = T.`id` 
JOIN `courses` AS C ON CT.`course_id` = C.`id` 
JOIN `degrees` AS DEG ON C.`degree_id` = DEG.`id` 
JOIN `departments` AS DEP ON DEG.`department_id` = DEP.`id` 
WHERE DEP.`name` = 'Dipartimento di Matematica';

-- 7. BONUS: Selezionare per ogni studente quanti tentativi d’esame ha sostenuto per superare ciascuno dei suoi esami
