START TRANSACTION;

UPDATE Account SET balance = balance - 2000 WHERE acc_no = 101;
UPDATE Account SET balance = balance + 2000 WHERE acc_no = 102;

COMMIT; 