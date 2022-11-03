GET_INTERVIEWEE_WHO_WANTS_CHANGE_WORK = """
    SELECT
        full_name,
        job_model,       
        will_change_work_model,
        new_work_model
    FROM
        table_interviewee,
        table_change_work
    WHERE
        table_interviewee.id_interviewee = table_change_work.id_interviewee
        AND will_change_work_model = true
"""

GET_INTERVIEWEE_WORK_COUNTRY_AND_NEW_WORK_COUNTRY = """
    SELECT
        full_name,
        new_country,
        will_change_work_model
    FROM
        table_change_work,
        table_interviewee
    
    WHERE 
        will_change_work_model = true
"""

GET_INTERVIEWEE_HAS_MORE_THAN_SIX_HORUS_OF_WORK = """
    SELECT
       full_name,
       id_about_work,
       working_time
    FROM
        table_about_work,
        table_interviewee
    WHERE
        table_about_work.id_interviewee = table_interviewee.id_interviewee
        AND table_about_work.working_time >= 6
"""
