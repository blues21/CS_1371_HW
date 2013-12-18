function average = calcGrades(struct, sec)

sections = {struct.Sections};
num = strcmp(sec, sections);

grades = {struct.Grades};
grades = grades{num};

%   Take the Average
average = mean(grades);

end