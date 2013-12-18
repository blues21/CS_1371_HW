function output = evolvePokemon(pokedex, pokemon)
output = [pokemon];
name = {pokedex.Name};
evolution = {pokedex.Evolution};

if any(strcmp(pokemon, name))
    
    %Start with the first evolution and work to the end.
    cmp = strcmp(pokemon, name);
   
    if ~isempty(evolution(cmp))
        
        output = [pokemon evolution(cmp)];
        cmp2 = strcmp(evolution(cmp), name);
        
        if ~isempty(evolution(cmp2))
        
            output = [output evolution(cmp2)];
        
        end
        
    end
    
    % Working Backwards
    cmp3 = strcmp(pokemon, evolution);
    
    if ~isempty(name(cmp3))
        
        output = [name(cmp3) output];
        cmp4 = strcmp(name(cmp3), evolution);
        
        if ~isempty(name(cmp4))
            
            output = [name(cmp4) output];
        
        end
        
    end
    
    % Get Rid of the Blanks
    find = strcmp(output, '');
    output(find) = [];
    
else
    %   Sadly, you don't know your Pokemon!
    output = [pokemon ' is not a Pokemon.'];
    
end


end