syms func(x);
func(x)=x^3;
[root,fx,ea,iter]=falseposition(@(x) func(x),-1,1)