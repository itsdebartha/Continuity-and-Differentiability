using DataFrames
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
        summary="Continuous"
        limit=round(f(x+h),digits=2)
        #println("Continuous at x=$x")
        #println("Limit value: $(round(f(x+h),digits=2))")
        #println("h=$h")
        #println("Iterations=$iter")
    else
        summary="Discontinuous"
        limit="Undefined"
        #println("Discontinuous")
    end
    df=DataFrame(Expression=expr,x=x,h=h,UpperLimit=f(x+h),LowerLimit=f(x-h),Summary=summary,Limit=limit,Iterations=iter)
    return df
end


println("Enter a function:")
expr=readline()
f=eval(:((x)->$(Meta.parse(expr))))
lim(f)


#Examples
#f(x)=3x+2
#lim(f)
#f(x)=3x+2
#lim(f,2)
#f(x)=1/x
#lim(f)
