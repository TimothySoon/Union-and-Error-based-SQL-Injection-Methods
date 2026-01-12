-- run_filter.sql
SET SERVEROUTPUT ON SIZE UNLIMITED
SET TIMING ON
SET ECHO ON
SET LINESIZE 200
SET PAGESIZE 200

@@payloads.sql

VARIABLE rc REFCURSOR

PROMPT ===================================================
PROMPT FILTER RUN (Weak Input Filtering) - CONTROL
PROMPT ===================================================
EXEC filter_search_customer('Ali Hassan', :rc);
PRINT rc

PROMPT ===================================================
PROMPT FILTER RUN - ERROR-BASED (E1..E10)
PROMPT ===================================================

PROMPT [E1]
EXEC filter_search_customer(&E1, :rc);

PROMPT [E2]
EXEC filter_search_customer(&E2, :rc);

PROMPT [E3]
EXEC filter_search_customer(&E3, :rc);

PROMPT [E4]
EXEC filter_search_customer(&E4, :rc);

PROMPT [E5]
EXEC filter_search_customer(&E5, :rc);

PROMPT [E6]
EXEC filter_search_customer(&E6, :rc);

PROMPT [E7]
EXEC filter_search_customer(&E7, :rc);

PROMPT [E8]
EXEC filter_search_customer(&E8, :rc);

PROMPT [E9]
EXEC filter_search_customer(&E9, :rc);

PROMPT [E10]
EXEC filter_search_customer(&E10, :rc);
PRINT rc

PROMPT ===================================================
PROMPT FILTER RUN - UNION-BASED (U1..U10)
PROMPT ===================================================

PROMPT [U1]
EXEC filter_search_customer(&U1, :rc);
PRINT rc

PROMPT [U2]
EXEC filter_search_customer(&U2, :rc);
PRINT rc

PROMPT [U3]
EXEC filter_search_customer(&U3, :rc);
PRINT rc

PROMPT [U4]
EXEC filter_search_customer(&U4, :rc);
PRINT rc

PROMPT [U5]
EXEC filter_search_customer(&U5, :rc);
PRINT rc

PROMPT [U6]
EXEC filter_search_customer(&U6, :rc);
PRINT rc

PROMPT [U7]
EXEC filter_search_customer(&U7, :rc);
PRINT rc

PROMPT [U8]
EXEC filter_search_customer(&U8, :rc);
PRINT rc

PROMPT [U9]
EXEC filter_search_customer(&U9, :rc);
PRINT rc

PROMPT [U10]
EXEC filter_search_customer(&U10, :rc);
PRINT rc
