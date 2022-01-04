function [y] = yDigitsToVectors(y, k, propability=0)

% if propability (of the h(theta)) --> turn into digits (the highest propabilities)
if propability,
    [maxes, p] = max(y');
    y = p';

    % y = round(y);
end;

newY = [];
for i = 1 : length(y),
    tmp = zeros(1, k);
    tmp(1, y(i)) = 1;

    newY = [newY; tmp];
end;

y = newY;

end;