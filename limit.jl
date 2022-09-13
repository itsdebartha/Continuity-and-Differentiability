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
    else
        summary="Discontinuous"
        limit="Undefined"
    end
    df=DataFrame(Expression=expr,x=x,h=h,UpperLimit=f(x+h),LowerLimit=f(x-h),Summary=summary,Limit=limit,Iterations=iter)
    return df
end
