insert into table_interviewee 
(id_interviewee, full_name, age, job_stack, working_age, job_model) 
values
(1, 'Gisele Bittencour', 30, 'Front-End', 8, 'Hibrido');
(2, 'Clodoaldo Brimbolin', 20, 'Arquieto de Dados', 1, 'Presencial');
(3, 'Nilton Santos', 46, 'SRE', 15, 'Home Office');
(4, 'Karlos Marxs', 19, 'Back-End', 1, 'Home Office');
(5, 'Vinsvaldo Foxtrot', 32, 'DBA', 10, 'Home Office');

insert into table_about_work 
(id_about_work, id_interviewee, work_city, working_time, work_country)
values 
(1, 1, 'Salvador', 8, 'Bahia');
(2, 2, 'Alagoinhas', 8, 'Bahia');
(3, 3, 'Toronto', 6, 'Canada');
(4, 4, 'Philadelphia', 8, 'Estados Unidos');
(5, 5, 'São Paulo', 8, 'São Paulo');

insert into table_change_work 
(id_change_work, id_interviewee, new_work_model, will_change_work_model, new_country)
values 
(1, 1, 'Presencial', true, 'Arabia');
(2, 2, 'Home Office', true, 'Brazil');
(3, 3, 'Hibrido', true, 'Chile');
(4, 4, 'Home Office', false, 'Estados Unidos');
(5, 5, 'Presencial', true, 'Canada');
