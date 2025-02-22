f = @(x) 1/(3*x+1);
Interval = (0:1000)/1000;
results = [];
for n = 2:10
    bern_vector = [];
    f_vector = [];
    for i = 0:1000
        bern_vector = [bern_vector, bernpoly(f, n, Interval(i+1))];
        f_vector = [f_vector, f(Interval(i+1))];
    end
    results = [results, norm((f_vector - bern_vector), "inf")];
end
results