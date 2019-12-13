
-  `dot some.dg | docker run --rm -i justin2004/graph-easy-box`

- example some.dg:

```
digraph{
	a-b
	b->c
}

```


- yields:

```

+---+
| a |
+---+
  |
  |
  v
+---+
| b |
+---+
  |
  |
  v
+---+
| c |
+---+

```





- see man graphviz
