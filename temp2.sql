START TRANSACTION;

UPDATE Account SET balance = balance - 5000 WHERE acc_no = 101;

ROLLBACK; 