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
-- 4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome
-- 5. Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti
-- 6. Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)
-- 7. BONUS: Selezionare per ogni studente quanti tentativi d’esame ha sostenuto per superare ciascuno dei suoi esami