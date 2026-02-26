START TRANSACTION;

UPDATE Account SET balance = balance - 1000 WHERE acc_no = 101;
SAVEPOINT sp1;

UPDATE Account SET balance = balance - 2000 WHERE acc_no = 101;
SAVEPOINT sp2;

UPDATE Account SET balance = balance - 500 WHERE acc_no = 101;

ROLLBACK TO sp2;
COMMIT; 