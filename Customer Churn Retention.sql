-- QUESTION ONE: CHURN OVERVIEW
SELECT
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN [customer_Status] = 'Exited' THEN 1 ELSE 0 END) AS Exited_Customers,
    SUM(CASE WHEN [Customer_Status] = 'Retained' THEN 1 ELSE 0 END) AS Retained_Customers,
    CAST(
        100.0 * SUM(CASE WHEN [Customer_Status] = 'Exited' THEN 1 ELSE 0 END)
        / COUNT(*)
        AS DECIMAL(5,2)
    ) AS Churn_Rate
FROM [Customer_churn_retention_cleaned];

--CHURN RATE BY GEOGARPHY
SELECT
    Geography,

    COUNT(*) AS Total_Customers,

    SUM(
        CASE
            WHEN [Customer_Status] = 'Exited' THEN 1
            ELSE 0
        END
    ) AS Exited_Customers,

    SUM(
        CASE
            WHEN [Customer_Status] = 'Retained' THEN 1
            ELSE 0
        END
    ) AS Retained_Customers,

    CAST(
        100.0 *
        SUM(
            CASE
                WHEN [Customer_Status] = 'Exited' THEN 1
                ELSE 0
            END
        ) / COUNT(*)
        AS DECIMAL(5,2)
    ) AS Churn_Rate

FROM [Customer_churn_retention_cleaned]

GROUP BY Geography

ORDER BY Churn_Rate DESC;

--CHURN RATE BY GENDER
SELECT
    Gender,

    COUNT(*) AS Total_Customers,

    SUM(
        CASE
            WHEN [Customer_Status] = 'Exited' THEN 1
            ELSE 0
        END
    ) AS Exited_Customers,

    SUM(
        CASE
            WHEN [Customer_Status] = 'Retained' THEN 1
            ELSE 0
        END
    ) AS Retained_Customers,

    CAST(
        100.0 *
        SUM(
            CASE
                WHEN [Customer_Status] = 'Exited' THEN 1
                ELSE 0
            END
        ) / COUNT(*)
        AS DECIMAL(5,2)
    ) AS Churn_Rate

FROM [Customer_churn_retention_cleaned]

GROUP BY Gender

ORDER BY Churn_Rate DESC;

--CHURN RATE BY AGE GROUP
SELECT
    Age_Group,

    COUNT(*) AS Total_Customers,

    SUM(
        CASE
            WHEN [Customer_Status] = 'Exited' THEN 1
            ELSE 0
        END
    ) AS Exited_Customers,

    SUM(
        CASE
            WHEN [Customer_Status] = 'Retained' THEN 1
            ELSE 0
        END
    ) AS Retained_Customers,

    CAST(
        100.0 *
        SUM(
            CASE
                WHEN [Customer_Status] = 'Exited' THEN 1
                ELSE 0
            END
        ) / COUNT(*)
        AS DECIMAL(5,2)
    ) AS Churn_Rate

FROM [Customer_churn_retention_cleaned]

GROUP BY Age_Group

ORDER BY Churn_Rate DESC;

--CHURN RATE BY CREDIT SCORE BAND
SELECT
    Credit_Score_Band,

    COUNT(*) AS Total_Customers,

    SUM(
        CASE
            WHEN [Customer_Status] = 'Exited' THEN 1
            ELSE 0
        END
    ) AS Exited_Customers,

    SUM(
        CASE
            WHEN [Customer_Status] = 'Retained' THEN 1
            ELSE 0
        END
    ) AS Retained_Customers,

    CAST(
        100.0 *
        SUM(
            CASE
                WHEN [Customer_Status] = 'Exited' THEN 1
                ELSE 0
            END
        ) / COUNT(*)
        AS DECIMAL(5,2)
    ) AS Churn_Rate

FROM [Customer_churn_retention_cleaned]

GROUP BY Credit_Score_Band

ORDER BY Churn_Rate DESC;

--CHURN RATE BY BALANCE CATEGORY
SELECT
    Balance_Category,

    COUNT(*) AS Total_Customers,

    SUM(
        CASE
            WHEN [Customer_Status] = 'Exited' THEN 1
            ELSE 0
        END
    ) AS Exited_Customers,

    SUM(
        CASE
            WHEN [Customer_Status] = 'Retained' THEN 1
            ELSE 0
        END
    ) AS Retained_Customers,

    CAST(
        100.0 *
        SUM(
            CASE
                WHEN [Customer_Status] = 'Exited' THEN 1
                ELSE 0
            END
        ) / COUNT(*)
        AS DECIMAL(5,2)
    ) AS Churn_Rate

FROM [Customer_churn_retention_cleaned]

GROUP BY Balance_Category

ORDER BY Churn_Rate DESC;

--CHURN RATE BY TENURE
SELECT
    Tenure,

    COUNT(*) AS Total_Customers,

    SUM(
        CASE
            WHEN [Customer_Status] = 'Exited' THEN 1
            ELSE 0
        END
    ) AS Exited_Customers,

    SUM(
        CASE
            WHEN [Customer_Status] = 'Retained' THEN 1
            ELSE 0
        END
    ) AS Retained_Customers,

    CAST(
        100.0 *
        SUM(
            CASE
                WHEN [Customer_Status] = 'Exited' THEN 1
                ELSE 0
            END
        ) / COUNT(*)
        AS DECIMAL(5,2)
    ) AS Churn_Rate

FROM [Customer_churn_retention_cleaned]

GROUP BY Tenure

ORDER BY Churn_Rate DESC;

--CHURN RATE BY NUMBER OF PRODUCTS
SELECT
    Number_Of_Products,

    COUNT(*) AS Total_Customers,

    SUM(
        CASE
            WHEN [Customer_Status] = 'Exited' THEN 1
            ELSE 0
        END
    ) AS Exited_Customers,

    SUM(
        CASE
            WHEN [Customer_Status] = 'Retained' THEN 1
            ELSE 0
        END
    ) AS Retained_Customers,

    CAST(
        100.0 *
        SUM(
            CASE
                WHEN [Customer_Status] = 'Exited' THEN 1
                ELSE 0
            END
        ) / COUNT(*)
        AS DECIMAL(5,2)
    ) AS Churn_Rate

FROM [Customer_churn_retention_cleaned]

GROUP BY Number_Of_Products

ORDER BY Churn_Rate DESC;

--CHURN BY ACTIVE MEMBERSHIP
SELECT
    Is_Active_Member,

    COUNT(*) AS Total_Customers,

    SUM(
        CASE
            WHEN [Customer_Status] = 'Exited' THEN 1
            ELSE 0
        END
    ) AS Exited_Customers,

    SUM(
        CASE
            WHEN [Customer_Status] = 'Retained' THEN 1
            ELSE 0
        END
    ) AS Retained_Customers,

    CAST(
        100.0 *
        SUM(
            CASE
                WHEN [Customer_Status] = 'Exited' THEN 1
                ELSE 0
            END
        ) / COUNT(*)
        AS DECIMAL(5,2)
    ) AS Churn_Rate

FROM [Customer_churn_retention_cleaned]

GROUP BY Is_Active_Member

ORDER BY Churn_Rate DESC;

--CHURN RATE BY CREDIT CARD OWNERSHIP
SELECT
    Has_Credit_Card,

    COUNT(*) AS Total_Customers,

    SUM(
        CASE
            WHEN [Customer_Status] = 'Exited' THEN 1
            ELSE 0
        END
    ) AS Exited_Customers,

    SUM(
        CASE
            WHEN [Customer_Status] = 'Retained' THEN 1
            ELSE 0
        END
    ) AS Retained_Customers,

    CAST(
        100.0 *
        SUM(
            CASE
                WHEN [Customer_Status] = 'Exited' THEN 1
                ELSE 0
            END
        ) / COUNT(*)
        AS DECIMAL(5,2)
    ) AS Churn_Rate

FROM [Customer_churn_retention_cleaned]

GROUP BY Has_Credit_Card

ORDER BY Churn_Rate DESC;


--COMBINED PATTERNS
--1. GEOGRAPHY + ACTIVE MEMBERSHIP

SELECT
    Geography,
    [Is_Active_Member],

    COUNT(*) AS Total_Customers,

    SUM(
        CASE
            WHEN [Customer_Status] = 'Exited' THEN 1
            ELSE 0
        END
    ) AS Exited_Customers,

    SUM(
        CASE
            WHEN [Customer_Status] = 'Retained' THEN 1
            ELSE 0
        END
    ) AS Retained_Customers,

    CAST(
        100.0 *
        SUM(
            CASE
                WHEN [Customer_Status] = 'Exited' THEN 1
                ELSE 0
            END
        ) / COUNT(*)
        AS DECIMAL(5,2)
    ) AS Churn_Rate

FROM [Customer_churn_retention_cleaned]

GROUP BY Geography,
         [Is_Active_Member]

ORDER BY
        Geography,
        Churn_Rate DESC;
