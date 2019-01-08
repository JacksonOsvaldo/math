""" calcula o limite do polinomio num ponto x a partir de aproximações sucessivas ao valor da função no ponto"""


f(x) = 2x^2 - 3x + 1

function lim(fun::Function, x)
    interval = 1
    accuracy = 0.001
    inf = x - interval
    sup = x + interval
    result = 0

    for i in inf:accuracy:sup
        if i == x
            continue             
        end
        y = fun(i)
        println(y)
        if fun(x + accuracy) - y < accuracy
            return round(y, digits=1)
        end
    end
end

println("lim = ", lim(f, 5))
