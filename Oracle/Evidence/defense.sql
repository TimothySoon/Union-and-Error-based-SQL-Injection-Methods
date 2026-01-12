-- run_secure.sql
SET SERVEROUTPUT ON SIZE UNLIMITED
SET TIMING ON
SET ECHO ON
SET LINESIZE 200
SET PAGESIZE 200

@@payloads.sql

VARIABLE rc REFCURSOR

PROMPT ===================================================
PROMPT SECURE RUN (Parameterized Query) - CONTROL
PROMPT ===================================================
EXEC secure_search_customer('Ali Hassan', :rc);
PRINT rc

PROMPT ===================================================
PROMPT SECURE RUN - ERROR-BASED (E1..E10)
PROMPT ===================================================

PROMPT [E1]
EXEC secure_search_customer(&E1, :rc);
PRINT rc
PROMPT [E2]
EXEC secure_search_customer(&E2, :rc);
PRINT rc
PROMPT [E3]
EXEC secure_search_customer(&E3, :rc);
PRINT rc
PROMPT [E4]
EXEC secure_search_customer(&E4, :rc);
PRINT rc
PROMPT [E5]
EXEC secure_search_customer(&E5, :rc);
PRINT rc
PROMPT [E6]
EXEC secure_search_customer(&E6, :rc);
PRINT rc
PROMPT [E7]
EXEC secure_search_customer(&E7, :rc);
PRINT rc
PROMPT [E8]
EXEC secure_search_customer(&E8, :rc);
PRINT rc
PROMPT [E9]
EXEC secure_search_customer(&E9, :rc);
PRINT rc
PROMPT [E10]
EXEC secure_search_customer(&E10, :rc);
PRINT rc

PROMPT ===================================================
PROMPT SECURE RUN - UNION-BASED (U1..U10)
PROMPT ===================================================

PROMPT [U1]
EXEC secure_search_customer(&U1, :rc);
PRINT rc
PROMPT [U2]
EXEC secure_search_customer(&U2, :rc);
PRINT rc
PROMPT [U3]
EXEC secure_search_customer(&U3, :rc);
PRINT rc
PROMPT [U4]
EXEC secure_search_customer(&U4, :rc);
PRINT rc
PROMPT [U5]
EXEC secure_search_customer(&U5, :rc);
PRINT rc
PROMPT [U6]
EXEC secure_search_customer(&U6, :rc);
PRINT rc
PROMPT [U7]
EXEC secure_search_customer(&U7, :rc);
PRINT rc
PROMPT [U8]
EXEC secure_search_customer(&U8, :rc);
PRINT rc
PROMPT [U9]
EXEC secure_search_customer(&U9, :rc);
PRINT rc
PROMPT [U10]
EXEC secure_search_customer(&U10, :rc);
PRINT rc
