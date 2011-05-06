function y = test_delDel()

% test_delDel runs several tests on the
% delDel function, displays delDel's  
% output for each test, 
% and returns the number of tests that fail.
% Author: Gabriel Bronk
% 3/2/11

% Modified by Huimin Jia - add 4 cases and modify a determination problem.

y = 0;
y = y + runtest('computers','computers');
y = y + runtest('conquer','conquer');
y = y + runtest('Earth','Earth');
y = y + runtest('Oh no!','Oh no!');
y = y + runtest('delta','ta');
y = y + runtest('ftdel','ftdel');
y = y + runtest('tdel','tdel');
y = y + runtest('delt','t');
y = y + runtest(' del',' del');
y = y + runtest('DELta','DELta');
y = y + runtest('dAeAl','dAeAl');  % Added by Huimin Jia
y = y + runtest('de l','de l');  % Added by Huimin Jia
y = y + runtest('del','');  % Added by Huimin Jia
y = y + runtest('de','de');  % Added by Huimin Jia
end



function q = runtest(a,answer);

% runtest(a,answer) calls delDel(a)
% to get the result, compares with the answer
% and returns 1 if an error, 0 if not.
% It also prints out the test results.     


result = delDel(a);

if isequal(result,answer); 
% if input A and B are null, Octave can not determine "if A==B", but "isequal" can, so using isequal is much better.
% the case: runtest('del','') is best to show this. commented by Huimin Jia

q = 0;
fprintf('      delDel(%s)=%s\n',a,result);
else
q = 1;
fprintf('ERROR:delDel(%s)->%s <> %s\n',
       a,result,answer);

end;

end

function e = delDel(s)
% Given a string, if the string "del" appears starting at index 1, return a
% string where that "del" has been deleted. Otherwise, return the string
% unchanged. Author: Huimin Jia

d = 'del';
L = length(s);
if strncmp(s,d,3) == 1
    if L > 3
        e = s(4:L);
    else
        e = '';
    end;
else
    e = s;
    
end;
end
        
        
        
        
        
        
        
        
        
        
        


