function [rezultat, segmente] = ReprezentareCurbaBezier(t, puncteControl)
    n = size(puncteControl, 2) - 1;  
    matriceB = zeros(length(t), n+1); 
    for i = 0:n
        coefBinomial = nchoosek(n, i); 
        matriceB(:, i+1) = coefBinomial .* (1-t).^(n-i) .* t.^i;
    end
    rezultat = matriceB * puncteControl';
    rezultat = rezultat';
    segmente = puncteControl(:, 1:end-1);
    segmente = reshape(segmente, 2, []);
end
