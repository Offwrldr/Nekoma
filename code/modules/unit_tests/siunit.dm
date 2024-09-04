/datum/unit_test/siunit/Run()
	TEST_ASSERT_EQUAL(siunit(0.5345, "A", 0), "535 mA", "")
	TEST_ASSERT_EQUAL(siunit(0.5344, "A", 0), "534 mA", "")
	TEST_ASSERT_EQUAL(siunit(-0.5344, "A", 0), "-534 mA", "")
	TEST_ASSERT_EQUAL(siunit_pressure(1.234, 1), "1.2 kPa", "") // test for pascal require *10e-3, as the game thinks in kPa, the proc siunit in Pa
	TEST_ASSERT_EQUAL(siunit_pressure(1.234, 2), "1.23 kPa", "")
	TEST_ASSERT_EQUAL(siunit_pressure(1.234, 3), "1.234 kPa", "")
	TEST_ASSERT_EQUAL(siunit_pressure(1, 4), "1 kPa", "")
	TEST_ASSERT_EQUAL(siunit_pressure(0), "0 Pa", "")
	TEST_ASSERT_EQUAL(siunit_pressure(1e3), "1 MPa", "")
	TEST_ASSERT_EQUAL(siunit_pressure(999e3), "999 MPa", "")
	TEST_ASSERT_EQUAL(siunit_pressure(999.9e3), "999.9 MPa" , "")
	TEST_ASSERT_EQUAL(siunit_pressure(999.9e3, 0), "1 GPa", "")
	TEST_ASSERT_EQUAL(siunit_pressure(1e6), "1 GPa", "")
	TEST_ASSERT_EQUAL(siunit_pressure(3e32), "300000 QPa", "")