lim=function (f,x=0,eps=1.0e-7)
    i=1
    h=0.1
    iter=1
    while (abs(f(x+h)-f(x-h))>=eps)
        h/=100
        iter+=1
        if iter==100
            i=0
            break
        end
    end
    if i==1
        println("Continuous at x=$x")
        println("Limit value: $(round(f(x+h),digits=2))")
        println("h=$h")
        println("Iterations=$iter")
    else
        println("Discontinuous")
    end
end

f(x)=1/x
lim(f,2)