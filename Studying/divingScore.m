function final = divingScore(vec, lvl)
vec = sort(vec);
vec(1) = [];
vec(end) = [];

final = sum(vec)*lvl;

end