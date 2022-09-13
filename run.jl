println("Enter a function:")
expr=readline()

println("Enter the point where you want to check continuity: ")
x=parse(Float64,readline())

println("Enter a very small epsilon: ")
eps=parse(Float64,readline())

f=eval(:((x)->$(Meta.parse(expr))))
lim(f,x,eps)

plotlyjs()
plot((x-5):0.2:(x+5),f.((x-5):0.2:(x+5)),label=expr)
