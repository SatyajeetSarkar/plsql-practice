START TRANSACTION;

UPDATE Account SET balance = balance - 3000 WHERE acc_no = 101;
UPDATE Account SET balance = balance + 3000 WHERE acc_no = 999;

ROLLBACK; 