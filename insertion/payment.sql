
-- payment

-- EN1 - ST1
INSERT INTO payment (
    payment_id, enrollment_id, amount, payment_date, payment_method
)
VALUES (
    'PAY1', 'EN1', 30000.00, DATE '2026-08-05', 'BANK'
);


-- EN2 - ST2
-- Paid in two installments

INSERT INTO payment (
    payment_id, enrollment_id, amount, payment_date, payment_method
)
VALUES (
    'PAY2', 'EN2', 20000.00, DATE '2026-08-03', 'ONLINE'
);

INSERT INTO payment (
    payment_id, enrollment_id, amount, payment_date, payment_method
)
VALUES (
    'PAY3', 'EN2', 15000.00, DATE '2026-09-03', 'ONLINE'
);


-- EN3 - ST3

INSERT INTO payment (
    payment_id, enrollment_id, amount, payment_date, payment_method
)
VALUES (
    'PAY4', 'EN3', 35000.00, DATE '2026-08-07', 'BANK'
);


-- EN4 - ST4
-- Two installments

INSERT INTO payment (
    payment_id, enrollment_id, amount, payment_date, payment_method
)
VALUES (
    'PAY5', 'EN4', 15000.00, DATE '2026-08-04', 'CASH'
);

INSERT INTO payment (
    payment_id, enrollment_id, amount, payment_date, payment_method
)
VALUES (
    'PAY6', 'EN4', 12000.00, DATE '2026-09-05', 'BANK'
);


-- EN5 - ST5

INSERT INTO payment (
    payment_id, enrollment_id, amount, payment_date, payment_method
)
VALUES (
    'PAY7', 'EN5', 28000.00, DATE '2026-08-06', 'ONLINE'
);


-- EN6 - ST6

INSERT INTO payment (
    payment_id, enrollment_id, amount, payment_date, payment_method
)
VALUES (
    'PAY8', 'EN6', 32000.00, DATE '2026-08-08', 'CARD'
);


-- EN7 - ST7
-- Two installments

INSERT INTO payment (
    payment_id, enrollment_id, amount, payment_date, payment_method
)
VALUES (
    'PAY9', 'EN7', 18000.00, DATE '2026-08-09', 'BANK'
);

INSERT INTO payment (
    payment_id, enrollment_id, amount, payment_date, payment_method
)
VALUES (
    'PAY10', 'EN7', 14000.00, DATE '2026-09-09', 'CASH'
);


-- EN8 - ST8

INSERT INTO payment (
    payment_id, enrollment_id, amount, payment_date, payment_method
)
VALUES (
    'PAY11', 'EN8', 25000.00, DATE '2026-08-10', 'CASH'
);


-- EN9 - ST9
-- Two installments

INSERT INTO payment (
    payment_id, enrollment_id, amount, payment_date, payment_method
)
VALUES (
    'PAY12', 'EN9', 25000.00, DATE '2026-08-11', 'ONLINE'
);

INSERT INTO payment (
    payment_id, enrollment_id, amount, payment_date, payment_method
)
VALUES (
    'PAY13', 'EN9', 20000.00, DATE '2026-09-11', 'BANK'
);


-- EN10 - ST10

INSERT INTO payment (
    payment_id, enrollment_id, amount, payment_date, payment_method
)
VALUES (
    'PAY14', 'EN10', 40000.00, DATE '2026-08-12', 'BANK'
);

COMMIT;