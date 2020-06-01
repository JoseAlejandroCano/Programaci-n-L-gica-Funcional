go:-repeat,get0(X),getrest(X).
getrest(13):-nl. /* newline */
getrest(63):-nl,repeat,get0(X),X=:=13.
getrest(X):-put(X),fail.