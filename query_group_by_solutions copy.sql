-- 1. Contare quanti iscritti ci sono stati ogni anno
SELECT COUNT(`id`) AS `numero_iscritti`, YEAR(`enrolment_date`)
FROM `students`
GROUP BY YEAR(`enrolment_date`);

-- 2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT COUNT(`id`) AS `n_insegnanti`, `office_number`
FROM `teachers`
GROUP BY `office_number`;

-- 3. Calcolare la media dei voti di ogni appello d'esame
SELECT ROUND(AVG(`vote`), 2) AS `avg_vote`, `exam_id` AS `exam_attempt`
FROM `exam_student`
GROUP BY `exam_attempt`;

-- 4. Contare quanti corsi di laurea ci sono per ogni dipartimento