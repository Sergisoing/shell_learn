##变量

1. 定义多个变量的技巧

		eg:
	
		echo 1 2 3 4 | read one two three four
	
2. 计算平方

		square=$((8**2)) //8平方
	
## 循环

1. 如果一个循环需要使用函数或者脚本的全部参数，可以这样写 

		eg:
			for var  
			do  
				'cmd'  
			done
		replace
		eg: 
			for var in $*
			do 
				'cmd'
			done