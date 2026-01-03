-- run_baseline.sql
SET SERVEROUTPUT ON SIZE UNLIMITED
SET TIMING ON
SET ECHO ON
SET LINESIZE 200
SET PAGESIZE 200

@@payloads.sql

VARIABLE rc REFCURSOR

PROMPT ===================================================
PROMPT BASELINE RUN (No Defense) - CONTROL
PROMPT ===================================================
EXEC baseline_search_customer('Ali Hassan', :rc);
PRINT rc

PROMPT ===================================================
PROMPT BASELINE RUN - ERROR-BASED (E1..E10)
PROMPT Note: we do NOT PRINT for E1..E9 because errors are expected evidence
PROMPT ===================================================

PROMPT [E1] Balanced Delimiter - Basic parser robustness
EXEC baseline_search_customer(&E1, :rc);

PROMPT [E2] String termination - Break SQL string context
EXEC baseline_search_customer(&E2, :rc);

PROMPT [E3] Boolean (true) - Logic manipulation attempt
EXEC baseline_search_customer(&E3, :rc);

PROMPT [E4] Boolean (false) - Control comparison
EXEC baseline_search_customer(&E4, :rc);

PROMPT [E5] Truncation attempt - Cut remainder of query
EXEC baseline_search_customer(&E5, :rc);

PROMPT [E6] Operator misuse - Type/parse failures
EXEC baseline_search_customer(&E6, :rc);

PROMPT [E7] Function-in input - Identifier errors
EXEC baseline_search_customer(&E7, :rc);

PROMPT [E8] Numeric conversion - Datatype conversion failures
EXEC baseline_search_customer(&E8, :rc);

PROMPT [E9] Reserved keyword - Syntax sensitivity
EXEC baseline_search_customer(&E9, :rc);

PROMPT [E10] Benign edge input (control) - False positive check
EXEC baseline_search_customer(&E10, :rc);
PRINT rc

PROMPT ===================================================
PROMPT BASELINE RUN - UNION-BASED (U1..U10)
PROMPT ===================================================

PROMPT [U1] Column-count probe (too few) - Column alignment sensitivity
EXEC baseline_search_customer(&U1, :rc);
PRINT rc

PROMPT [U2] Column-count probe (too many) - Column alignment sensitivity
EXEC baseline_search_customer(&U2, :rc);
PRINT rc

PROMPT [U3] Correct column-count UNION - Baseline of UNION
EXEC baseline_search_customer(&U3, :rc);
PRINT rc

PROMPT [U4] Datatype mismatch probe - Datatype constraints
EXEC baseline_search_customer(&U4, :rc);
PRINT rc

PROMPT [U5] Metadata enumeration (tables) - Schema discovery
EXEC baseline_search_customer(&U5, :rc);
PRINT rc

PROMPT [U6] Metadata enumeration (columns) - Deeper schema mapping
EXEC baseline_search_customer(&U6, :rc);
PRINT rc

PROMPT [U7] View enumeration - Broader schema visibility
EXEC baseline_search_customer(&U7, :rc);
PRINT rc

PROMPT [U8] Cross-table sensitive extraction attempt - Confidentiality breach
EXEC baseline_search_customer(&U8, :rc);
PRINT rc

PROMPT [U9] Privilege-dependent extraction attempt - Access control impact
EXEC baseline_search_customer(&U9, :rc);
PRINT rc

PROMPT [U10] Neutral/empty UNION row test - Control
EXEC baseline_search_customer(&U10, :rc);
PRINT rc
