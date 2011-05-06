function e = test_parrot_trouble()
% test_parrot_trouble runs several tests and returns the number of tests that fail

% Modified by - Huimin Jia
% Added an additional case. and Change the wrong test reslut.
% Added the parrot_trouble function at bottom.


    e = 0;
    e = e + runtest (true, 1, false);
    e = e + runtest (false, 20, false);
    e = e + runtest (true, 13, false);
    e = e + runtest (false, 0, false);
    e = e + runtest (true, 21, false);
    e = e + runtest (true, 12, false);
    e = e + runtest (false, 7, false);
    e = e + runtest (true, 1, false);
    e = e + runtest (false, 22, false);
    e = e + runtest (true, 11, false);
    
    e = e + runtest (false, 15, false); % added case.
end

function e = runtest (a, b, answer)
% runtest(a, b, answer) - calls parrot_trouble(talking, hour)
% to get the result, compares with the answer
% returns 0 if true and 1 if an error occurs
% will print out all the test results

    result = parrot_trouble(a, b);
    if (result == answer)
       e = 0;
       fprintf('       parrot_trouble(%d, %d) = %d\n', a , b, result);
    else
       e = 1;
       fprintf('ERROR: parrot_trouble(%d, %d)->%d <> %d\n', a, b, result, answer);
    end;
end



function y = parrot_trouble(talking, hour)
% parrot_trouble(talking, hour) - returns ture if we are in trouble
% The "hour" parameter is the current hour time in the range solution:0..23
% We are in trouble if the parrot is talking and the hour is before 7 or after 20
% Huimin Jia

    if (talking == 'True' && (hour <7 || hour > 20) )
        y = true;
    else
        y = false;
    end;
end
