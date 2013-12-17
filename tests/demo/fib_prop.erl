-module(fib_prop).
-include_lib("proper/include/proper.hrl").

prop_fib() ->
    ?FORALL(N,
	    integer(0,35), 
	    fibonacci:fib(N)=:=fibonacci:fast_fib(N)
	   ).