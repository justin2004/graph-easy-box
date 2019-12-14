
-  `cat some.dg | docker run --rm -i justin2004/graph-easy-box`

---

- example some.dg:

```
digraph G {
	rankdir=LR;
	a->b;
	b->c;
	x->b;
	z->x; 
}
```


- yields:

```
+---+     +---+     +---+
| a | --> | b | --> | c |
+---+     +---+     +---+
            ^
            |
            |
+---+     +---+
| z | --> | x |
+---+     +---+

```

---

- example graph.g


```
graph BOB {
       a -- b -- c;
       a -- {x y};
       x -- c;
       x -- y;
}
```

- yields:

```

  +-------------------+
  |                   |
+---+     +---+     +---+
| y | --- | x | --- | a |
+---+     +---+     +---+
            |         |
            |         |
            |         |
            |       +---+
            |       | b |
            |       +---+
            |         |
            |         |
            |         |
            |       +---+
            +-------| c |
                    +---+
```




- see `man graphviz` and `man dot` for graph and digraph syntax

