import graph;
size(100, 100, IgnoreAspect);
real f(real r)
{
	return 2*(1-r)*(1-r)/(8*(1 + 2*r)) + 3*(1-r)*r/(8+16*r) + 10*r/(16+32*r);
}
xaxis(L = shift(-4, 0)*scale(0.5)*Label("Recombination Fraction"), 0, RightTicks(N=2, n=2, format = scale(0.35)*defaultformat, Size = 2, size = 1));
yaxis(L = scale(0.5)*rotate(90)*Label("Probability of 1,1"), ymin = 0, ymax = 0.25, ticks = LeftTicks(scale(0.35)*defaultformat, N = 2, n = 2, Size = 2, size = 1));
draw(graph(f, 0, 0.5, operator..), red);