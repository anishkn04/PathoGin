IF EXISTS DATABASE 'pathogindb' DROP 'pathogindb';

CREATE DATABASE 'pathogindb';

USE DATABASE 'pathogindb';

CREATE TABLE 'users_table' (
    user_id INT NOT NULL PRIMARY KEY,
    user_name VARCHAR(50) NOT NULL,
    user_contact BIGINT NOT NULL,
    user_address TEXT NOT NULL,
    user_role UNSIGNED SMALLINT NOT NULL,
    -- UNSIGNED SMALLINT because the role is supposed to be "enum" i.e. for example 1 = admin, 2 = privilaged user, 3 = normal user, etc.
    -- ---------------------------------------------
    -- All the fields below will be filled only if the user has certain role, thus can be null
    user_qualification VARCHAR(50),
    user_position VARCHAR(50),
    user_reg_number VARCHAR(15),
    user_signature BLOB
)

CREATE TABLE 'lab_table' (
    lab_registration_no VARCHAR(15) PRIMARY KEY NOT NULL,
    lab_name TEXT NOT NULL,
    lab_address TEXT NOT NULL,
    test_array TEXT NOT NULL,
)
