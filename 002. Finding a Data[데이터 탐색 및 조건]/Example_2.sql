SELECT COUNT(*), ROUND(AVG(star)) FROM review
    WHERE comment IS NOT NULL;