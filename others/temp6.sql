START TRANSACTION;

SELECT balance FROM Account WHERE acc_no = 101;
UPDATE Account SET balance = 9000 WHERE acc_no = 101;
COMMIT;

START TRANSACTION;

SELECT balance FROM Account WHERE acc_no = 101;
UPDATE Account SET balance = 9500 WHERE acc_no = 101;
COMMIT;