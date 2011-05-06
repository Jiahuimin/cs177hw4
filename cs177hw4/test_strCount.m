function e = test_strCount()
%test_strCount runs several tests and returns number of tests that fails.
%Author: Ritu Pradhan
%Date : 03/01/2011

%Modified by Huimin Jia - Added 2 case and modified the wrong test result.

	e = 0;
	e+= runtest("catcowcat","cat",2);
	e+= runtest("catcowcat","cow",1);
	e+= runtest("catcowcat","dog",0);
	e+= runtest("cacattcowcat","cat",2);
	e+= runtest("xyx","x",2); % modified answer by Huimin Jia
	e+= runtest("iiijj","jj",1);
	e+= runtest("iiijj","j",2);
	e+= runtest("ababababa","aba",4);
	e+= runtest("ababababa"," ",0);
	e+= runtest("ababababa","b",4);
	e+= runtest("","",0);
    e+= runtest("iiiii","ii",4);  % added by Huimin Jia
    e+= runtest("","abc",0);  %added by Huimin Jia

end

function e=runtest(str,sub,answer)
%runtest(str,sub,answer) - calls strCount(str,sub) to get the result, %compares with the answer and returns 1 if an error
%returns 0 if not and also prints out the test results.
	result = strCount(str,sub);
	if(result == answer)
		e = 0;
		fprintf('      strCount(%s,%s)=%d\n',str,sub,result);
	else
		e = 1;
		fprintf('ERROR:strCount(%s,%s)->%d<> %d\n',str,sub,result,answer);
    end;

end

function y = strCount(str,sub)
% Given a string and a non-empty substring sub, compute recursively the
% number of times that sub appears in the string.
% Author: Huimin Jia

if isempty(sub)
    y = 0;
else
    y = length(strfind(str,sub));
end;
end