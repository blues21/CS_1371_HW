function [ newMes ] = caesar( string, move )

% We find the remainder in order to keep people from converting things with
% ridiculous numbers such as 79...
shift = mod(move,26) ;

% Uppercase
vec1 = string>='A' & string<=('Z' - shift) ;
% Lowercase
vec2 = string>='a' & string<=('z' - shift) ;

% Uppercase
vec3 = string>('Z' - shift) & string<='Z' ;
% Lowercase
vec4 = string>('z' - shift) & string<='z' ;

% Uppercase
string(vec1) = char(string(vec1) + shift) ;
% Lowercase
string(vec2) = char(string(vec2) + shift) ;

% Uppercase
string(vec3) = char(string(vec3) - (26-shift));
% Lowercase
string(vec4) = char(string(vec4) - (26-shift));


newMes = string;