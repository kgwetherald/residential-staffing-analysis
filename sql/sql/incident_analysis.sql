WITH shift_summary AS (
    SELECT
        shift,
        COUNT(*) AS total_incidents
    FROM incident_reports
    GROUP BY shift
)

SELECT
    shift,
    total_incidents
FROM shift_summary
ORDER BY total_incidents DESC;
