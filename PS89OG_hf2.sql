CREATE TABLE ugyfel_maszk (
    LOGIN TEXT,
    EMAIL TEXT,
    NEV TEXT,
    SZULEV TEXT,
    NEM TEXT,
    CIM TEXT
);
INSERT INTO ugyfel_maszk (LOGIN, EMAIL, NEV, SZULEV, NEM, CIM)
SELECT 
    c1, 
    -- EMAIL: csak az első 2 karakter marad meg, utána ****
    substr(c2, 1, 2) || '****@***.com',
    -- NEV: teljesen random név
    'NevMaszk',
    -- SZULEV: eredeti marad
    c4,
    -- NEM: eredeti marad
    c5,
    -- CIM: városnév helyett XXXXX
    'XXXXX, ' || substr(c6, instr(c6, ',') + 1)
FROM ugyfel; 
SELECT * FROM ugyfel_maszk;
