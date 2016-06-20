    -- Start a transaction.
    BEGIN;

    -- Plan the tests.
    SELECT tap.plan(2);

    -- Run the tests.
    SELECT tap.pass( 'My test passed, w00t!' );

    -- Run the tests.
    SELECT tap.has_column_type( 'xle1sql1' , 'address', 'idcountry' , 'tinyint(3) unsigned'  );



    -- Finish the tests and clean up.
    CALL tap.finish();
    ROLLBACK;

