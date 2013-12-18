function [final] = friendOrFoe(A, B, prize)

[nameA voteA] = strtok(A, '-')
[nameB voteB] = strtok(B, '-')

voteA = lower(strrep(voteA,'-',''))
voteB = lower(strrep(voteB,'-',''))




if(strcmp(voteA, 'foe') & strcmp(voteB, 'foe'))
    prize = '$0';
    final = ['Oooh! ' nameA ' and ' nameB ' both turned foe and will leave with a whopping ' prize '.']

elseif(strcmp(voteA, 'foe') & strcmp(voteB, 'friend'))
    
    final = ['Ouch! ' nameA ' stabs ' nameB ' in the back and takes home the whole ' prize '! For shame, ' nameA ', for shame!']

elseif(strcmp(voteA, 'friend') & strcmp(voteB, 'foe'))
    
    final = ['Ouch! ' nameB ' stabs ' nameA ' in the back and takes home the whole ' prize '! For shame, ' nameB ', for shame!']

elseif(strcmp(voteA, 'friend') & strcmp(voteB, 'friend'))
    prize = strrep(prize,'$','');
    prize = str2num(prize);
    prize = prize/2;
    prize = num2str(prize);
    final = ['Congratulations! ' nameA ' and ' nameB ' will split the trust fund and each take home $' prize '!']
        
end
end 

