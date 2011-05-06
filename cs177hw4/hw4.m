function hw4()
% Call all 10 test functions and return number of error.
% Author: Huimin Jia 

y = 0;
y = y + test_array_front9();
y = y + test_biggerTwo();
y = y + test_close10();
y = y + test_delDel();
y = y + test_front3();
y = y + test_isPrime();
y = y + test_parrot_trouble();
y = y + test_strCount();
y = y + test_string_splosion();
y = y + test_teaParty();

fprintf('<These tests have %d error.>\n',y);
end